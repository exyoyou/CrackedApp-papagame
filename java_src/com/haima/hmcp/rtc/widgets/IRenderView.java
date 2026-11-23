package com.haima.hmcp.rtc.widgets;

import com.haima.hmcp.listeners.FrameCaptureCallback;
import com.haima.hmcp.listeners.IRenderViewBase;
import org.hmwebrtc.EglRenderer;

/* JADX INFO: loaded from: classes5.dex */
public interface IRenderView extends IRenderViewBase {
    boolean enablePandaMode(boolean z10);

    void frameCapture(FrameCaptureCallback frameCaptureCallback);

    void requestLayout();

    void setFrameProxy(EglRenderer.FrameCallback frameCallback);

    void setVideoSize(int i10, int i11);
}
