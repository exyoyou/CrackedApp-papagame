package tv.haima.ijk.media.player.egl;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.join.mgps.Util.o0;
import java.nio.ByteBuffer;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public class EglRenderer implements VideoSink {
    private static final long LOG_INTERVAL_SEC = 1;
    private static final String TAG = "EglRenderer";
    private final int BUFFER_SIZE;
    private final GlTextureFrameBuffer bitmapTextureFramebuffer;
    private long[] buffer;
    private final Matrix drawMatrix;

    @Nullable
    private RendererCommon.GlDrawer drawer;

    @Nullable
    private EglBase eglBase;
    private final EglSurfaceCreation eglSurfaceCreationRunnable;
    private boolean enableLastFrame;
    private volatile ErrorCallback errorCallback;
    private final Object fpsReductionLock;
    private final VideoFrameDrawer frameDrawer;
    private int frameHeight;
    private final ArrayList<FrameListenerAndParams> frameListeners;
    private final Object frameLock;
    private int frameWidth;
    private int framesDropped;
    private int framesReceived;
    private int framesRendered;
    private final Object handlerLock;
    private boolean hasCreatedEglEnv;
    private boolean isLastFrame;

    @Nullable
    private VideoFrame lastFrame;
    private float layoutAspectRatio;
    private final Object layoutLock;
    private final Runnable logStatisticsRunnable;
    private FrameCallback mFrameCallback;
    private long minRenderPeriodNs;
    private boolean mirrorHorizontally;
    private boolean mirrorVertically;
    protected final String name;
    private long nextFrameTimeNs;

    @Nullable
    private VideoFrame pendingFrame;
    private int popIndex;
    private int pushIndex;
    private RenderDataThread renderDataThread;
    private float renderFps;
    private long renderSwapBufferTimeNs;

    @Nullable
    private Handler renderThreadHandler;
    private long renderTimeNs;
    private long renderedTimeMs;
    private int rotateLayout;
    private final Object statisticsLock;
    private long statisticsStartTimeNs;
    private TextureCloneHelper textureCloneHelper;
    private boolean usePresentationTimeStamp;
    private boolean useTextureCloning;

    private class EglSurfaceCreation implements Runnable {
        private Object surface;

        private EglSurfaceCreation() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (this.surface != null && EglRenderer.this.eglBase != null && !EglRenderer.this.eglBase.hasSurface()) {
                Object obj = this.surface;
                if (obj instanceof Surface) {
                    EglRenderer.this.eglBase.createSurface((Surface) this.surface);
                } else {
                    if (!(obj instanceof SurfaceTexture)) {
                        throw new IllegalStateException("Invalid surface: " + this.surface);
                    }
                    EglRenderer.this.eglBase.createSurface((SurfaceTexture) this.surface);
                }
                EglRenderer.this.eglBase.makeCurrent();
                GLES20.glPixelStorei(3317, 1);
                EglRenderer.this.hasCreatedEglEnv = true;
            }
        }

        public synchronized void setSurface(Object obj) {
            this.surface = obj;
        }
    }

    public interface ErrorCallback {
        void onGlOutOfMemory();
    }

    public interface FrameCallback {
        void onFrameRendered(long[] jArr);
    }

    public interface FrameListener {
        void onFrame(Bitmap bitmap);
    }

    private static class FrameListenerAndParams {
        public final boolean applyFpsReduction;
        public final RendererCommon.GlDrawer drawer;
        public final FrameListener listener;
        public final float scale;

        public FrameListenerAndParams(FrameListener frameListener, float f10, RendererCommon.GlDrawer glDrawer, boolean z10) {
            this.listener = frameListener;
            this.scale = f10;
            this.drawer = glDrawer;
            this.applyFpsReduction = z10;
        }
    }

    private static class HandlerWithExceptionCallback extends Handler {
        private final Runnable exceptionCallback;

        public HandlerWithExceptionCallback(Looper looper, Runnable runnable) {
            super(looper);
            this.exceptionCallback = runnable;
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) throws Exception {
            try {
                super.dispatchMessage(message);
            } catch (Exception e10) {
                this.exceptionCallback.run();
                throw e10;
            }
        }
    }

    private class RenderDataThread extends Thread {
        private RenderDataThread() {
        }

        private void popData() {
            if (EglRenderer.this.popIndex == EglRenderer.this.pushIndex) {
                return;
            }
            int i10 = EglRenderer.this.popIndex;
            int i11 = EglRenderer.this.pushIndex;
            if (EglRenderer.this.pushIndex > EglRenderer.this.popIndex) {
                long[] jArrCopyOfRange = Arrays.copyOfRange(EglRenderer.this.buffer, i10, i11);
                if (EglRenderer.this.mFrameCallback != null) {
                    EglRenderer.this.mFrameCallback.onFrameRendered(jArrCopyOfRange);
                }
            } else {
                long[] jArrCopyOfRange2 = Arrays.copyOfRange(EglRenderer.this.buffer, i10, 119);
                if (EglRenderer.this.mFrameCallback != null) {
                    EglRenderer.this.mFrameCallback.onFrameRendered(jArrCopyOfRange2);
                }
                long[] jArrCopyOfRange3 = Arrays.copyOfRange(EglRenderer.this.buffer, 0, i11);
                if (EglRenderer.this.mFrameCallback != null) {
                    EglRenderer.this.mFrameCallback.onFrameRendered(jArrCopyOfRange3);
                }
            }
            EglRenderer.this.popIndex = i11;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (!Thread.currentThread().isInterrupted()) {
                try {
                    Thread.sleep(1000L);
                    popData();
                } catch (InterruptedException unused) {
                }
            }
            EglRenderer.this.logD("RenderDataThread interrupte");
        }
    }

    public EglRenderer(String str) {
        this(str, new VideoFrameDrawer());
    }

    private String averageTimeAsString(long j10, int i10) {
        if (i10 <= 0) {
            return "NA";
        }
        return TimeUnit.NANOSECONDS.toMicros(j10 / ((long) i10)) + " us";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: clearSurfaceOnRenderThread, reason: merged with bridge method [inline-methods] */
    public void lambda$clearImage$6(float f10, float f11, float f12, float f13) {
        EglBase eglBase = this.eglBase;
        if (eglBase != null && eglBase.hasSurface() && this.hasCreatedEglEnv) {
            logD("clearSurface");
            GLES20.glClearColor(f10, f11, f12, f13);
            GLES20.glClear(16384);
            this.eglBase.swapBuffers();
        }
    }

    private void createEglSurfaceInternal(Object obj) {
        this.eglSurfaceCreationRunnable.setSurface(obj);
        postToRenderThread(this.eglSurfaceCreationRunnable);
    }

    private void createLastFrame(VideoFrame videoFrame) {
        EglBase eglBase = this.eglBase;
        if (eglBase == null || !eglBase.hasSurface() || !this.hasCreatedEglEnv) {
            logD("createLastFrame, No surface, don't create frame.");
            return;
        }
        if (videoFrame == null) {
            logD("frame is null, don't create lastFrame.");
            return;
        }
        int rotatedWidth = videoFrame.getRotatedWidth();
        int rotatedHeight = videoFrame.getRotatedHeight();
        if (this.lastFrame != null && this.frameWidth == rotatedWidth && this.frameHeight == rotatedHeight) {
            this.lastFrame = videoFrame;
            return;
        }
        logD("frameWidth:" + this.frameWidth + " frameHeight:" + this.frameHeight + " createLastFrame w:" + rotatedWidth + " h:" + rotatedHeight + " r:" + videoFrame.getRotation());
        this.lastFrame = new VideoFrame(videoFrame.getBuffer(), videoFrame.getRotation(), videoFrame.getTimestampNs());
        this.frameWidth = rotatedWidth;
        this.frameHeight = rotatedHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addFrameListener$3(RendererCommon.GlDrawer glDrawer, FrameListener frameListener, float f10, boolean z10) {
        VideoFrame videoFrame;
        if (glDrawer == null) {
            glDrawer = this.drawer;
        }
        if (glDrawer == null) {
            return;
        }
        this.frameListeners.add(new FrameListenerAndParams(frameListener, f10, glDrawer, z10));
        if (this.enableLastFrame && this.pendingFrame == null && (videoFrame = this.lastFrame) != null) {
            this.isLastFrame = true;
            onFrame(videoFrame);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(EglBase.Context context, int[] iArr) {
        if (context == null) {
            logD("EglBase10.create context");
            this.eglBase = a.g(iArr);
        } else {
            logD("EglBase.create shared context");
            this.eglBase = a.d(context, iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$1(CountDownLatch countDownLatch) {
        GLES20.glUseProgram(0);
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.release();
            this.drawer = null;
        }
        this.frameDrawer.release();
        this.bitmapTextureFramebuffer.release();
        if (this.eglBase != null) {
            logD("eglBase detach and release.");
            this.eglBase.detachCurrent();
            this.eglBase.release();
            this.eglBase = null;
        }
        this.frameListeners.clear();
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$2(Looper looper) {
        logD("Quitting render thread.");
        looper.quit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseEglSurface$5(Runnable runnable) {
        EglBase eglBase = this.eglBase;
        if (eglBase != null) {
            eglBase.detachCurrent();
            this.eglBase.releaseSurface();
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeFrameListener$4(CountDownLatch countDownLatch, FrameListener frameListener) {
        countDownLatch.countDown();
        Iterator<FrameListenerAndParams> it2 = this.frameListeners.iterator();
        while (it2.hasNext()) {
            if (it2.next().listener == frameListener) {
                it2.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logD(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append(str);
    }

    private void logE(String str, Throwable th) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logStatistics() {
        DecimalFormat decimalFormat = new DecimalFormat("#.0");
        long jNanoTime = System.nanoTime();
        synchronized (this.statisticsLock) {
            long j10 = jNanoTime - this.statisticsStartTimeNs;
            if (j10 > 0 && (this.minRenderPeriodNs != Long.MAX_VALUE || this.framesReceived != 0)) {
                this.renderFps = (((long) this.framesRendered) * TimeUnit.SECONDS.toNanos(1L)) / j10;
                logD("Duration: " + TimeUnit.NANOSECONDS.toMillis(j10) + " ms. Frames received: " + this.framesReceived + ". Dropped: " + this.framesDropped + ". Rendered: " + this.framesRendered + ". Render fps: " + decimalFormat.format(this.renderFps) + ". Average render time: " + averageTimeAsString(this.renderTimeNs, this.framesRendered) + ". Average swapBuffer time: " + averageTimeAsString(this.renderSwapBufferTimeNs, this.framesRendered) + o0.f49827a);
                resetStatistics(jNanoTime);
            }
        }
    }

    private void logW(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append(str);
    }

    private void notifyCallbacks(VideoFrame videoFrame, boolean z10) {
        if (this.frameListeners.isEmpty()) {
            return;
        }
        this.drawMatrix.reset();
        this.drawMatrix.preTranslate(0.5f, 0.5f);
        this.drawMatrix.preScale(this.mirrorHorizontally ? -1.0f : 1.0f, this.mirrorVertically ? -1.0f : 1.0f);
        this.drawMatrix.preScale(1.0f, -1.0f);
        this.drawMatrix.preTranslate(-0.5f, -0.5f);
        Iterator<FrameListenerAndParams> it2 = this.frameListeners.iterator();
        while (it2.hasNext()) {
            FrameListenerAndParams next = it2.next();
            if (z10 || !next.applyFpsReduction) {
                it2.remove();
                int rotatedWidth = (int) (next.scale * videoFrame.getRotatedWidth());
                int rotatedHeight = (int) (next.scale * videoFrame.getRotatedHeight());
                if (rotatedWidth == 0 || rotatedHeight == 0) {
                    next.listener.onFrame(null);
                } else if (next.drawer != null) {
                    this.bitmapTextureFramebuffer.setSize(rotatedWidth, rotatedHeight);
                    GLES20.glBindFramebuffer(36160, this.bitmapTextureFramebuffer.getFrameBufferId());
                    GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.bitmapTextureFramebuffer.getTextureId(), 0);
                    GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                    GLES20.glClear(16384);
                    this.frameDrawer.drawFrame(videoFrame, next.drawer, this.drawMatrix, 0, 0, rotatedWidth, rotatedHeight);
                    ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(rotatedWidth * rotatedHeight * 4);
                    GLES20.glViewport(0, 0, rotatedWidth, rotatedHeight);
                    GLES20.glReadPixels(0, 0, rotatedWidth, rotatedHeight, 6408, 5121, byteBufferAllocateDirect);
                    GLES20.glBindFramebuffer(36160, 0);
                    GlUtil.checkNoGLES2Error("EglRenderer.notifyCallbacks");
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(rotatedWidth, rotatedHeight, Bitmap.Config.ARGB_8888);
                    bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferAllocateDirect);
                    next.listener.onFrame(bitmapCreateBitmap);
                }
            }
        }
    }

    private void postToRenderThread(Runnable runnable) {
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler != null) {
                handler.post(runnable);
            }
        }
    }

    private void pushRenderedTime(long j10) {
        int i10 = this.pushIndex;
        long[] jArr = this.buffer;
        if (i10 >= jArr.length - 1) {
            this.pushIndex = 0;
        }
        int i11 = this.pushIndex;
        this.pushIndex = i11 + 1;
        jArr[i11] = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderFrameOnRenderThread() throws Throwable {
        VideoFrame videoFrame;
        boolean z10;
        boolean z11;
        float f10;
        float f11;
        float f12;
        synchronized (this.frameLock) {
            VideoFrame videoFrameRenderToTexture = null;
            if (this.enableLastFrame && this.isLastFrame) {
                videoFrame = this.lastFrame;
                if (videoFrame == null) {
                    return;
                }
            } else {
                videoFrame = this.pendingFrame;
                if (videoFrame == null) {
                    return;
                } else {
                    this.pendingFrame = null;
                }
            }
            VideoFrame videoFrame2 = videoFrame;
            EglBase eglBase = this.eglBase;
            if (eglBase == null || !eglBase.hasSurface() || !this.hasCreatedEglEnv) {
                this.eglBase.hasSurface();
                if (this.enableLastFrame && this.isLastFrame) {
                    resetLastFrame();
                    return;
                } else {
                    videoFrame2.release();
                    return;
                }
            }
            synchronized (this.fpsReductionLock) {
                long j10 = this.minRenderPeriodNs;
                z10 = false;
                if (j10 != Long.MAX_VALUE) {
                    if (j10 > 0) {
                        long jNanoTime = System.nanoTime();
                        long j11 = this.nextFrameTimeNs;
                        if (jNanoTime < j11) {
                            logD("Skipping frame rendering - fps reduction is active.");
                            z11 = false;
                        } else {
                            long j12 = j11 + this.minRenderPeriodNs;
                            this.nextFrameTimeNs = j12;
                            this.nextFrameTimeNs = Math.max(j12, jNanoTime);
                        }
                    }
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            long jNanoTime2 = System.nanoTime();
            float rotatedWidth = videoFrame2.getRotatedWidth() / videoFrame2.getRotatedHeight();
            int i10 = this.rotateLayout;
            if (i10 == 90 || i10 == 270) {
                rotatedWidth = videoFrame2.getRotatedHeight() / videoFrame2.getRotatedWidth();
            }
            synchronized (this.layoutLock) {
                f10 = this.layoutAspectRatio;
                if (f10 == 0.0f) {
                    f10 = rotatedWidth;
                }
            }
            if (rotatedWidth > f10) {
                f12 = f10 / rotatedWidth;
                f11 = 1.0f;
            } else {
                f11 = rotatedWidth / f10;
                f12 = 1.0f;
            }
            this.drawMatrix.reset();
            this.drawMatrix.preTranslate(0.5f, 0.5f);
            this.drawMatrix.preScale(this.mirrorHorizontally ? -1.0f : 1.0f, this.mirrorVertically ? -1.0f : 1.0f);
            this.drawMatrix.preScale(f12, f11);
            this.drawMatrix.preRotate(this.rotateLayout);
            this.drawMatrix.preTranslate(-0.5f, -0.5f);
            try {
                try {
                    boolean z12 = videoFrame2.getBuffer() instanceof VideoFrame.TextureBuffer;
                    try {
                        if (this.useTextureCloning && z12 && !this.isLastFrame) {
                            videoFrameRenderToTexture = this.textureCloneHelper.renderToTexture(videoFrame2);
                            if (this.enableLastFrame) {
                                createLastFrame(videoFrameRenderToTexture);
                            }
                        }
                        if (z11) {
                            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                            GLES20.glClear(16384);
                            if (this.useTextureCloning && z12 && !this.isLastFrame) {
                                this.frameDrawer.drawFrame(videoFrameRenderToTexture, this.drawer, this.drawMatrix, 0, 0, this.eglBase.surfaceWidth(), this.eglBase.surfaceHeight());
                            } else {
                                this.frameDrawer.drawFrame(videoFrame2, this.drawer, this.drawMatrix, 0, 0, this.eglBase.surfaceWidth(), this.eglBase.surfaceHeight());
                            }
                            long jNanoTime3 = System.nanoTime();
                            if (this.usePresentationTimeStamp) {
                                this.eglBase.swapBuffers(videoFrame2.getTimestampNs());
                            } else {
                                this.eglBase.swapBuffers();
                            }
                            long jNanoTime4 = System.nanoTime();
                            if (this.mFrameCallback != null) {
                                this.renderedTimeMs = System.currentTimeMillis();
                            }
                            synchronized (this.statisticsLock) {
                                this.framesRendered++;
                                this.renderTimeNs += jNanoTime4 - jNanoTime2;
                                this.renderSwapBufferTimeNs += jNanoTime4 - jNanoTime3;
                            }
                        }
                        if (this.useTextureCloning && z12 && !this.isLastFrame) {
                            notifyCallbacks(videoFrameRenderToTexture, z11);
                        } else {
                            notifyCallbacks(videoFrame2, z11);
                        }
                        if (this.enableLastFrame && this.isLastFrame) {
                            resetLastFrame();
                        } else if (this.useTextureCloning && z12) {
                            videoFrameRenderToTexture.release();
                        } else {
                            videoFrame2.release();
                        }
                        if (this.mFrameCallback == null) {
                            return;
                        }
                    } catch (GlUtil.GlOutOfMemoryException e10) {
                        e = e10;
                        z10 = z12;
                        logE("Error while drawing frame", e);
                        ErrorCallback errorCallback = this.errorCallback;
                        if (errorCallback != null) {
                            errorCallback.onGlOutOfMemory();
                        }
                        this.drawer.release();
                        this.frameDrawer.release();
                        this.bitmapTextureFramebuffer.release();
                        if (this.enableLastFrame && this.isLastFrame) {
                            resetLastFrame();
                        } else if (this.useTextureCloning && z10) {
                            videoFrameRenderToTexture.release();
                        } else {
                            videoFrame2.release();
                        }
                        if (this.mFrameCallback == null) {
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        z10 = z12;
                        if (this.enableLastFrame && this.isLastFrame) {
                            resetLastFrame();
                        } else if (this.useTextureCloning && z10) {
                            videoFrameRenderToTexture.release();
                        } else {
                            videoFrame2.release();
                        }
                        if (this.mFrameCallback != null) {
                            pushRenderedTime(this.renderedTimeMs);
                        }
                        throw th;
                    }
                } catch (GlUtil.GlOutOfMemoryException e11) {
                    e = e11;
                }
                pushRenderedTime(this.renderedTimeMs);
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private void resetLastFrame() {
        this.isLastFrame = false;
        this.lastFrame = null;
        this.frameWidth = 0;
        this.frameHeight = 0;
    }

    private void resetStatistics(long j10) {
        synchronized (this.statisticsLock) {
            this.statisticsStartTimeNs = j10;
            this.framesReceived = 0;
            this.framesDropped = 0;
            this.framesRendered = 0;
            this.renderTimeNs = 0L;
            this.renderSwapBufferTimeNs = 0L;
        }
    }

    public void addFrameListener(FrameListener frameListener, float f10) {
        addFrameListener(frameListener, f10, null, false);
    }

    public void clearImage() {
        clearImage(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public void createEglSurface(Surface surface) {
        createEglSurfaceInternal(surface);
    }

    public void disableFpsReduction() {
        setFpsReduction(Float.POSITIVE_INFINITY);
    }

    public int getEglRenderFps() {
        return (int) this.renderFps;
    }

    public void init(@Nullable final EglBase.Context context, final int[] iArr, RendererCommon.GlDrawer glDrawer, boolean z10) {
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler != null) {
                throw new IllegalStateException(this.name + "Already initialized");
            }
            logD("Initializing EglRenderer");
            this.drawer = glDrawer;
            this.usePresentationTimeStamp = z10;
            this.textureCloneHelper = TextureCloneHelper.create(glDrawer);
            HandlerThread handlerThread = new HandlerThread(this.name + TAG);
            handlerThread.start();
            HandlerWithExceptionCallback handlerWithExceptionCallback = new HandlerWithExceptionCallback(handlerThread.getLooper(), new Runnable() { // from class: tv.haima.ijk.media.player.egl.EglRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (EglRenderer.this.handlerLock) {
                        EglRenderer.this.renderThreadHandler = null;
                    }
                }
            });
            this.renderThreadHandler = handlerWithExceptionCallback;
            ThreadUtils.invokeAtFrontUninterruptibly(handlerWithExceptionCallback, new Runnable() { // from class: tv.haima.ijk.media.player.egl.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f97375b.lambda$init$0(context, iArr);
                }
            });
            this.renderThreadHandler.post(this.eglSurfaceCreationRunnable);
            resetStatistics(System.nanoTime());
            this.renderThreadHandler.postDelayed(this.logStatisticsRunnable, TimeUnit.SECONDS.toMillis(1L));
        }
    }

    @Override // tv.haima.ijk.media.player.egl.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        boolean z10;
        synchronized (this.statisticsLock) {
            this.framesReceived++;
        }
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler == null) {
                logD("Dropping frame - Not initialized or already released.");
                return;
            }
            synchronized (this.frameLock) {
                VideoFrame videoFrame2 = this.pendingFrame;
                z10 = videoFrame2 != null;
                if (z10) {
                    videoFrame2.release();
                }
                boolean z11 = videoFrame.getBuffer() instanceof VideoFrame.TextureBuffer;
                if (!this.enableLastFrame) {
                    this.pendingFrame = videoFrame;
                    videoFrame.retain();
                    this.renderThreadHandler.post(new Runnable() { // from class: tv.haima.ijk.media.player.egl.b
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            this.f97365b.renderFrameOnRenderThread();
                        }
                    });
                } else if (this.useTextureCloning && z11) {
                    if (!this.isLastFrame) {
                        this.pendingFrame = videoFrame;
                        videoFrame.retain();
                    }
                    this.renderThreadHandler.post(new Runnable() { // from class: tv.haima.ijk.media.player.egl.b
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            this.f97365b.renderFrameOnRenderThread();
                        }
                    });
                } else {
                    if (!this.isLastFrame) {
                        this.pendingFrame = videoFrame;
                        videoFrame.retain();
                        createLastFrame(videoFrame);
                    }
                    this.renderThreadHandler.post(new Runnable() { // from class: tv.haima.ijk.media.player.egl.b
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            this.f97365b.renderFrameOnRenderThread();
                        }
                    });
                }
            }
            if (z10) {
                synchronized (this.statisticsLock) {
                    this.framesDropped++;
                }
            }
        }
    }

    public void pauseVideo() {
        setFpsReduction(0.0f);
    }

    public void printStackTrace() {
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            Thread thread = handler == null ? null : handler.getLooper().getThread();
            if (thread != null) {
                StackTraceElement[] stackTrace = thread.getStackTrace();
                if (stackTrace.length > 0) {
                    logW("EglRenderer stack trace:");
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        logW(stackTraceElement.toString());
                    }
                }
            }
        }
    }

    public void release() {
        logD("Releasing.");
        TextureCloneHelper textureCloneHelper = this.textureCloneHelper;
        if (textureCloneHelper != null) {
            textureCloneHelper.release();
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler == null) {
                logD("Already released");
                return;
            }
            handler.removeCallbacks(this.logStatisticsRunnable);
            this.renderThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: tv.haima.ijk.media.player.egl.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f97366b.lambda$release$1(countDownLatch);
                }
            });
            final Looper looper = this.renderThreadHandler.getLooper();
            this.renderThreadHandler.post(new Runnable() { // from class: tv.haima.ijk.media.player.egl.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f97368b.lambda$release$2(looper);
                }
            });
            this.renderThreadHandler = null;
            ThreadUtils.awaitUninterruptibly(countDownLatch);
            synchronized (this.frameLock) {
                VideoFrame videoFrame = this.pendingFrame;
                if (videoFrame != null) {
                    videoFrame.release();
                    this.pendingFrame = null;
                }
            }
            RenderDataThread renderDataThread = this.renderDataThread;
            if (renderDataThread != null) {
                renderDataThread.interrupt();
            }
            this.mFrameCallback = null;
            if (this.enableLastFrame) {
                resetLastFrame();
            }
            logD("Releasing done.");
        }
    }

    public void releaseEglSurface(final Runnable runnable) {
        this.eglSurfaceCreationRunnable.setSurface(null);
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler == null) {
                runnable.run();
            } else {
                handler.removeCallbacks(this.eglSurfaceCreationRunnable);
                this.renderThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: tv.haima.ijk.media.player.egl.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f97370b.lambda$releaseEglSurface$5(runnable);
                    }
                });
            }
        }
    }

    public void removeFrameListener(final FrameListener frameListener) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler == null) {
                return;
            }
            if (Thread.currentThread() == this.renderThreadHandler.getLooper().getThread()) {
                throw new RuntimeException("removeFrameListener must not be called on the render thread.");
            }
            postToRenderThread(new Runnable() { // from class: tv.haima.ijk.media.player.egl.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f97372b.lambda$removeFrameListener$4(countDownLatch, frameListener);
                }
            });
            ThreadUtils.awaitUninterruptibly(countDownLatch);
        }
    }

    public void setErrorCallback(ErrorCallback errorCallback) {
        this.errorCallback = errorCallback;
    }

    public void setFpsReduction(float f10) {
        logD("setFpsReduction: " + f10);
        synchronized (this.fpsReductionLock) {
            long j10 = this.minRenderPeriodNs;
            if (f10 <= 0.0f) {
                this.minRenderPeriodNs = Long.MAX_VALUE;
            } else {
                this.minRenderPeriodNs = (long) (TimeUnit.SECONDS.toNanos(1L) / f10);
            }
            if (this.minRenderPeriodNs != j10) {
                this.nextFrameTimeNs = System.nanoTime();
            }
        }
    }

    public void setFrameCallback(FrameCallback frameCallback) {
        this.mFrameCallback = frameCallback;
        RenderDataThread renderDataThread = this.renderDataThread;
        if (renderDataThread != null) {
            renderDataThread.interrupt();
        }
        if (frameCallback != null) {
            RenderDataThread renderDataThread2 = new RenderDataThread();
            this.renderDataThread = renderDataThread2;
            renderDataThread2.start();
        }
    }

    public void setLastFrameCallBack(boolean z10) {
        logD("setLastFrameCallBack: " + z10);
        synchronized (this.frameLock) {
            this.enableLastFrame = z10;
        }
    }

    public void setLayoutAspectRatio(float f10) {
        logD("setLayoutAspectRatio: " + f10);
        synchronized (this.layoutLock) {
            this.layoutAspectRatio = f10;
        }
    }

    public void setMirror(boolean z10) {
        logD("setMirrorHorizontally: " + z10);
        synchronized (this.layoutLock) {
            this.mirrorHorizontally = z10;
        }
    }

    public void setMirrorVertically(boolean z10) {
        logD("setMirrorVertically: " + z10);
        synchronized (this.layoutLock) {
            this.mirrorVertically = z10;
        }
    }

    public void setRotateLayout(int i10) {
        logD("setRotateLayout: " + i10);
        synchronized (this.layoutLock) {
            this.rotateLayout = i10;
        }
    }

    public void setUseTextureCloningFlag(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setUseTextureCloningFlag():");
        sb2.append(z10);
        this.useTextureCloning = z10;
    }

    public EglRenderer(String str, VideoFrameDrawer videoFrameDrawer) {
        this.handlerLock = new Object();
        this.frameListeners = new ArrayList<>();
        this.fpsReductionLock = new Object();
        this.drawMatrix = new Matrix();
        this.frameLock = new Object();
        this.layoutLock = new Object();
        this.statisticsLock = new Object();
        this.bitmapTextureFramebuffer = new GlTextureFrameBuffer(6408);
        this.useTextureCloning = false;
        this.logStatisticsRunnable = new Runnable() { // from class: tv.haima.ijk.media.player.egl.EglRenderer.1
            @Override // java.lang.Runnable
            public void run() {
                EglRenderer.this.logStatistics();
                synchronized (EglRenderer.this.handlerLock) {
                    if (EglRenderer.this.renderThreadHandler != null) {
                        EglRenderer.this.renderThreadHandler.removeCallbacks(EglRenderer.this.logStatisticsRunnable);
                        EglRenderer.this.renderThreadHandler.postDelayed(EglRenderer.this.logStatisticsRunnable, TimeUnit.SECONDS.toMillis(1L));
                    }
                }
            }
        };
        this.eglSurfaceCreationRunnable = new EglSurfaceCreation();
        this.BUFFER_SIZE = 120;
        this.buffer = new long[120];
        this.name = str;
        this.frameDrawer = videoFrameDrawer;
    }

    public void addFrameListener(FrameListener frameListener, float f10, RendererCommon.GlDrawer glDrawer) {
        addFrameListener(frameListener, f10, glDrawer, false);
    }

    public void clearImage(final float f10, final float f11, final float f12, final float f13) {
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler == null) {
                return;
            }
            handler.postAtFrontOfQueue(new Runnable() { // from class: tv.haima.ijk.media.player.egl.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f97378b.lambda$clearImage$6(f10, f11, f12, f13);
                }
            });
        }
    }

    public void createEglSurface(SurfaceTexture surfaceTexture) {
        createEglSurfaceInternal(surfaceTexture);
    }

    public void addFrameListener(final FrameListener frameListener, final float f10, @Nullable final RendererCommon.GlDrawer glDrawer, final boolean z10) {
        postToRenderThread(new Runnable() { // from class: tv.haima.ijk.media.player.egl.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f97383b.lambda$addFrameListener$3(glDrawer, frameListener, f10, z10);
            }
        });
    }

    public void init(@Nullable EglBase.Context context, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        init(context, iArr, glDrawer, false);
    }
}
