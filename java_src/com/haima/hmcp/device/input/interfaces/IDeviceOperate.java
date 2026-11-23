package com.haima.hmcp.device.input.interfaces;

import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes5.dex */
public interface IDeviceOperate {
    boolean onGenericMotionEvent(MotionEvent motionEvent);

    boolean onKeyDown(int i10, KeyEvent keyEvent);

    boolean onKeyUp(int i10, KeyEvent keyEvent);
}
