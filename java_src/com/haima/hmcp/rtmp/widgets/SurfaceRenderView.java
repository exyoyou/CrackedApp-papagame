package com.haima.hmcp.rtmp.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.haima.hmcp.listeners.FrameCaptureCallback;
import com.haima.hmcp.utils.LogUtils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import tv.haima.ijk.media.player.IMediaPlayer;
import tv.haima.ijk.media.player.ISurfaceTextureHolder;
import tv.haima.ijk.media.player.ijkFrameCaptureCallback;

/* JADX INFO: loaded from: classes5.dex */
public class SurfaceRenderView extends SurfaceView implements IRenderView {
    private static final String TAG = "SurfaceRenderView";
    private MeasureHelper mMeasureHelper;
    private IMediaPlayer mMediaPlayer;
    private SurfaceCallback mSurfaceCallback;

    private static final class InternalSurfaceHolder implements IRenderView.ISurfaceHolder {
        private SurfaceHolder mSurfaceHolder;
        private SurfaceRenderView mSurfaceView;

        public InternalSurfaceHolder(@NonNull SurfaceRenderView surfaceRenderView, @Nullable SurfaceHolder surfaceHolder) {
            this.mSurfaceView = surfaceRenderView;
            this.mSurfaceHolder = surfaceHolder;
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        public void bindToMediaPlayer(IMediaPlayer iMediaPlayer, SurfaceTexture surfaceTexture) {
            if (iMediaPlayer != null) {
                if (iMediaPlayer instanceof ISurfaceTextureHolder) {
                    ((ISurfaceTextureHolder) iMediaPlayer).setSurfaceTexture(null);
                }
                iMediaPlayer.setDisplay(this.mSurfaceHolder);
                this.mSurfaceView.setMediaPlayer(iMediaPlayer);
            }
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @NonNull
        public IRenderView getRenderView() {
            return this.mSurfaceView;
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @Nullable
        public SurfaceHolder getSurfaceHolder() {
            return this.mSurfaceHolder;
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @Nullable
        public SurfaceTexture getSurfaceTexture() {
            return null;
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.ISurfaceHolder
        @Nullable
        public Surface openSurface() {
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder == null) {
                return null;
            }
            return surfaceHolder.getSurface();
        }
    }

    private static final class SurfaceCallback implements SurfaceHolder.Callback {
        private int mFormat;
        private int mHeight;
        private boolean mIsFormatChanged;
        private Map<IRenderView.IRenderCallback, Object> mRenderCallbackMap = new ConcurrentHashMap();
        private SurfaceHolder mSurfaceHolder;
        private WeakReference<SurfaceRenderView> mWeakSurfaceView;
        private int mWidth;

        public SurfaceCallback(@NonNull SurfaceRenderView surfaceRenderView) {
            this.mWeakSurfaceView = new WeakReference<>(surfaceRenderView);
        }

        public void addRenderCallback(@NonNull IRenderView.IRenderCallback iRenderCallback) {
            InternalSurfaceHolder internalSurfaceHolder;
            this.mRenderCallbackMap.put(iRenderCallback, iRenderCallback);
            if (this.mSurfaceHolder != null) {
                internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakSurfaceView.get(), this.mSurfaceHolder);
                iRenderCallback.onSurfaceCreated(internalSurfaceHolder, this.mWidth, this.mHeight);
            } else {
                internalSurfaceHolder = null;
            }
            if (this.mIsFormatChanged) {
                if (internalSurfaceHolder == null) {
                    internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakSurfaceView.get(), this.mSurfaceHolder);
                }
                iRenderCallback.onSurfaceChanged(internalSurfaceHolder, this.mFormat, this.mWidth, this.mHeight);
            }
        }

        public void removeRenderCallback(@NonNull IRenderView.IRenderCallback iRenderCallback) {
            this.mRenderCallbackMap.remove(iRenderCallback);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            this.mSurfaceHolder = surfaceHolder;
            this.mIsFormatChanged = true;
            this.mFormat = i10;
            this.mWidth = i11;
            this.mHeight = i12;
            InternalSurfaceHolder internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakSurfaceView.get(), this.mSurfaceHolder);
            Iterator<IRenderView.IRenderCallback> it2 = this.mRenderCallbackMap.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().onSurfaceChanged(internalSurfaceHolder, i10, i11, i12);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            this.mSurfaceHolder = surfaceHolder;
            this.mIsFormatChanged = false;
            this.mFormat = 0;
            this.mWidth = 0;
            this.mHeight = 0;
            InternalSurfaceHolder internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakSurfaceView.get(), this.mSurfaceHolder);
            Iterator<IRenderView.IRenderCallback> it2 = this.mRenderCallbackMap.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().onSurfaceCreated(internalSurfaceHolder, 0, 0);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            this.mSurfaceHolder = null;
            this.mIsFormatChanged = false;
            this.mFormat = 0;
            this.mWidth = 0;
            this.mHeight = 0;
            InternalSurfaceHolder internalSurfaceHolder = new InternalSurfaceHolder(this.mWeakSurfaceView.get(), this.mSurfaceHolder);
            Iterator<IRenderView.IRenderCallback> it2 = this.mRenderCallbackMap.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().onSurfaceDestroyed(internalSurfaceHolder);
            }
        }
    }

    public SurfaceRenderView(Context context) {
        super(context);
        initView(context);
    }

    private void initView(Context context) {
        this.mMeasureHelper = new MeasureHelper(this);
        this.mSurfaceCallback = new SurfaceCallback(this);
        getHolder().addCallback(this.mSurfaceCallback);
        getHolder().setType(0);
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public void addRenderCallback(IRenderView.IRenderCallback iRenderCallback) {
        this.mSurfaceCallback.addRenderCallback(iRenderCallback);
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public void frameCapture(final FrameCaptureCallback frameCaptureCallback) {
        LogUtils.d(TAG, "SurfaceRenderView not support screen shot");
        if (frameCaptureCallback == null) {
            LogUtils.d(TAG, "callback is null when getBitmp from RtmpSurfaceViewRenderer");
            return;
        }
        IMediaPlayer iMediaPlayer = this.mMediaPlayer;
        if (iMediaPlayer != null) {
            iMediaPlayer.frameCapture(new ijkFrameCaptureCallback() { // from class: com.haima.hmcp.rtmp.widgets.SurfaceRenderView.1
                @Override // tv.haima.ijk.media.player.ijkFrameCaptureCallback
                public void onFrameCapture(Bitmap bitmap) {
                    frameCaptureCallback.onFrameCapture(bitmap);
                }
            });
        }
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
        int i10;
        float f12;
        Point point = new Point();
        point.x = getMeasuredWidth();
        point.y = getMeasuredHeight();
        getX();
        float y10 = getY();
        float bottom = getBottom();
        getRight();
        if (this.mMeasureHelper.getVideoRotationDegree() == 90) {
            f12 = f11 - y10;
            i10 = point.y;
        } else {
            i10 = point.x;
            f12 = f11 - (((y10 + bottom) - i10) / 2.0f);
        }
        return ((f12 / i10) * 100.0f) / 100.0f;
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
        if (this.mMeasureHelper.getVideoRotationDegree() == 90) {
            return 1.0f - ((((f10 - x10) / point.x) * 100.0f) / 100.0f);
        }
        int i10 = point.y;
        return (((i10 - (f10 - (((x10 + right) - i10) / 2.0f))) / i10) * 100.0f) / 100.0f;
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public View getView() {
        return this;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(SurfaceRenderView.class.getName());
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(SurfaceRenderView.class.getName());
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i10, int i11) {
        this.mMeasureHelper.doMeasure(i10, i11);
        if (this.mMeasureHelper.getVideoRotationDegree() == 90 || this.mMeasureHelper.getVideoRotationDegree() == 270) {
            setMeasuredDimension(this.mMeasureHelper.getMeasuredHeight(), this.mMeasureHelper.getMeasuredWidth());
        } else {
            setMeasuredDimension(this.mMeasureHelper.getMeasuredWidth(), this.mMeasureHelper.getMeasuredHeight());
        }
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

    public void setMediaPlayer(IMediaPlayer iMediaPlayer) {
        this.mMediaPlayer = iMediaPlayer;
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public void setVideoRotation(int i10) {
        this.mMeasureHelper.setVideoRotation(i10);
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
        getHolder().setFixedSize(i10, i11);
        requestLayout();
    }

    @Override // com.haima.hmcp.rtmp.widgets.IRenderView
    public boolean shouldWaitForResize() {
        return true;
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView(context);
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        initView(context);
    }

    @TargetApi(21)
    public SurfaceRenderView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        initView(context);
    }
}
