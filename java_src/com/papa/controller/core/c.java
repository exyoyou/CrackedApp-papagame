package com.papa.controller.core;

/* JADX INFO: loaded from: classes2.dex */
public interface c {
    void onKeyDown(int i10, PadKeyEvent padKeyEvent);

    void onKeyPressure(int i10, float f10, PadKeyEvent padKeyEvent);

    void onKeyUp(int i10, PadKeyEvent padKeyEvent);

    void onLeftStick(float f10, float f11, PadMotionEvent padMotionEvent);

    void onRightStick(float f10, float f11, PadMotionEvent padMotionEvent);

    void onStateEvent(PadStateEvent padStateEvent);
}
