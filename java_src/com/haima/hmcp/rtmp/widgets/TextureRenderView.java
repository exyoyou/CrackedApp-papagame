package com.haima.hmcp.rtmp.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.FrameCaptureCallback;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import tv.haima.ijk.media.player.IMediaPlayer;
import tv.haima.ijk.media.player.ISurfaceTextureHolder;
import tv.haima.ijk.media.player.ISurfaceTextureHost;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(14)
public class TextureRenderView extends TextureView implements IRenderView {
    private static final String TAG = "TextureRenderView";
    private boolean hasSurface;
    private AbsIjkVideoView ijkVideoView;
    private MeasureHelper mMeasureHelper;
    private SurfaceCallback mSurfaceCallback;

    private static final class InternalSurfaceHolder implements IRenderView.ISurfaceHolder {
        private SurfaceTexture mSurfaceTexture;
        private ISurfaceTextureHost mSurfaceTextureHost;
        private TextureRenderView mTextureView;

        public InternalSurfaceHolder(@NonNull TextureRenderView textureRenderView, @Nullable SurfaceTexture surfaceTexture, @NonNull ISurfaceTextureHost iSurfaceTextureHost) {
            this.mTextureView = textureRenderView;
            this.mSurfaceTexture = surfaceTexture;
            this.mSurfaceTextureHost = iSurfaceTextureHost;
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @TargetApi(16)
        public void bindToMediaPlayer(IMediaPlayer iMediaPlayer, SurfaceTexture surfaceTexture) {
            if (iMediaPlayer == null) {
                return;
            }
            if (iMediaPlayer instanceof ISurfaceTextureHolder) {
                ISurfaceTextureHolder iSurfaceTextureHolder = (ISurfaceTextureHolder) iMediaPlayer;
                SurfaceTexture surfaceTexture2 = iSurfaceTextureHolder.getSurfaceTexture();
                if (surfaceTexture2 != null) {
                    this.mTextureView.setSurfaceTexture(surfaceTexture2);
                    return;
                } else {
                    iSurfaceTextureHolder.setSurfaceTexture(this.mSurfaceTexture);
                    iSurfaceTextureHolder.setSurfaceTextureHost(this.mTextureView.mSurfaceCallback);
                    return;
                }
            }
            if (this.mTextureView.getCloseStream()) {
                iMediaPlayer.setSurface(openSurface());
                return;
            }
            if (!this.mTextureView.hasSurface) {
                Surface surfaceOpenSurface = openSurface();
                this.mTextureView.hasSurface = true;
                iMediaPlayer.setSurface(surfaceOpenSurface);
            } else if (surfaceTexture == null) {
                iMediaPlayer.setSurface(openSurface());
            } else {
                this.mSurfaceTexture = surfaceTexture;
                this.mTextureView.setSurfaceTexture(surfaceTexture);
            }
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @NonNull
        public IRenderView getRenderView() {
            return this.mTextureView;
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @Nullable
        public SurfaceHolder getSurfaceHolder() {
            return null;
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @Nullable
        public SurfaceTexture getSurfaceTexture() {
            return this.mSurfaceTexture;
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @Nullable
        public Surface openSurface() {
            if (this.mSurfaceTexture == null) {
                return null;
            }
            return new Surface(this.mSurfaceTexture);
        }
    }

    private static final class SurfaceCallback implements TextureView.SurfaceTextureListener, ISurfaceTextureHost {
        private int mHeight;
        private boolean mIsFormatChanged;
        private SurfaceTexture mSurfaceTexture;
        private WeakReference<TextureRenderView> mWeakRenderView;
        private int mWidth;
        private boolean mWillDetachFromWindow = false;
        private boolean mDidDetachFromWindow = false;
        private Map<IRenderView.IRenderCallback, Object> mRenderCallbackMap = new ConcurrentHashMap();

        public SurfaceCallback(@NonNull TextureRenderView textureRenderView) {
            this.mWeakRenderView = new WeakReference<>(textureRenderView);
        }

        public void addRenderCallback(@NonNull IRenderView.IRenderCallback iRenderCallback) {
            InternalSurfaceHolder internalSurfaceHolder;
            this.mRenderCallbackMap.put(iRenderCallback, iRenderCallback);
            if (this.mSurfaceTexture != null) {
                internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakRenderView.get(), this.mSurfaceTexture, this);
                iRenderCallback.onSurfaceCreated(internalSurfaceHolder, this.mWidth, this.mHeight);
            } else {
                internalSurfaceHolder = null;
            }
            if (this.mIsFormatChanged) {
                if (internalSurfaceHolder == null) {
                    internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakRenderView.get(), this.mSurfaceTexture, this);
                }
                iRenderCallback.onSurfaceChanged(internalSurfaceHolder, 0, this.mWidth, this.mHeight);
            }
        }

        public void didDetachFromWindow() {
            LogUtils.d(TextureRenderView.TAG, "didDetachFromWindow()");
            this.mDidDetachFromWindow = true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            this.mSurfaceTexture = surfaceTexture;
            this.mIsFormatChanged = false;
            this.mWidth = 0;
            this.mHeight = 0;
            InternalSurfaceHolder internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakRenderView.get(), surfaceTexture, this);
            Iterator<IRenderView.IRenderCallback> it2 = this.mRenderCallbackMap.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().onSurfaceCreated(internalSurfaceHolder, 0, 0);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.mSurfaceTexture = surfaceTexture;
            this.mIsFormatChanged = false;
            this.mWidth = 0;
            this.mHeight = 0;
            this.mWeakRenderView.get().setIjkTexture(surfaceTexture);
            InternalSurfaceHolder internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakRenderView.get(), surfaceTexture, this);
            Iterator<IRenderView.IRenderCallback> it2 = this.mRenderCallbackMap.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().onSurfaceDestroyed(internalSurfaceHolder);
            }
            return this.mWeakRenderView.get().getCloseStream();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            this.mSurfaceTexture = surfaceTexture;
            this.mIsFormatChanged = true;
            this.mWidth = i10;
            this.mHeight = i11;
            InternalSurfaceHolder internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakRenderView.get(), surfaceTexture, this);
            Iterator<IRenderView.IRenderCallback> it2 = this.mRenderCallbackMap.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().onSurfaceChanged(internalSurfaceHolder, 0, i10, i11);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // tv.haima.ijk.media.player.ISurfaceTextureHost
        public void releaseSurfaceTexture(SurfaceTexture surfaceTexture) {
            if (surfaceTexture == null) {
                LogUtils.d(TextureRenderView.TAG, "releaseSurfaceTexture: null");
                return;
            }
            if (this.mDidDetachFromWindow) {
                if (surfaceTexture == this.mSurfaceTexture) {
                    LogUtils.d(TextureRenderView.TAG, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView");
                    return;
                } else {
                    LogUtils.d(TextureRenderView.TAG, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture");
                    surfaceTexture.release();
                    return;
                }
            }
            if (this.mWillDetachFromWindow) {
                if (surfaceTexture == this.mSurfaceTexture) {
                    LogUtils.d(TextureRenderView.TAG, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView");
                    return;
                } else {
                    LogUtils.d(TextureRenderView.TAG, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture");
                    surfaceTexture.release();
                    return;
                }
            }
            if (surfaceTexture == this.mSurfaceTexture) {
                LogUtils.d(TextureRenderView.TAG, "releaseSurfaceTexture: alive: will released by TextureView");
            } else {
                LogUtils.d(TextureRenderView.TAG, "releaseSurfaceTexture: alive: release different SurfaceTexture");
                surfaceTexture.release();
            }
        }

        public void removeRenderCallback(@NonNull IRenderView.IRenderCallback iRenderCallback) {
            this.mRenderCallbackMap.remove(iRenderCallback);
        }

        public void willDetachFromWindow() {
            LogUtils.d(TextureRenderView.TAG, "willDetachFromWindow()");
            this.mWillDetachFromWindow = true;
        }
    }

    public TextureRenderView(Context context, AbsIjkVideoView absIjkVideoView) {
        super(context);
        this.hasSurface = false;
        this.ijkVideoView = absIjkVideoView;
        initView(context);
    }

    private void initView(Context context) {
        this.mMeasureHelper = new MeasureHelper(this);
        SurfaceCallback surfaceCallback = new SurfaceCallback(this);
        this.mSurfaceCallback = surfaceCallback;
        setSurfaceTextureListener(surfaceCallback);
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public void addRenderCallback(IRenderView.IRenderCallback iRenderCallback) {
        this.mSurfaceCallback.addRenderCallback(iRenderCallback);
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public void frameCapture(FrameCaptureCallback frameCaptureCallback) {
        if (frameCaptureCallback == null) {
            LogUtils.d(TAG, "callback is null when getBitmp from TextureRenderView");
        } else {
            frameCaptureCallback.onFrameCapture(getBitmap());
        }
    }

    @Override // android.view.TextureView
    public Bitmap getBitmap() {
        try {
            return super.getBitmap();
        } catch (Throwable unused) {
            LogUtils.e(TAG, "getBitmap cause OOMException when getBitmap from TextureRenderView");
            CountlyUtil.recordErrorEvent("OOMException occurred when getBitmap from TextureRenderView");
            return null;
        }
    }

    public boolean getCloseStream() {
        return this.ijkVideoView.getCloseStream();
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public float getLandscapeX(float f10, float f11) {
        Point point = new Point();
        point.x = getMeasuredWidth();
        point.y = getMeasuredHeight();
        float x10 = getX();
        getY();
        getBottom();
        getRight();
        return (((f10 - x10) / point.x) * 100.0f) / 100.0f;
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public float getLandscapeY(float f10, float f11) {
        Point point = new Point();
        point.x = getMeasuredWidth();
        point.y = getMeasuredHeight();
        getX();
        float y10 = getY();
        getBottom();
        getRight();
        return (((f11 - y10) / point.y) * 100.0f) / 100.0f;
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public float getPortaitX(float f10, float f11) {
        Point point = new Point();
        point.x = getMeasuredWidth();
        point.y = getMeasuredHeight();
        getX();
        float y10 = getY();
        float bottom = getBottom();
        getRight();
        int i10 = point.x;
        return (((f11 - (((y10 + bottom) - i10) / 2.0f)) / i10) * 100.0f) / 100.0f;
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public float getPortaitY(float f10, float f11) {
        Point point = new Point();
        point.x = getMeasuredWidth();
        point.y = getMeasuredHeight();
        float x10 = getX();
        getY();
        getBottom();
        float right = getRight();
        int i10 = point.y;
        return (((i10 - (f10 - (((x10 + right) - i10) / 2.0f))) / i10) * 100.0f) / 100.0f;
    }

    public IRenderView.ISurfaceHolder getSurfaceHolder() {
        return new InternalSurfaceHolder(this, this.mSurfaceCallback.mSurfaceTexture, this.mSurfaceCallback);
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.mSurfaceCallback.willDetachFromWindow();
        super.onDetachedFromWindow();
        this.mSurfaceCallback.didDetachFromWindow();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TextureRenderView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TextureRenderView.class.getName());
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        this.mMeasureHelper.doMeasure(i10, i11);
        setMeasuredDimension(this.mMeasureHelper.getMeasuredWidth(), this.mMeasureHelper.getMeasuredHeight());
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public void removeRenderCallback(IRenderView.IRenderCallback iRenderCallback) {
        this.mSurfaceCallback.removeRenderCallback(iRenderCallback);
    }

    @Override // android.view.View, com.haima.hmcp.rtmp.widgets.IRenderView
    public void requestLayout() {
        super.requestLayout();
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public void setAspectRatio(int i10) {
        this.mMeasureHelper.setAspectRatio(i10);
        requestLayout();
    }

    public void setIjkTexture(SurfaceTexture surfaceTexture) {
        this.ijkVideoView.setSurfaceTexture(surfaceTexture);
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public void setVideoRotation(int i10) {
        this.mMeasureHelper.setVideoRotation(i10);
        setRotation(i10);
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public void setVideoSampleAspectRatio(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        this.mMeasureHelper.setVideoSampleAspectRatio(i10, i11);
        requestLayout();
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public void setVideoSize(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        this.mMeasureHelper.setVideoSize(i10, i11);
        requestLayout();
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public boolean shouldWaitForResize() {
        return false;
    }

    public TextureRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.hasSurface = false;
        initView(context);
    }

    public TextureRenderView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.hasSurface = false;
        initView(context);
    }

    @TargetApi(21)
    public TextureRenderView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.hasSurface = false;
        initView(context);
    }
}
