package org.hmwebrtc;

import android.graphics.SurfaceTexture;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes10.dex */
public class TextureEglRenderer extends EglRenderer {
    private static final String TAG = "TextureEglRenderer";
    private int frameRotation;
    private boolean isFirstFrameRendered;
    private boolean isRenderingPaused;
    private final Object layoutLock;
    private Object mSurface;
    private RendererCommon.RendererEvents rendererEvents;
    private int rotatedFrameHeight;
    private int rotatedFrameWidth;

    public TextureEglRenderer(String str) {
        super(str);
        this.layoutLock = new Object();
    }

    private void updateFrameDimensionsAndReportEvents(VideoFrame videoFrame) {
        synchronized (this.layoutLock) {
            if (this.isRenderingPaused) {
                return;
            }
            if (!this.isFirstFrameRendered) {
                this.isFirstFrameRendered = true;
                Logging.d(TAG, "Reporting first rendered frame.");
                RendererCommon.RendererEvents rendererEvents = this.rendererEvents;
                if (rendererEvents != null) {
                    rendererEvents.onFirstFrameRendered();
                }
            }
            if (this.rotatedFrameWidth != videoFrame.getRotatedWidth() || this.rotatedFrameHeight != videoFrame.getRotatedHeight() || this.frameRotation != videoFrame.getRotation()) {
                Logging.d(TAG, "Reporting frame resolution changed to " + videoFrame.getBuffer().getWidth() + "x" + videoFrame.getBuffer().getHeight() + " with rotation " + videoFrame.getRotation());
                RendererCommon.RendererEvents rendererEvents2 = this.rendererEvents;
                if (rendererEvents2 != null) {
                    rendererEvents2.onFrameResolutionChanged(videoFrame.getBuffer().getWidth(), videoFrame.getBuffer().getHeight(), videoFrame.getRotation());
                }
                this.rotatedFrameWidth = videoFrame.getRotatedWidth();
                this.rotatedFrameHeight = videoFrame.getRotatedHeight();
                this.frameRotation = videoFrame.getRotation();
            }
        }
    }

    public void SetRendererEvents(RendererCommon.RendererEvents rendererEvents) {
        ThreadUtils.checkIsOnMainThread();
        this.rendererEvents = rendererEvents;
        synchronized (this.layoutLock) {
            this.isFirstFrameRendered = false;
            this.rotatedFrameWidth = 0;
            this.rotatedFrameHeight = 0;
            this.frameRotation = 0;
        }
    }

    @Override // org.hmwebrtc.EglRenderer
    public void disableFpsReduction() {
        synchronized (this.layoutLock) {
            this.isRenderingPaused = false;
        }
        super.disableFpsReduction();
    }

    public void init(EglBase.Context context, RendererCommon.RendererEvents rendererEvents, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        ThreadUtils.checkIsOnMainThread();
        this.rendererEvents = rendererEvents;
        synchronized (this.layoutLock) {
            this.isFirstFrameRendered = false;
            this.rotatedFrameWidth = 0;
            this.rotatedFrameHeight = 0;
            this.frameRotation = 0;
        }
        setEglSurface(this.mSurface);
        super.init(context, iArr, glDrawer);
    }

    public void initWithoutOnMainThread(EglBase.Context context, RendererCommon.RendererEvents rendererEvents, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        this.rendererEvents = rendererEvents;
        synchronized (this.layoutLock) {
            this.isFirstFrameRendered = false;
            this.rotatedFrameWidth = 0;
            this.rotatedFrameHeight = 0;
            this.frameRotation = 0;
        }
        setEglSurface(this.mSurface);
        super.init(context, iArr, glDrawer);
    }

    @Override // org.hmwebrtc.EglRenderer, org.hmwebrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        updateFrameDimensionsAndReportEvents(videoFrame);
        super.onFrame(videoFrame);
    }

    public void onFrameDs(VideoFrame videoFrame) {
        updateFrameDimensionsAndReportEvents(videoFrame);
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        ThreadUtils.checkIsOnMainThread();
        createEglSurface(surfaceTexture);
        this.mSurface = surfaceTexture;
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Logging.e(TAG, "beginning onSurfaceTextureDestroyed(). ");
        ThreadUtils.checkIsOnMainThread();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        releaseEglSurface(new f0(countDownLatch));
        ThreadUtils.awaitUninterruptibly(countDownLatch);
        this.mSurface = null;
        Logging.e(TAG, "ending onSurfaceTextureDestroyed(). ");
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        ThreadUtils.checkIsOnMainThread();
        Logging.d(TAG, "surfaceChanged, size: " + i10 + "x" + i11);
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // org.hmwebrtc.EglRenderer
    public void pauseVideo() {
        synchronized (this.layoutLock) {
            this.isRenderingPaused = true;
        }
        super.pauseVideo();
    }

    public void releaseEglSurface() {
        Logging.e(TAG, "beginning releaseEglSurface(). ");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        releaseEglSurface(new f0(countDownLatch));
        ThreadUtils.awaitUninterruptibly(countDownLatch);
        Logging.e(TAG, "ending releaseEglSurface(). ");
    }

    @Override // org.hmwebrtc.EglRenderer
    public void setFpsReduction(float f10) {
        synchronized (this.layoutLock) {
            this.isRenderingPaused = f10 == 0.0f;
        }
        super.setFpsReduction(f10);
    }

    @Override // org.hmwebrtc.EglRenderer
    public void init(EglBase.Context context, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        init(context, (RendererCommon.RendererEvents) null, iArr, glDrawer);
    }
}
