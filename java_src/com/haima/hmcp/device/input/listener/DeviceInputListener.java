package com.haima.hmcp.device.input.listener;

import android.content.Context;
import android.view.ViewGroup;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.listeners.IRenderViewBase;

/* JADX INFO: loaded from: classes5.dex */
public interface DeviceInputListener {
    ScreenOrientation getOrientation();

    IRenderViewBase getRenderView();

    Context getViewContext();

    ViewGroup getViewGroup();

    boolean onDeviceInputEvent(String str, boolean z10);

    void onInputDevice(int i10, int i11);

    void sendSceneUSBMouseMessage(float f10, int i10);
}
