package org.hmwebrtc;

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
import java.nio.ByteBuffer;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.hmwebrtc.utils.PerfdogJankCounter;

/* JADX INFO: loaded from: classes10.dex */
public class EglRenderer implements VideoSink {
    private static final long LOG_INTERVAL_SEC = 1;
    private static final String TAG = "EglRenderer";
    public static final Object frameRenderDelayLock = new Object();
    private long averageRenderTimeMs;
    private final GlTextureFrameBuffer bitmapTextureFramebuffer;
    private float brightnessRatio;
    private float contrastRatio;
    private final Matrix drawMatrix;

    @Nullable
    private RendererCommon.GlDrawer drawer;

    @Nullable
    private EglBase eglBase;
    private final EglSurfaceCreation eglSurfaceCreationRunnable;
    private boolean enableBlackWhiteDisplay;
    private boolean enableFrameInterpolation;
    private boolean enableLastFrame;
    private volatile ErrorCallback errorCallback;
    private int firstFrameInterpolationInterval;
    private boolean firstFrameRendered;
    private int followingFrameInterpolationInterval;
    private final Object fpsReductionLock;
    private final VideoFrameDrawer frameDrawer;
    private int frameHeight;
    private int frameInterpolationTopLimit;
    private long frameInterpolationbeginningTime;
    private final ArrayList<FrameListenerAndParams> frameListeners;
    private final Object frameLock;
    private FrameRenderDelayCallback frameRenderDelayCallback;
    private int frameWidth;
    private int framesDropped;
    private int framesReceived;
    private int framesRendered;
    private final Object handlerLock;
    private boolean imageAdjustable;
    private final Runnable interpolateFrameOnRenderThread;
    private boolean isLastFrame;
    private boolean isStretching;

    @Nullable
    private VideoFrame lastFrame;
    private float layoutAspectRatio;
    private final Object layoutLock;
    private final Runnable logStatisticsRunnable;
    private EglRendererJankStatistics mJankStatistics;
    private long minRenderPeriodNs;
    private boolean mirrorHorizontally;
    private boolean mirrorVertically;
    protected final String name;
    private long nextFrameTimeNs;

    @Nullable
    private VideoFrame pendingFrame;
    private float renderFps;
    private long renderSwapBufferTimeNs;

    @Nullable
    private Handler renderThreadHandler;
    private long renderTimeNs;
    private long renderedTimeMs;
    private int rotateLayout;
    private float saturationRatio;
    private final Object statisticsLock;
    private long statisticsStartTimeNs;
    private TextureCloneHelper textureCloneHelper;
    private float unsharpAmount;
    private boolean unsharpMarkStatus;
    private float unsharpThreshold;
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
            }
        }

        public synchronized void setSurface(Object obj) {
            this.surface = obj;
        }
    }

    public interface ErrorCallback {
        void onGlOutOfMemory(Exception exc);

        void onRuntimeException(Exception exc);
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
        private final ErrorCallback errorCallback;

        public HandlerWithExceptionCallback(Looper looper, ErrorCallback errorCallback) {
            super(looper);
            this.errorCallback = errorCallback;
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            try {
                super.dispatchMessage(message);
            } catch (Exception e10) {
                Logging.e(EglRenderer.TAG, "Exception on EglRenderer thread", e10);
                if (this.errorCallback != null) {
                    this.errorCallback.onRuntimeException(e10);
                }
            }
        }
    }

    public EglRenderer(String str) {
        this(str, new VideoFrameDrawer());
    }

    static /* synthetic */ int access$2204(EglRenderer eglRenderer) {
        int i10 = eglRenderer.framesRendered + 1;
        eglRenderer.framesRendered = i10;
        return i10;
    }

    static /* synthetic */ long access$2314(EglRenderer eglRenderer, long j10) {
        long j11 = eglRenderer.renderTimeNs + j10;
        eglRenderer.renderTimeNs = j11;
        return j11;
    }

    static /* synthetic */ long access$2414(EglRenderer eglRenderer, long j10) {
        long j11 = eglRenderer.renderSwapBufferTimeNs + j10;
        eglRenderer.renderSwapBufferTimeNs = j11;
        return j11;
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
        if (eglBase == null || !eglBase.hasSurface()) {
            return;
        }
        logD("clearSurface");
        GLES20.glClearColor(f10, f11, f12, f13);
        GLES20.glClear(16384);
        this.eglBase.swapBuffers();
    }

    private void createEglSurfaceInternal(Object obj) {
        this.eglSurfaceCreationRunnable.setSurface(obj);
        postToRenderThread(this.eglSurfaceCreationRunnable);
    }

    private void createLastFrame(VideoFrame videoFrame) {
        EglBase eglBase = this.eglBase;
        if (eglBase == null || !eglBase.hasSurface()) {
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
    public /* synthetic */ void lambda$addFrameListener$3(RendererCommon.GlDrawer glDrawer, FrameListener frameListener, float f10, boolean z10) throws Throwable {
        if (glDrawer == null) {
            glDrawer = this.drawer;
        }
        if (glDrawer == null) {
            Logging.w(TAG, "addFrameListener: drawer=null!");
            return;
        }
        this.frameListeners.add(new FrameListenerAndParams(frameListener, f10, glDrawer, z10));
        if (this.enableLastFrame) {
            this.isLastFrame = true;
            renderFrameOnRenderThread();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(EglBase.Context context, int[] iArr) {
        if (context == null) {
            logD("EglBase10.create context");
            this.eglBase = h.h(iArr);
        } else {
            logD("EglBase.create shared context");
            this.eglBase = h.d(context, iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$1(CountDownLatch countDownLatch) {
        synchronized (EglBase.lock) {
            GLES20.glUseProgram(0);
        }
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.release();
            this.drawer = null;
        }
        TextureCloneHelper textureCloneHelper = this.textureCloneHelper;
        if (textureCloneHelper != null) {
            textureCloneHelper.release();
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
    public /* synthetic */ void lambda$setBlackWhiteDisplay$7(boolean z10) {
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.setBlackWhiteDisplay(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUnsharpMaskAmount$10(float f10) {
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.setUnsharpMaskAmount(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUnsharpMaskEnabled$8(boolean z10) {
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.setUnsharpMaskEnabled(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUnsharpMaskThreshold$9(float f10) {
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.setUnsharpMaskThreshold(f10);
        }
    }

    private void logD(String str) {
        Logging.d(TAG, this.name + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logE(String str, Throwable th) {
        Logging.e(TAG, this.name + str, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logStatistics() {
        DecimalFormat decimalFormat = new DecimalFormat("#.0");
        long jNanoTime = System.nanoTime();
        synchronized (this.statisticsLock) {
            long j10 = jNanoTime - this.statisticsStartTimeNs;
            if (j10 > 0 && (this.minRenderPeriodNs != Long.MAX_VALUE || this.framesReceived != 0)) {
                this.renderFps = (((long) this.framesRendered) * TimeUnit.SECONDS.toNanos(1L)) / j10;
                int i10 = this.framesRendered;
                this.averageRenderTimeMs = i10 <= 0 ? -1L : TimeUnit.NANOSECONDS.toMillis(this.renderTimeNs / ((long) i10));
                logD("Duration: " + TimeUnit.NANOSECONDS.toMillis(j10) + " ms. Frames received: " + this.framesReceived + ". Dropped: " + this.framesDropped + ". Rendered: " + this.framesRendered + ". Render fps: " + decimalFormat.format(this.renderFps) + ". Average render time: " + averageTimeAsString(this.renderTimeNs, this.framesRendered) + ". Average swapBuffer time: " + averageTimeAsString(this.renderSwapBufferTimeNs, this.framesRendered) + com.join.mgps.Util.o0.f49827a);
                resetStatistics(jNanoTime);
            }
        }
    }

    private void logW(String str) {
        Logging.w(TAG, this.name + str);
    }

    private void notifyCallbacks(VideoFrame videoFrame, boolean z10, boolean z11) {
        ByteBuffer byteBufferAllocateDirect;
        boolean z12;
        int i10;
        if (this.frameListeners.isEmpty()) {
            return;
        }
        this.drawMatrix.reset();
        this.drawMatrix.preTranslate(0.5f, 0.5f);
        this.drawMatrix.preScale(this.mirrorHorizontally ? -1.0f : 1.0f, this.mirrorVertically ? -1.0f : 1.0f);
        this.drawMatrix.preScale(1.0f, -1.0f);
        this.drawMatrix.preTranslate(-0.5f, -0.5f);
        Iterator<FrameListenerAndParams> it2 = this.frameListeners.iterator();
        boolean z13 = false;
        int i11 = 0;
        int i12 = 0;
        boolean z14 = false;
        Bitmap bitmapCreateBitmap = null;
        while (it2.hasNext()) {
            FrameListenerAndParams next = it2.next();
            if (z10 || !next.applyFpsReduction) {
                it2.remove();
                int rotatedWidth = (int) (next.scale * videoFrame.getRotatedWidth());
                int rotatedHeight = (int) (next.scale * videoFrame.getRotatedHeight());
                if (rotatedWidth == 0 || rotatedHeight == 0) {
                    next.listener.onFrame(null);
                } else if (next.drawer == null) {
                    Logging.w(TAG, "notifyCallbacks: drawer=null!");
                } else {
                    if (!z13 && (rotatedWidth != i11 || rotatedHeight != i12)) {
                        i11 = rotatedWidth;
                        i12 = rotatedHeight;
                        z14 = false;
                        bitmapCreateBitmap = null;
                    }
                    if (!z14) {
                        try {
                            byteBufferAllocateDirect = ByteBuffer.allocateDirect(rotatedWidth * rotatedHeight * 4);
                            z12 = true;
                        } catch (Throwable th) {
                            logE("allocateDirect failed: ", th);
                            HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_SNAPSHOT_OOM, "allocateDirect failed");
                            byteBufferAllocateDirect = null;
                            z12 = false;
                        }
                        if (z12) {
                            this.bitmapTextureFramebuffer.setSize(rotatedWidth, rotatedHeight);
                            GLES20.glBindFramebuffer(36160, this.bitmapTextureFramebuffer.getFrameBufferId());
                            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.bitmapTextureFramebuffer.getTextureId(), 0);
                            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                            GLES20.glClear(16384);
                            this.frameDrawer.drawFrame(videoFrame, next.drawer, this.drawMatrix, 0, 0, rotatedWidth, rotatedHeight, z11);
                            GLES20.glViewport(0, 0, rotatedWidth, rotatedHeight);
                            i10 = rotatedHeight;
                            GLES20.glReadPixels(0, 0, rotatedWidth, rotatedHeight, 6408, 5121, byteBufferAllocateDirect);
                            GLES20.glBindFramebuffer(36160, 0);
                            if (GLES20.glGetError() != 0) {
                                z12 = false;
                            }
                        } else {
                            i10 = rotatedHeight;
                        }
                        if (z12) {
                            try {
                                bitmapCreateBitmap = Bitmap.createBitmap(rotatedWidth, i10, Bitmap.Config.ARGB_8888);
                                bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferAllocateDirect);
                            } catch (Throwable th2) {
                                logE("createBitmap or copyPixelsFromBuffer failed: ", th2);
                                HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_SNAPSHOT_OOM, "createBitmap or copyPixelsFromBuffer failed");
                                bitmapCreateBitmap = null;
                            }
                        }
                        z13 = !z12;
                        z14 = true;
                    }
                    next.listener.onFrame(bitmapCreateBitmap);
                }
            }
        }
        GlUtil.checkNoGLES2Error("EglRenderer.notifyCallbacks");
    }

    private void postToRenderThread(Runnable runnable) {
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler != null) {
                handler.post(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:193:0x0282 A[Catch: all -> 0x030c, TryCatch #13 {all -> 0x030c, blocks: (B:139:0x01ec, B:191:0x0279, B:193:0x0282, B:194:0x0285), top: B:313:0x01ec }] */
    /* JADX WARN: Code duplicated, block: B:200:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:202:0x02a4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:203:0x02a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:209:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:212:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:217:0x02df A[Catch: all -> 0x0309, TryCatch #9 {, blocks: (B:215:0x02db, B:217:0x02df, B:218:0x02e4), top: B:311:0x02db }] */
    /* JADX WARN: Code duplicated, block: B:242:0x0319  */
    /* JADX WARN: Code duplicated, block: B:244:0x031d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:245:0x031f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:251:0x032e  */
    /* JADX WARN: Code duplicated, block: B:254:0x034c  */
    /* JADX WARN: Code duplicated, block: B:259:0x0358 A[Catch: all -> 0x0382, TryCatch #0 {, blocks: (B:257:0x0354, B:259:0x0358, B:260:0x035d), top: B:297:0x0354 }] */
    /* JADX WARN: Code duplicated, block: B:297:0x0354 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:305:0x02e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:311:0x02db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:317:0x0361 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:209:0x02b5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:251:0x032e, please report this as an issue */
    public void renderFrameOnRenderThread() throws Throwable {
        boolean z10;
        boolean z11;
        VideoFrame videoFrame;
        boolean z12;
        float f10;
        float f11;
        float f12;
        VideoFrame videoFrame2;
        EglRendererJankStatistics eglRendererJankStatistics;
        FrameRenderDelayCallback frameRenderDelayCallback;
        ErrorCallback errorCallback;
        EglRendererJankStatistics eglRendererJankStatistics2;
        FrameRenderDelayCallback frameRenderDelayCallback2;
        VideoFrame videoFrame3;
        boolean z13;
        synchronized (this.handlerLock) {
            z10 = false;
            if (!this.enableFrameInterpolation || this.firstFrameInterpolationInterval <= 0) {
                z11 = false;
            } else {
                Handler handler = this.renderThreadHandler;
                if (handler != null) {
                    handler.removeCallbacks(this.interpolateFrameOnRenderThread);
                }
                z11 = true;
            }
        }
        synchronized (this.frameLock) {
            VideoFrame videoFrameRenderToTexture = null;
            if (this.enableLastFrame && this.isLastFrame) {
                videoFrame = this.pendingFrame;
                if (videoFrame == null && (videoFrame = this.lastFrame) == null) {
                    resetLastFrame();
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
            VideoFrame videoFrame4 = videoFrame;
            EglBase eglBase = this.eglBase;
            if (eglBase == null || !eglBase.hasSurface()) {
                if (this.enableLastFrame && this.isLastFrame) {
                    resetLastFrame();
                    return;
                } else {
                    videoFrame4.release();
                    return;
                }
            }
            synchronized (this.fpsReductionLock) {
                long j10 = this.minRenderPeriodNs;
                if (j10 != Long.MAX_VALUE) {
                    if (j10 > 0) {
                        long jNanoTime = System.nanoTime();
                        long j11 = this.nextFrameTimeNs;
                        if (jNanoTime < j11) {
                            logD("Skipping frame rendering - fps reduction is active.");
                            z12 = false;
                        } else {
                            long j12 = j11 + this.minRenderPeriodNs;
                            this.nextFrameTimeNs = j12;
                            this.nextFrameTimeNs = Math.max(j12, jNanoTime);
                        }
                    }
                    z12 = true;
                } else {
                    z12 = false;
                }
            }
            long jNanoTime2 = System.nanoTime();
            float rotatedWidth = videoFrame4.getRotatedWidth() / videoFrame4.getRotatedHeight();
            int i10 = this.rotateLayout;
            if (i10 == 90 || i10 == 270) {
                rotatedWidth = videoFrame4.getRotatedHeight() / videoFrame4.getRotatedWidth();
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
            if (!this.isStretching) {
                this.drawMatrix.preScale(f12, f11);
            }
            this.drawMatrix.preRotate(this.rotateLayout);
            this.drawMatrix.preTranslate(-0.5f, -0.5f);
            try {
                z10 = videoFrame4.getBuffer() instanceof VideoFrame.TextureBuffer;
                if ((this.useTextureCloning || z11) && z10 && !this.isLastFrame) {
                    videoFrameRenderToTexture = this.textureCloneHelper.renderToTexture(videoFrame4);
                    if (this.enableLastFrame || z11) {
                        createLastFrame(videoFrameRenderToTexture);
                    }
                } else if (this.enableLastFrame && !this.isLastFrame) {
                    createLastFrame(videoFrame4);
                }
                if (z12) {
                    try {
                        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                        GLES20.glClear(16384);
                        if ((this.useTextureCloning || z11) && z10 && !this.isLastFrame) {
                            this.frameDrawer.drawFrame(videoFrameRenderToTexture, this.drawer, this.drawMatrix, 0, 0, this.eglBase.surfaceWidth(), this.eglBase.surfaceHeight(), this.isLastFrame);
                            videoFrame3 = videoFrame4;
                        } else {
                            videoFrame3 = videoFrame4;
                            try {
                                this.frameDrawer.drawFrame(videoFrame4, this.drawer, this.drawMatrix, 0, 0, this.eglBase.surfaceWidth(), this.eglBase.surfaceHeight(), this.isLastFrame);
                            } catch (GlUtil.GlOutOfMemoryException e10) {
                                e = e10;
                                videoFrame2 = videoFrame3;
                                logE("Error while drawing frame", e);
                                errorCallback = this.errorCallback;
                                if (errorCallback != null) {
                                    errorCallback.onGlOutOfMemory(e);
                                }
                                this.drawer.release();
                                this.frameDrawer.release();
                                this.bitmapTextureFramebuffer.release();
                                if (!this.enableLastFrame) {
                                    if (this.useTextureCloning) {
                                        videoFrameRenderToTexture.release();
                                    } else {
                                        videoFrameRenderToTexture.release();
                                    }
                                } else if (this.useTextureCloning) {
                                    videoFrameRenderToTexture.release();
                                } else {
                                    videoFrameRenderToTexture.release();
                                }
                                if (!this.firstFrameRendered) {
                                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_EGL_RENDER_FIRST_FRAME_FINISHED, "EglRenderer has rendered the first frame,timestamp:" + videoFrame2.getTimestampNs());
                                    this.firstFrameRendered = true;
                                }
                                eglRendererJankStatistics2 = this.mJankStatistics;
                                if (eglRendererJankStatistics2 != null) {
                                    eglRendererJankStatistics2.onRenderFrame(this.renderedTimeMs);
                                }
                                synchronized (frameRenderDelayLock) {
                                    frameRenderDelayCallback2 = this.frameRenderDelayCallback;
                                    if (frameRenderDelayCallback2 != null) {
                                        frameRenderDelayCallback2.pushRenderedTime(this.renderedTimeMs);
                                    }
                                    synchronized (this.handlerLock) {
                                        if (this.enableFrameInterpolation) {
                                            this.frameInterpolationbeginningTime = System.currentTimeMillis();
                                            this.renderThreadHandler.postDelayed(this.interpolateFrameOnRenderThread, this.firstFrameInterpolationInterval);
                                        }
                                        return;
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                videoFrame2 = videoFrame3;
                                if (!this.enableLastFrame) {
                                    if (this.useTextureCloning) {
                                        videoFrameRenderToTexture.release();
                                    } else {
                                        videoFrameRenderToTexture.release();
                                    }
                                } else if (this.useTextureCloning) {
                                    videoFrameRenderToTexture.release();
                                } else {
                                    videoFrameRenderToTexture.release();
                                }
                                if (!this.firstFrameRendered) {
                                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_EGL_RENDER_FIRST_FRAME_FINISHED, "EglRenderer has rendered the first frame,timestamp:" + videoFrame2.getTimestampNs());
                                    this.firstFrameRendered = true;
                                }
                                eglRendererJankStatistics = this.mJankStatistics;
                                if (eglRendererJankStatistics != null) {
                                    eglRendererJankStatistics.onRenderFrame(this.renderedTimeMs);
                                }
                                synchronized (frameRenderDelayLock) {
                                    frameRenderDelayCallback = this.frameRenderDelayCallback;
                                    if (frameRenderDelayCallback != null) {
                                        frameRenderDelayCallback.pushRenderedTime(this.renderedTimeMs);
                                    }
                                    synchronized (this.handlerLock) {
                                        if (this.enableFrameInterpolation) {
                                            this.frameInterpolationbeginningTime = System.currentTimeMillis();
                                            this.renderThreadHandler.postDelayed(this.interpolateFrameOnRenderThread, this.firstFrameInterpolationInterval);
                                        }
                                        throw th;
                                    }
                                }
                            }
                        }
                        long jNanoTime3 = System.nanoTime();
                        if (this.usePresentationTimeStamp) {
                            this.eglBase.swapBuffers(videoFrame3.getTimestampNs());
                        } else {
                            this.eglBase.swapBuffers();
                        }
                        long jNanoTime4 = System.nanoTime();
                        if (this.frameRenderDelayCallback != null || this.mJankStatistics != null) {
                            this.renderedTimeMs = System.currentTimeMillis();
                        }
                        synchronized (this.statisticsLock) {
                            this.framesRendered++;
                            this.renderTimeNs += jNanoTime4 - jNanoTime2;
                            this.renderSwapBufferTimeNs += jNanoTime4 - jNanoTime3;
                        }
                    } catch (GlUtil.GlOutOfMemoryException e11) {
                        e = e11;
                        videoFrame3 = videoFrame4;
                    } catch (Throwable th2) {
                        th = th2;
                        videoFrame3 = videoFrame4;
                    }
                } else {
                    videoFrame3 = videoFrame4;
                }
                if ((this.useTextureCloning || z11) && z10 && !(z13 = this.isLastFrame)) {
                    notifyCallbacks(videoFrameRenderToTexture, z12, z13);
                    videoFrame2 = videoFrame3;
                } else {
                    videoFrame2 = videoFrame3;
                    try {
                        try {
                            notifyCallbacks(videoFrame2, z12, this.isLastFrame);
                        } catch (GlUtil.GlOutOfMemoryException e12) {
                            e = e12;
                            logE("Error while drawing frame", e);
                            errorCallback = this.errorCallback;
                            if (errorCallback != null) {
                                errorCallback.onGlOutOfMemory(e);
                            }
                            this.drawer.release();
                            this.frameDrawer.release();
                            this.bitmapTextureFramebuffer.release();
                            if (!this.enableLastFrame && this.isLastFrame) {
                                resetLastFrame();
                            } else if ((this.useTextureCloning || z11) && z10 && videoFrameRenderToTexture != null) {
                                videoFrameRenderToTexture.release();
                            } else {
                                videoFrame2.release();
                            }
                            if (!this.firstFrameRendered) {
                                HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_EGL_RENDER_FIRST_FRAME_FINISHED, "EglRenderer has rendered the first frame,timestamp:" + videoFrame2.getTimestampNs());
                                this.firstFrameRendered = true;
                            }
                            eglRendererJankStatistics2 = this.mJankStatistics;
                            if (eglRendererJankStatistics2 != null) {
                                eglRendererJankStatistics2.onRenderFrame(this.renderedTimeMs);
                            }
                            synchronized (frameRenderDelayLock) {
                                frameRenderDelayCallback2 = this.frameRenderDelayCallback;
                                if (frameRenderDelayCallback2 != null) {
                                    frameRenderDelayCallback2.pushRenderedTime(this.renderedTimeMs);
                                }
                            }
                            synchronized (this.handlerLock) {
                                if (this.enableFrameInterpolation && this.firstFrameInterpolationInterval > 0 && this.renderThreadHandler != null) {
                                    this.frameInterpolationbeginningTime = System.currentTimeMillis();
                                    this.renderThreadHandler.postDelayed(this.interpolateFrameOnRenderThread, this.firstFrameInterpolationInterval);
                                }
                            }
                            return;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (!this.enableLastFrame && this.isLastFrame) {
                            resetLastFrame();
                        } else if ((this.useTextureCloning || z11) && z10 && videoFrameRenderToTexture != null) {
                            videoFrameRenderToTexture.release();
                        } else {
                            videoFrame2.release();
                        }
                        if (!this.firstFrameRendered) {
                            HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_EGL_RENDER_FIRST_FRAME_FINISHED, "EglRenderer has rendered the first frame,timestamp:" + videoFrame2.getTimestampNs());
                            this.firstFrameRendered = true;
                        }
                        eglRendererJankStatistics = this.mJankStatistics;
                        if (eglRendererJankStatistics != null) {
                            eglRendererJankStatistics.onRenderFrame(this.renderedTimeMs);
                        }
                        synchronized (frameRenderDelayLock) {
                            frameRenderDelayCallback = this.frameRenderDelayCallback;
                            if (frameRenderDelayCallback != null) {
                                frameRenderDelayCallback.pushRenderedTime(this.renderedTimeMs);
                            }
                        }
                        synchronized (this.handlerLock) {
                            if (this.enableFrameInterpolation && this.firstFrameInterpolationInterval > 0 && this.renderThreadHandler != null) {
                                this.frameInterpolationbeginningTime = System.currentTimeMillis();
                                this.renderThreadHandler.postDelayed(this.interpolateFrameOnRenderThread, this.firstFrameInterpolationInterval);
                            }
                        }
                        throw th;
                    }
                }
                if (this.enableLastFrame && this.isLastFrame) {
                    resetLastFrame();
                } else if ((this.useTextureCloning || z11) && z10 && videoFrameRenderToTexture != null) {
                    videoFrameRenderToTexture.release();
                } else {
                    videoFrame2.release();
                }
                if (!this.firstFrameRendered) {
                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_EGL_RENDER_FIRST_FRAME_FINISHED, "EglRenderer has rendered the first frame,timestamp:" + videoFrame2.getTimestampNs());
                    this.firstFrameRendered = true;
                }
                EglRendererJankStatistics eglRendererJankStatistics3 = this.mJankStatistics;
                if (eglRendererJankStatistics3 != null) {
                    eglRendererJankStatistics3.onRenderFrame(this.renderedTimeMs);
                }
                synchronized (frameRenderDelayLock) {
                    FrameRenderDelayCallback frameRenderDelayCallback3 = this.frameRenderDelayCallback;
                    if (frameRenderDelayCallback3 != null) {
                        frameRenderDelayCallback3.pushRenderedTime(this.renderedTimeMs);
                    }
                }
                synchronized (this.handlerLock) {
                    if (this.enableFrameInterpolation && this.firstFrameInterpolationInterval > 0 && this.renderThreadHandler != null) {
                        this.frameInterpolationbeginningTime = System.currentTimeMillis();
                        this.renderThreadHandler.postDelayed(this.interpolateFrameOnRenderThread, this.firstFrameInterpolationInterval);
                    }
                }
            } catch (GlUtil.GlOutOfMemoryException e13) {
                e = e13;
                videoFrame2 = videoFrame4;
            } catch (Throwable th4) {
                th = th4;
                videoFrame2 = videoFrame4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetLastFrame() {
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

    public long getEglRenderDelayMs() {
        return this.averageRenderTimeMs;
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
            if (glDrawer != null) {
                glDrawer.setImageAdjustable(this.imageAdjustable);
                glDrawer.setBrightnessRatio(this.brightnessRatio);
                glDrawer.setContrastRatio(this.contrastRatio);
                glDrawer.setSaturationRatio(this.saturationRatio);
                glDrawer.setBlackWhiteDisplay(this.enableBlackWhiteDisplay);
                glDrawer.setUnsharpMaskEnabled(this.unsharpMarkStatus);
                glDrawer.setUnsharpMaskAmount(this.unsharpAmount);
                glDrawer.setUnsharpMaskThreshold(this.unsharpThreshold);
            }
            this.textureCloneHelper = TextureCloneHelper.create();
            EglRendererJankStatistics eglRendererJankStatistics = this.mJankStatistics;
            if (eglRendererJankStatistics != null) {
                eglRendererJankStatistics.start();
            }
            HandlerThread handlerThread = new HandlerThread(this.name + TAG);
            handlerThread.start();
            HandlerWithExceptionCallback handlerWithExceptionCallback = new HandlerWithExceptionCallback(handlerThread.getLooper(), this.errorCallback);
            this.renderThreadHandler = handlerWithExceptionCallback;
            ThreadUtils.invokeAtFrontUninterruptibly(handlerWithExceptionCallback, new Runnable() { // from class: org.hmwebrtc.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95404b.lambda$init$0(context, iArr);
                }
            });
            this.renderThreadHandler.post(this.eglSurfaceCreationRunnable);
            resetStatistics(System.nanoTime());
            this.renderThreadHandler.postDelayed(this.logStatisticsRunnable, TimeUnit.SECONDS.toMillis(1L));
        }
    }

    @Override // org.hmwebrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        boolean z10;
        synchronized (this.statisticsLock) {
            this.framesReceived++;
        }
        EglRendererJankStatistics eglRendererJankStatistics = this.mJankStatistics;
        if (eglRendererJankStatistics != null) {
            eglRendererJankStatistics.onReceiveFrame(System.currentTimeMillis());
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
                this.pendingFrame = videoFrame;
                videoFrame.retain();
                this.renderThreadHandler.post(new Runnable() { // from class: org.hmwebrtc.n
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        this.f95396b.renderFrameOnRenderThread();
                    }
                });
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
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler == null) {
                logD("Already released");
                return;
            }
            handler.removeCallbacks(this.logStatisticsRunnable);
            this.renderThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: org.hmwebrtc.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95390b.lambda$release$1(countDownLatch);
                }
            });
            final Looper looper = this.renderThreadHandler.getLooper();
            this.renderThreadHandler.post(new Runnable() { // from class: org.hmwebrtc.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95393b.lambda$release$2(looper);
                }
            });
            this.renderThreadHandler = null;
            if (!ThreadUtils.awaitUninterruptibly(countDownLatch, 2000L)) {
                logW("eglBase detaching and releasing timeout");
            }
            synchronized (this.frameLock) {
                VideoFrame videoFrame = this.pendingFrame;
                if (videoFrame != null) {
                    videoFrame.release();
                    this.pendingFrame = null;
                }
            }
            EglRendererJankStatistics eglRendererJankStatistics = this.mJankStatistics;
            if (eglRendererJankStatistics != null) {
                eglRendererJankStatistics.stop();
                this.mJankStatistics = null;
            }
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
                this.renderThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: org.hmwebrtc.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f95383b.lambda$releaseEglSurface$5(runnable);
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
            postToRenderThread(new Runnable() { // from class: org.hmwebrtc.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95386b.lambda$removeFrameListener$4(countDownLatch, frameListener);
                }
            });
            ThreadUtils.awaitUninterruptibly(countDownLatch);
        }
    }

    public void setBlackWhiteDisplay(final boolean z10) {
        this.enableBlackWhiteDisplay = z10;
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.hmwebrtc.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f95418b.lambda$setBlackWhiteDisplay$7(z10);
                    }
                });
            }
        }
    }

    public void setBrightnessRatio(float f10) {
        this.brightnessRatio = f10;
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.setBrightnessRatio(f10);
        }
    }

    public void setContrastRatio(float f10) {
        this.contrastRatio = f10;
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.setContrastRatio(f10);
        }
    }

    public void setEglSurface(Object obj) {
        this.eglSurfaceCreationRunnable.setSurface(obj);
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

    public void setFrameCallback(FrameRenderDelayCallback frameRenderDelayCallback) {
        synchronized (frameRenderDelayLock) {
            this.frameRenderDelayCallback = frameRenderDelayCallback;
        }
    }

    void setFrameInterpolationParameters(boolean z10, int i10, int i11, int i12) {
        logD("setFrameInterpolationParameters():enable " + z10 + ",firstInterval " + i10 + ",followingInterval " + i11 + ",topLimit " + i12);
        synchronized (this.handlerLock) {
            this.enableFrameInterpolation = z10;
            this.firstFrameInterpolationInterval = i10;
            this.followingFrameInterpolationInterval = i11;
            if (i12 <= 0) {
                i12 = Integer.MAX_VALUE;
            }
            this.frameInterpolationTopLimit = i12;
        }
    }

    public void setImageAdjustable(boolean z10) {
        this.imageAdjustable = z10;
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.setImageAdjustable(z10);
        }
    }

    public boolean setJankMeasuringTool(PerfdogJankCounter perfdogJankCounter, PerfdogJankCounter perfdogJankCounter2) {
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler == null && this.mJankStatistics == null) {
                this.mJankStatistics = new EglRendererJankStatistics(perfdogJankCounter, perfdogJankCounter2, 10);
                return true;
            }
            Logging.w(TAG, "setJankMeasuringTool failed!");
            return false;
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

    public void setSaturationRatio(float f10) {
        this.saturationRatio = f10;
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.setSaturationRatio(f10);
        }
    }

    public void setStretching(boolean z10) {
        this.isStretching = z10;
    }

    public void setUnsharpMaskAmount(final float f10) {
        this.unsharpAmount = f10;
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.hmwebrtc.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f95379b.lambda$setUnsharpMaskAmount$10(f10);
                    }
                });
            }
        }
    }

    public void setUnsharpMaskEnabled(final boolean z10) {
        this.unsharpMarkStatus = z10;
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.hmwebrtc.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f95402b.lambda$setUnsharpMaskEnabled$8(z10);
                    }
                });
            }
        }
    }

    public void setUnsharpMaskThreshold(final float f10) {
        this.unsharpThreshold = f10;
        synchronized (this.handlerLock) {
            Handler handler = this.renderThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.hmwebrtc.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f95398b.lambda$setUnsharpMaskThreshold$9(f10);
                    }
                });
            }
        }
    }

    public void setUseTextureCloningFlag(boolean z10) {
        logD("setUseTextureCloningFlag():" + z10);
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
        this.useTextureCloning = true;
        this.firstFrameInterpolationInterval = 100;
        this.followingFrameInterpolationInterval = 33;
        this.frameInterpolationTopLimit = Integer.MAX_VALUE;
        this.logStatisticsRunnable = new Runnable() { // from class: org.hmwebrtc.EglRenderer.1
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
        this.contrastRatio = 1.0f;
        this.saturationRatio = 1.0f;
        this.unsharpAmount = 1.5f;
        this.interpolateFrameOnRenderThread = new Runnable() { // from class: org.hmwebrtc.EglRenderer.2
            @Override // java.lang.Runnable
            public void run() {
                VideoFrame videoFrame;
                float f10;
                float f11;
                float f12;
                synchronized (EglRenderer.this.frameLock) {
                    videoFrame = EglRenderer.this.lastFrame;
                }
                if (videoFrame == null || EglRenderer.this.eglBase == null || !EglRenderer.this.eglBase.hasSurface()) {
                    EglRenderer.this.resetLastFrame();
                    return;
                }
                long jNanoTime = System.nanoTime();
                float rotatedWidth = videoFrame.getRotatedWidth() / videoFrame.getRotatedHeight();
                if (EglRenderer.this.rotateLayout == 90 || EglRenderer.this.rotateLayout == 270) {
                    rotatedWidth = videoFrame.getRotatedHeight() / videoFrame.getRotatedWidth();
                }
                synchronized (EglRenderer.this.layoutLock) {
                    f10 = EglRenderer.this.layoutAspectRatio != 0.0f ? EglRenderer.this.layoutAspectRatio : rotatedWidth;
                }
                if (rotatedWidth > f10) {
                    f12 = f10 / rotatedWidth;
                    f11 = 1.0f;
                } else {
                    f11 = rotatedWidth / f10;
                    f12 = 1.0f;
                }
                EglRenderer.this.drawMatrix.reset();
                EglRenderer.this.drawMatrix.preTranslate(0.5f, 0.5f);
                EglRenderer.this.drawMatrix.preScale(EglRenderer.this.mirrorHorizontally ? -1.0f : 1.0f, EglRenderer.this.mirrorVertically ? -1.0f : 1.0f);
                if (!EglRenderer.this.isStretching) {
                    EglRenderer.this.drawMatrix.preScale(f12, f11);
                }
                EglRenderer.this.drawMatrix.preRotate(EglRenderer.this.rotateLayout);
                EglRenderer.this.drawMatrix.preTranslate(-0.5f, -0.5f);
                try {
                    try {
                        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                        GLES20.glClear(16384);
                        EglRenderer.this.frameDrawer.drawFrame(videoFrame, EglRenderer.this.drawer, EglRenderer.this.drawMatrix, 0, 0, EglRenderer.this.eglBase.surfaceWidth(), EglRenderer.this.eglBase.surfaceHeight(), true);
                        long jNanoTime2 = System.nanoTime();
                        EglRenderer.this.eglBase.swapBuffers();
                        long jNanoTime3 = System.nanoTime();
                        if (EglRenderer.this.frameRenderDelayCallback != null || EglRenderer.this.mJankStatistics != null) {
                            EglRenderer.this.renderedTimeMs = System.currentTimeMillis();
                        }
                        synchronized (EglRenderer.this.statisticsLock) {
                            try {
                                EglRenderer.access$2204(EglRenderer.this);
                                EglRenderer.access$2314(EglRenderer.this, jNanoTime3 - jNanoTime);
                                EglRenderer.access$2414(EglRenderer.this, jNanoTime3 - jNanoTime2);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (EglRenderer.this.mJankStatistics != null) {
                            EglRenderer.this.mJankStatistics.onRenderFrame(EglRenderer.this.renderedTimeMs);
                        }
                        synchronized (EglRenderer.frameRenderDelayLock) {
                            if (EglRenderer.this.frameRenderDelayCallback != null) {
                                EglRenderer.this.frameRenderDelayCallback.pushRenderedTime(EglRenderer.this.renderedTimeMs);
                            }
                        }
                        synchronized (EglRenderer.this.handlerLock) {
                            if (EglRenderer.this.followingFrameInterpolationInterval > 0 && EglRenderer.this.renderThreadHandler != null) {
                                EglRenderer.this.renderThreadHandler.removeCallbacks(EglRenderer.this.interpolateFrameOnRenderThread);
                                if (System.currentTimeMillis() - EglRenderer.this.frameInterpolationbeginningTime < EglRenderer.this.frameInterpolationTopLimit) {
                                    EglRenderer.this.renderThreadHandler.postDelayed(EglRenderer.this.interpolateFrameOnRenderThread, EglRenderer.this.followingFrameInterpolationInterval);
                                }
                            }
                        }
                    } catch (GlUtil.GlOutOfMemoryException e10) {
                        EglRenderer.this.logE("Error while drawing frame", e10);
                        if (EglRenderer.this.errorCallback != null) {
                            EglRenderer.this.errorCallback.onGlOutOfMemory(e10);
                        }
                        EglRenderer.this.drawer.release();
                        EglRenderer.this.frameDrawer.release();
                        EglRenderer.this.bitmapTextureFramebuffer.release();
                        if (EglRenderer.this.mJankStatistics != null) {
                            EglRenderer.this.mJankStatistics.onRenderFrame(EglRenderer.this.renderedTimeMs);
                        }
                        synchronized (EglRenderer.frameRenderDelayLock) {
                            if (EglRenderer.this.frameRenderDelayCallback != null) {
                                EglRenderer.this.frameRenderDelayCallback.pushRenderedTime(EglRenderer.this.renderedTimeMs);
                            }
                            synchronized (EglRenderer.this.handlerLock) {
                                if (EglRenderer.this.followingFrameInterpolationInterval > 0 && EglRenderer.this.renderThreadHandler != null) {
                                    EglRenderer.this.renderThreadHandler.removeCallbacks(EglRenderer.this.interpolateFrameOnRenderThread);
                                    if (System.currentTimeMillis() - EglRenderer.this.frameInterpolationbeginningTime < EglRenderer.this.frameInterpolationTopLimit) {
                                        EglRenderer.this.renderThreadHandler.postDelayed(EglRenderer.this.interpolateFrameOnRenderThread, EglRenderer.this.followingFrameInterpolationInterval);
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th2) {
                    if (EglRenderer.this.mJankStatistics != null) {
                        EglRenderer.this.mJankStatistics.onRenderFrame(EglRenderer.this.renderedTimeMs);
                    }
                    synchronized (EglRenderer.frameRenderDelayLock) {
                        if (EglRenderer.this.frameRenderDelayCallback != null) {
                            EglRenderer.this.frameRenderDelayCallback.pushRenderedTime(EglRenderer.this.renderedTimeMs);
                        }
                        synchronized (EglRenderer.this.handlerLock) {
                            if (EglRenderer.this.followingFrameInterpolationInterval > 0 && EglRenderer.this.renderThreadHandler != null) {
                                EglRenderer.this.renderThreadHandler.removeCallbacks(EglRenderer.this.interpolateFrameOnRenderThread);
                                if (System.currentTimeMillis() - EglRenderer.this.frameInterpolationbeginningTime < EglRenderer.this.frameInterpolationTopLimit) {
                                    EglRenderer.this.renderThreadHandler.postDelayed(EglRenderer.this.interpolateFrameOnRenderThread, EglRenderer.this.followingFrameInterpolationInterval);
                                }
                            }
                            throw th2;
                        }
                    }
                }
            }
        };
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
            handler.postAtFrontOfQueue(new Runnable() { // from class: org.hmwebrtc.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95407b.lambda$clearImage$6(f10, f11, f12, f13);
                }
            });
        }
    }

    public void createEglSurface(SurfaceTexture surfaceTexture) {
        createEglSurfaceInternal(surfaceTexture);
    }

    public void addFrameListener(final FrameListener frameListener, final float f10, @Nullable final RendererCommon.GlDrawer glDrawer, final boolean z10) {
        postToRenderThread(new Runnable() { // from class: org.hmwebrtc.s
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f95413b.lambda$addFrameListener$3(glDrawer, frameListener, f10, z10);
            }
        });
    }

    public void init(@Nullable EglBase.Context context, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        init(context, iArr, glDrawer, false);
    }
}
