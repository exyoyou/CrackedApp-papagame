package com.haima.hmcp.rtc.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import com.haima.hmcp.listeners.FrameCaptureCallback;
import com.haima.hmcp.rtmp.widgets.MeasureHelper;
import com.haima.hmcp.utils.LogUtils;
import org.hmwebrtc.EglRenderer;
import org.hmwebrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes5.dex */
public class RtcSurfaceViewRenderer extends SurfaceViewRenderer implements IRenderView {
    private final String TAG;
    private MeasureHelper mMeasureHelper;
    private int mRotateDegree;

    public RtcSurfaceViewRenderer(Context context) {
        super(context);
        this.TAG = RtcSurfaceViewRenderer.class.getSimpleName();
        initView();
    }

    private void initView() {
        this.mMeasureHelper = new MeasureHelper(this);
        this.mRotateDegree = 0;
    }

    @Override // com.haima.hmcp.rtc.widgets.IRenderView
    public boolean enablePandaMode(boolean z10) {
        return setBlackWhiteDisplay(z10);
    }

    @Override // com.haima.hmcp.rtc.widgets.IRenderView
    public void frameCapture(final FrameCaptureCallback frameCaptureCallback) {
        if (frameCaptureCallback == null) {
            LogUtils.d(this.TAG, "callback is null when getBitmp from RtcSurfaceViewRenderer");
        } else {
            addFrameListener(new EglRenderer.FrameListener() { // from class: com.haima.hmcp.rtc.widgets.RtcSurfaceViewRenderer.1
                @Override // org.hmwebrtc.EglRenderer.FrameListener
                public void onFrame(Bitmap bitmap) {
                    frameCaptureCallback.onFrameCapture(bitmap);
                }
            }, 1.0f);
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
        if (this.mRotateDegree == 90) {
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
        if (this.mRotateDegree == 90) {
            return 1.0f - ((((f10 - x10) / point.x) * 100.0f) / 100.0f);
        }
        int i10 = point.y;
        return (((i10 - (f10 - (((x10 + right) - i10) / 2.0f))) / i10) * 100.0f) / 100.0f;
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public View getView() {
        return this;
    }

    @Override // org.hmwebrtc.SurfaceViewRenderer, android.view.SurfaceView, android.view.View
    protected void onMeasure(int i10, int i11) {
        this.mMeasureHelper.doMeasure(i10, i11);
        if (this.mRotateDegree == 90) {
            setMeasuredDimension(this.mMeasureHelper.getMeasuredHeight(), this.mMeasureHelper.getMeasuredWidth());
        } else {
            setMeasuredDimension(this.mMeasureHelper.getMeasuredWidth(), this.mMeasureHelper.getMeasuredHeight());
        }
    }

    @Override // android.view.View, com.haima.hmcp.rtc.widgets.IRenderView
    public void requestLayout() {
        super.requestLayout();
    }

    @Override // com.haima.hmcp.rtc.widgets.IRenderView
    public void setFrameProxy(EglRenderer.FrameCallback frameCallback) {
        setFrameCallback(frameCallback);
    }

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public void setVideoRotation(int i10) {
        LogUtils.i("", "SurfaceView doesn't support rotation (" + i10 + ")!\n");
        setRotateLayout(i10);
        this.mRotateDegree = i10;
        this.mMeasureHelper.setVideoRotation(i10);
        setDsVideoRotation(i10);
    }

    @Override // com.haima.hmcp.rtc.widgets.IRenderView
    public void setVideoSize(int i10, int i11) {
        if (i10 > 0 && i11 > 0) {
            this.mMeasureHelper.setVideoSize(i10, i11);
            requestLayout();
        }
        setDsVideoSize(i10, i11);
    }

    public RtcSurfaceViewRenderer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = RtcSurfaceViewRenderer.class.getSimpleName();
        initView();
    }
}
