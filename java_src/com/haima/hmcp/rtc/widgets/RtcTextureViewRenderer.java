package com.haima.hmcp.rtc.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.FrameCaptureCallback;
import com.haima.hmcp.rtmp.widgets.MeasureHelper;
import com.haima.hmcp.utils.LogUtils;
import org.hmwebrtc.EglRenderer;
import org.hmwebrtc.TextureViewRenderer;

/* JADX INFO: loaded from: classes5.dex */
public class RtcTextureViewRenderer extends TextureViewRenderer implements IRenderView {
    private final String TAG;
    private MeasureHelper mMeasureHelper;

    public RtcTextureViewRenderer(Context context) {
        super(context);
        this.TAG = RtcTextureViewRenderer.class.getSimpleName();
        initView();
    }

    private void initView() {
        this.mMeasureHelper = new MeasureHelper(this);
    }

    @Override // com.haima.hmcp.rtc.widgets.IRenderView
    public boolean enablePandaMode(boolean z10) {
        return setBlackWhiteDisplay(z10);
    }

    @Override // com.haima.hmcp.rtc.widgets.IRenderView
    public void frameCapture(FrameCaptureCallback frameCaptureCallback) {
        if (frameCaptureCallback == null) {
            LogUtils.d(this.TAG, "callback is null when getBitmp from RtcSurfaceViewRenderer");
        } else {
            frameCaptureCallback.onFrameCapture(getBitmap());
        }
    }

    @Override // android.view.TextureView
    public Bitmap getBitmap() {
        try {
            return super.getBitmap();
        } catch (Throwable unused) {
            LogUtils.e(this.TAG, "getBitmap cause OOMException when getBitmap from RtcTextureViewRenderer");
            CountlyUtil.recordErrorEvent("OOMException occurred when getBitmap from RtcTextureViewRenderer");
            return null;
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

    @Override // com.haima.hmcp.listeners.IRenderViewBase
    public View getView() {
        return this;
    }

    @Override // org.hmwebrtc.TextureViewRenderer, android.view.View
    protected void onMeasure(int i10, int i11) {
        this.mMeasureHelper.doMeasure(i10, i11);
        setMeasuredDimension(this.mMeasureHelper.getMeasuredWidth(), this.mMeasureHelper.getMeasuredHeight());
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
        this.mMeasureHelper.setVideoRotation(i10);
        setRotation(i10);
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

    public RtcTextureViewRenderer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = RtcTextureViewRenderer.class.getSimpleName();
        initView();
    }
}
