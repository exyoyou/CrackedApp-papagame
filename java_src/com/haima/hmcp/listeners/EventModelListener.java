package com.haima.hmcp.listeners;

import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.haima.hmcp.enums.ScreenOrientation;

/* JADX INFO: loaded from: classes5.dex */
public interface EventModelListener {
    boolean isInterceptKey(int i10);

    boolean onArmMouseHandleTouchEvent(MotionEvent motionEvent);

    boolean onBattleHandleEvent(int i10, KeyEvent keyEvent);

    boolean onEventSend(String str);

    String onGamePadNumInBattle(String str);

    void onGamePadStart(InputDevice inputDevice);

    void onInputDeviceSend(int i10, int i11);

    int onInputType();

    void onKeyboardEvent(String str, int i10);

    void onKeyboardEvent(String str, String str2);

    void onKeyboardEvent(String str, String str2, String str3);

    int onKeyboardMode();

    boolean onListenHover();

    void onMouseBackEvent();

    void onMouseInputEvent(float f10, float f11);

    boolean onNativeDpadGame();

    int onPlayState();

    void onProcessMouseMove(MotionEvent motionEvent, int i10);

    boolean onProcessMouseMove(KeyEvent keyEvent);

    void onPutDownEventMap(String str, String str2);

    void onRemoveDownEventMap(String str);

    ScreenOrientation onScreenOrientation();

    void onSightBeadButtonClick();
}
