package org.hmwebrtc;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import org.hmwebrtc.utils.PerfdogJankCounter;

/* JADX INFO: loaded from: classes10.dex */
public class SurfaceViewRenderer extends SurfaceView implements SurfaceHolder.Callback, VideoSink, RendererCommon.RendererEvents, DirectSurfaceHelper {
    private static final String TAG = "SurfaceViewRenderer";
    private long directSurfaceRenderDelayMs;
    private final SurfaceEglRenderer eglRenderer;
    private boolean enableFixedSize;
    private FrameRenderDelayCallback frameRenderDelayCallback;
    public boolean isEglMonochromeOff;
    private boolean isInit;
    public boolean isUseDirectSurface;
    private int[] mConfigAttributes;
    private RendererCommon.GlDrawer mDrawer;
    private SurfaceViewDsRenderer mDsRenderer;
    private EglBase.Context mSharedContext;
    public Surface mSurface;
    private RendererCommon.RendererEvents rendererEvents;
    private final String resourceName;
    public int rotateDegree;
    private int rotatedFrameHeight;
    private int rotatedFrameWidth;
    private int surfaceHeight;
    private int surfaceWidth;
    private final boolean uiThreadTestsEnable;
    private final RendererCommon.VideoLayoutMeasure videoLayoutMeasure;
    private int viewHeight;
    private int viewWidth;

    public SurfaceViewRenderer(Context context) {
        super(context);
        this.videoLayoutMeasure = new RendererCommon.VideoLayoutMeasure();
        this.uiThreadTestsEnable = false;
        String resourceName = getResourceName();
        this.resourceName = resourceName;
        this.eglRenderer = new SurfaceEglRenderer(resourceName);
        getHolder().addCallback(this);
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
            getHolder().setSizeFromLayout();
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
        getHolder().setFixedSize(iMin, iMin2);
    }

    public void addFrameListener(EglRenderer.FrameListener frameListener, float f10, RendererCommon.GlDrawer glDrawer) {
        this.eglRenderer.addFrameListener(frameListener, f10, glDrawer);
    }

    public void clearImage() {
        this.eglRenderer.clearImage();
    }

    public void disableFpsReduction() {
        this.eglRenderer.disableFpsReduction();
    }

    public int getEglRenderFps() {
        return this.eglRenderer.getEglRenderFps();
    }

    public long getRenderDelayMs() {
        return this.isInit ? this.eglRenderer.getEglRenderDelayMs() : this.directSurfaceRenderDelayMs;
    }

    public String getRenderLayout() {
        return "width: " + this.viewWidth + ",height: " + this.viewHeight;
    }

    @Override // org.hmwebrtc.DirectSurfaceHelper
    public int getRotateDegree() {
        return this.rotateDegree;
    }

    @Override // org.hmwebrtc.DirectSurfaceHelper
    public Surface getSurface() {
        return this.mSurface;
    }

    public void init(EglBase.Context context, RendererCommon.RendererEvents rendererEvents) {
        init(context, rendererEvents, EglBase.CONFIG_PLAIN, new GlRectDrawer());
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
        if (!(videoFrame.getBuffer() instanceof VideoFrame.TextureBuffer)) {
            if (!this.isInit) {
                Logging.d(TAG, "onFrame():Initialize the EGL Render");
                this.eglRenderer.initWithoutOnMainThread(this.mSharedContext, this, this.mConfigAttributes, this.mDrawer);
                this.isInit = true;
            }
            this.eglRenderer.onFrame(videoFrame);
            return;
        }
        if (((VideoFrame.TextureBuffer) videoFrame.getBuffer()).getTextureId() > 0) {
            if (!this.isInit) {
                Logging.d(TAG, "onFrame():Initialize the EGL Render becaused of direct surface==null");
                this.eglRenderer.initWithoutOnMainThread(this.mSharedContext, this, this.mConfigAttributes, this.mDrawer);
                this.isInit = true;
            }
            this.eglRenderer.onFrame(videoFrame);
            return;
        }
        synchronized (EglRenderer.frameRenderDelayLock) {
            if (this.frameRenderDelayCallback != null) {
                this.frameRenderDelayCallback.pushRenderedTime(System.currentTimeMillis());
            }
        }
        this.eglRenderer.onFrameDs(videoFrame);
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
        int i14 = i12 - i10;
        this.viewWidth = i14;
        int i15 = i13 - i11;
        this.viewHeight = i15;
        if (z10) {
            HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_RENDER_VIEW_TYPE, "onLayout: " + getRenderLayout());
        }
        this.eglRenderer.setLayoutAspectRatio(i14 / i15);
        updateSurfaceSize();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i10, int i11) {
        ThreadUtils.checkIsOnMainThread();
        Point pointMeasure = this.videoLayoutMeasure.measure(i10, i11, this.rotatedFrameWidth, this.rotatedFrameHeight);
        setMeasuredDimension(pointMeasure.x, pointMeasure.y);
        logD("onMeasure(). New size: " + pointMeasure.x + "x" + pointMeasure.y);
    }

    public void pauseVideo() {
        this.eglRenderer.pauseVideo();
    }

    public void release() {
        this.eglRenderer.release();
        synchronized (EglRenderer.frameRenderDelayLock) {
            FrameRenderDelayCallback frameRenderDelayCallback = this.frameRenderDelayCallback;
            if (frameRenderDelayCallback != null) {
                frameRenderDelayCallback.setFrameCallback(null);
                this.frameRenderDelayCallback = null;
            }
        }
        this.isInit = false;
    }

    public void releaseEglSurface() {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.releaseEglSurface();
        }
    }

    @Override // org.hmwebrtc.DirectSurfaceHelper
    public void releaseFromDirectSurface() {
        this.eglRenderer.release();
        this.isInit = false;
    }

    public void removeFrameListener(EglRenderer.FrameListener frameListener) {
        this.eglRenderer.removeFrameListener(frameListener);
    }

    public boolean setBlackWhiteDisplay(boolean z10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer == null) {
            return false;
        }
        if (this.isEglMonochromeOff || this.isUseDirectSurface) {
            surfaceEglRenderer.setBlackWhiteDisplay(false);
            return false;
        }
        surfaceEglRenderer.setBlackWhiteDisplay(z10);
        return true;
    }

    public void setBrightnessRatio(float f10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setBrightnessRatio(f10);
        }
    }

    public void setContrastRatio(float f10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setContrastRatio(f10);
        }
    }

    public void setDsSurface(SurfaceViewDsRenderer surfaceViewDsRenderer) {
        this.mDsRenderer = surfaceViewDsRenderer;
    }

    protected void setDsVideoRotation(int i10) {
        SurfaceViewDsRenderer surfaceViewDsRenderer = this.mDsRenderer;
        if (surfaceViewDsRenderer != null) {
            surfaceViewDsRenderer.setVideoRotation(i10);
        }
    }

    public void setDsVideoSize(int i10, int i11) {
        SurfaceViewDsRenderer surfaceViewDsRenderer = this.mDsRenderer;
        if (surfaceViewDsRenderer != null) {
            surfaceViewDsRenderer.setVideoSize(i10, i11);
        }
    }

    public void setEglMonochromeOff(boolean z10) {
        SurfaceEglRenderer surfaceEglRenderer;
        this.isEglMonochromeOff = z10;
        if (!z10 || (surfaceEglRenderer = this.eglRenderer) == null) {
            return;
        }
        surfaceEglRenderer.setBlackWhiteDisplay(false);
    }

    public void setEnableHardwareScaler(boolean z10) {
        ThreadUtils.checkIsOnMainThread();
        this.enableFixedSize = z10;
        updateSurfaceSize();
    }

    public void setErrorCallback(EglRenderer.ErrorCallback errorCallback) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setErrorCallback(errorCallback);
        }
    }

    public void setFpsReduction(float f10) {
        this.eglRenderer.setFpsReduction(f10);
    }

    public void setFrameCallback(EglRenderer.FrameCallback frameCallback) {
        synchronized (EglRenderer.frameRenderDelayLock) {
            try {
                if (frameCallback != null) {
                    FrameRenderDelayCallback frameRenderDelayCallback = new FrameRenderDelayCallback();
                    this.frameRenderDelayCallback = frameRenderDelayCallback;
                    frameRenderDelayCallback.setFrameCallback(frameCallback);
                } else {
                    this.frameRenderDelayCallback = null;
                }
                this.eglRenderer.setFrameCallback(this.frameRenderDelayCallback);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setFrameInterpolationParameters(boolean z10, int i10, int i11, int i12) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setFrameInterpolationParameters(z10, i10, i11, i12);
        }
    }

    public void setImageAdjustable(boolean z10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setImageAdjustable(z10);
        }
    }

    public boolean setJankMeasuringTool(PerfdogJankCounter perfdogJankCounter, PerfdogJankCounter perfdogJankCounter2) {
        return this.eglRenderer.setJankMeasuringTool(perfdogJankCounter, perfdogJankCounter2);
    }

    public void setLastFrameCallBack(boolean z10) {
        this.eglRenderer.setLastFrameCallBack(z10);
    }

    public void setMirror(boolean z10) {
        this.eglRenderer.setMirror(z10);
    }

    @Override // org.hmwebrtc.DirectSurfaceHelper
    public void setRenderDelayMs(long j10) {
        this.directSurfaceRenderDelayMs = j10;
    }

    public boolean setRotateLayout(int i10) {
        HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_RENDER_VIEW_TYPE, "setRotateLayout:" + i10);
        if (i10 == 0 || i10 == 90 || i10 == 180 || i10 == 270) {
            this.rotateDegree = i10;
            this.eglRenderer.setRotateLayout(i10);
            return true;
        }
        logD("rotate degree is only 0, 90, 180, 270, but input " + i10);
        return false;
    }

    public void setSaturationRatio(float f10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setSaturationRatio(f10);
        }
    }

    public void setScalingType(RendererCommon.ScalingType scalingType) {
        ThreadUtils.checkIsOnMainThread();
        this.videoLayoutMeasure.setScalingType(scalingType);
        requestLayout();
    }

    public void setStretching(boolean z10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setStretching(z10);
        }
    }

    public void setUnsharpMaskAmount(float f10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setUnsharpMaskAmount(f10);
        }
    }

    public void setUnsharpMaskEnabled(boolean z10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setUnsharpMaskEnabled(z10);
        }
    }

    public void setUnsharpMaskThreshold(float f10) {
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setUnsharpMaskThreshold(f10);
        }
    }

    public void setUseDirectSurface(boolean z10) {
        this.isUseDirectSurface = z10;
    }

    public void setUseTextureCloningFlag(boolean z10) {
        logD("setUseTextureCloningFlag():" + z10);
        SurfaceEglRenderer surfaceEglRenderer = this.eglRenderer;
        if (surfaceEglRenderer != null) {
            surfaceEglRenderer.setUseTextureCloningFlag(z10);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        this.eglRenderer.surfaceChanged(surfaceHolder, i10, i11, i12);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        this.eglRenderer.surfaceCreated(surfaceHolder);
        this.surfaceHeight = 0;
        this.surfaceWidth = 0;
        updateSurfaceSize();
        Logging.d(TAG, "surfaceCreated");
        this.mSurface = surfaceHolder.getSurface();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        this.eglRenderer.surfaceDestroyed(surfaceHolder);
        Logging.d(TAG, "surfaceDestroyed");
        this.mSurface = null;
        Logging.d(TAG, "surfaceDestroyed done");
    }

    public void addFrameListener(EglRenderer.FrameListener frameListener, float f10) {
        this.eglRenderer.addFrameListener(frameListener, f10);
    }

    public void init(EglBase.Context context, RendererCommon.RendererEvents rendererEvents, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        ThreadUtils.checkIsOnMainThread();
        this.rendererEvents = rendererEvents;
        this.rotatedFrameWidth = 0;
        this.rotatedFrameHeight = 0;
        this.mSharedContext = context;
        this.mConfigAttributes = iArr;
        this.mDrawer = glDrawer;
        if (this.isUseDirectSurface) {
            this.eglRenderer.SetRendererEvents(this);
            return;
        }
        Logging.d(TAG, "Initialize the EGL Render");
        this.eglRenderer.init(context, this, iArr, glDrawer);
        this.isInit = true;
    }

    public void setScalingType(RendererCommon.ScalingType scalingType, RendererCommon.ScalingType scalingType2) {
        ThreadUtils.checkIsOnMainThread();
        this.videoLayoutMeasure.setScalingType(scalingType, scalingType2);
        requestLayout();
    }

    public SurfaceViewRenderer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.videoLayoutMeasure = new RendererCommon.VideoLayoutMeasure();
        this.uiThreadTestsEnable = false;
        String resourceName = getResourceName();
        this.resourceName = resourceName;
        this.eglRenderer = new SurfaceEglRenderer(resourceName);
        getHolder().addCallback(this);
    }
}
