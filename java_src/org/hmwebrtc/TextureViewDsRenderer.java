package org.hmwebrtc;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;

/* JADX INFO: loaded from: classes10.dex */
public class TextureViewDsRenderer extends TextureView implements TextureView.SurfaceTextureListener, VideoSink, RendererCommon.RendererEvents, DirectSurfaceHelper {
    private static final String TAG = "TextureViewDsRenderer";
    public static final Object frameRenderDelayLock = new Object();
    private long directSurfaceRenderDelayMs;
    private boolean enableFixedSize;
    private FrameInfoAndEvents frameInfoAndEvents;
    private FrameRenderDelayCallback frameRenderDelayCallback;
    private MeasureHelper mMeasureHelper;
    public Surface mSurface;
    private RendererCommon.RendererEvents rendererEvents;
    private final String resourceName;
    private int rotatedFrameHeight;
    private int rotatedFrameWidth;
    private int surfaceHeight;
    private int surfaceWidth;
    private final boolean uiThreadTestsEnable;
    private int viewHeight;
    private int viewWidth;

    public TextureViewDsRenderer(Context context) {
        super(context);
        this.resourceName = getResourceName();
        this.frameInfoAndEvents = new FrameInfoAndEvents();
        this.uiThreadTestsEnable = false;
        setSurfaceTextureListener(this);
        this.mMeasureHelper = new MeasureHelper(this);
    }

    private String getResourceName() {
        try {
            return getResources().getResourceEntryName(getId());
        } catch (Resources.NotFoundException unused) {
            return "";
        }
    }

    private /* synthetic */ void lambda$onFrameResolutionChanged$0(int i10, int i11) {
        this.rotatedFrameWidth = i10;
        this.rotatedFrameHeight = i11;
        updateSurfaceSize();
        requestLayout();
    }

    private void logD(String str) {
        Logging.d(TAG, this.resourceName + ": " + str);
    }

    private void postOrRun(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    private void updateSurfaceSize() {
        ThreadUtils.checkIsOnMainThread();
        if (!this.enableFixedSize || this.rotatedFrameWidth == 0 || this.rotatedFrameHeight == 0 || getWidth() == 0 || getHeight() == 0) {
            this.surfaceHeight = 0;
            this.surfaceWidth = 0;
            return;
        }
        float width = getWidth() / getHeight();
        int i10 = this.rotatedFrameWidth;
        int i11 = this.rotatedFrameHeight;
        if (i10 / i11 > width) {
            i10 = (int) (i11 * width);
        } else {
            i11 = (int) (i10 / width);
        }
        int iMin = Math.min(getWidth(), i10);
        int iMin2 = Math.min(getHeight(), i11);
        logD("updateSurfaceSize. Layout size: " + getWidth() + "x" + getHeight() + ", frame size: " + this.rotatedFrameWidth + "x" + this.rotatedFrameHeight + ", requested surface size: " + iMin + "x" + iMin2 + ", old surface size: " + this.surfaceWidth + "x" + this.surfaceHeight);
        if (iMin == this.surfaceWidth && iMin2 == this.surfaceHeight) {
            return;
        }
        this.surfaceWidth = iMin;
        this.surfaceHeight = iMin2;
    }

    public long getRenderDelayMs() {
        return this.directSurfaceRenderDelayMs;
    }

    public String getRenderLayout() {
        return "width: " + this.viewWidth + ",height: " + this.viewHeight;
    }

    @Override // org.hmwebrtc.DirectSurfaceHelper
    public int getRotateDegree() {
        return 0;
    }

    @Override // org.hmwebrtc.DirectSurfaceHelper
    public Surface getSurface() {
        return this.mSurface;
    }

    public void init(RendererCommon.RendererEvents rendererEvents) {
        ThreadUtils.checkIsOnMainThread();
        this.rendererEvents = rendererEvents;
        this.rotatedFrameWidth = 0;
        this.rotatedFrameHeight = 0;
        this.frameInfoAndEvents.setRendererEvents(this);
    }

    @Override // org.hmwebrtc.RendererCommon.RendererEvents
    public void onFirstFrameRendered() {
        RendererCommon.RendererEvents rendererEvents = this.rendererEvents;
        if (rendererEvents != null) {
            rendererEvents.onFirstFrameRendered();
        }
    }

    @Override // org.hmwebrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        synchronized (frameRenderDelayLock) {
            if (this.frameRenderDelayCallback != null) {
                this.frameRenderDelayCallback.pushRenderedTime(System.currentTimeMillis());
            }
        }
        this.frameInfoAndEvents.updateFrameDimensionsAndReportEvents(videoFrame);
    }

    @Override // org.hmwebrtc.RendererCommon.RendererEvents
    public void onFrameResolutionChanged(int i10, int i11, int i12) {
        RendererCommon.RendererEvents rendererEvents = this.rendererEvents;
        if (rendererEvents != null) {
            rendererEvents.onFrameResolutionChanged(i10, i11, i12);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ThreadUtils.checkIsOnMainThread();
        this.viewWidth = i12 - i10;
        this.viewHeight = i13 - i11;
        if (z10) {
            HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_RENDER_VIEW_TYPE, "onLayout: " + getRenderLayout());
        }
        updateSurfaceSize();
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        ThreadUtils.checkIsOnMainThread();
        this.mMeasureHelper.doMeasure(i10, i11);
        setMeasuredDimension(this.mMeasureHelper.getMeasuredWidth(), this.mMeasureHelper.getMeasuredHeight());
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        ThreadUtils.checkIsOnMainThread();
        this.surfaceHeight = 0;
        this.surfaceWidth = 0;
        updateSurfaceSize();
        Logging.d(TAG, "surfaceCreated");
        this.mSurface = new Surface(surfaceTexture);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Logging.e(TAG, "beginning onSurfaceTextureDestroyed(). ");
        Surface surface = this.mSurface;
        if (surface != null) {
            surface.release();
            this.mSurface = null;
        }
        Logging.d(TAG, "surfaceDestroyed done");
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void release() {
        synchronized (frameRenderDelayLock) {
            FrameRenderDelayCallback frameRenderDelayCallback = this.frameRenderDelayCallback;
            if (frameRenderDelayCallback != null) {
                frameRenderDelayCallback.setFrameCallback(null);
                this.frameRenderDelayCallback = null;
            }
        }
    }

    @Override // org.hmwebrtc.DirectSurfaceHelper
    public void releaseFromDirectSurface() {
    }

    public void setEnableHardwareScaler(boolean z10) {
        ThreadUtils.checkIsOnMainThread();
        this.enableFixedSize = z10;
        updateSurfaceSize();
    }

    public void setFrameCallback(EglRenderer.FrameCallback frameCallback) {
        synchronized (frameRenderDelayLock) {
            try {
                if (frameCallback != null) {
                    FrameRenderDelayCallback frameRenderDelayCallback = new FrameRenderDelayCallback();
                    this.frameRenderDelayCallback = frameRenderDelayCallback;
                    frameRenderDelayCallback.setFrameCallback(frameCallback);
                } else {
                    this.frameRenderDelayCallback = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.hmwebrtc.DirectSurfaceHelper
    public void setRenderDelayMs(long j10) {
        this.directSurfaceRenderDelayMs = j10;
    }

    public void setScalingType(RendererCommon.ScalingType scalingType) {
        ThreadUtils.checkIsOnMainThread();
        requestLayout();
    }

    public void setVideoRotation(int i10) {
        this.mMeasureHelper.setVideoRotation(i10);
        setRotation(i10);
    }

    public void setVideoSize(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        this.mMeasureHelper.setVideoSize(i10, i11);
        requestLayout();
    }

    public void setScalingType(RendererCommon.ScalingType scalingType, RendererCommon.ScalingType scalingType2) {
        ThreadUtils.checkIsOnMainThread();
        requestLayout();
    }

    public TextureViewDsRenderer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.resourceName = getResourceName();
        this.frameInfoAndEvents = new FrameInfoAndEvents();
        this.uiThreadTestsEnable = false;
        setSurfaceTextureListener(this);
        this.mMeasureHelper = new MeasureHelper(this);
    }
}
