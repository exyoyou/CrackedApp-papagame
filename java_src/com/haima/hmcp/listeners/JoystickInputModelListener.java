package com.haima.hmcp.listeners;

import android.view.InputDevice;
import android.view.KeyEvent;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.enums.ScreenOrientation;

/* JADX INFO: loaded from: classes5.dex */
public interface JoystickInputModelListener {
    void onCacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord);

    boolean onEventSend(String str);

    void onGamePadModeDpadEvent(KeyEvent keyEvent, int i10);

    String onGamePadNumInBattle(String str);

    void onGamePadStart(InputDevice inputDevice);

    int onInputType();

    void onMappingProcessKey(KeyEvent keyEvent, int i10);

    boolean onMorePointIsRun();

    void onMouseInputEvent(float f10, float f11);

    float onMoveSpeed();

    void onProcessDpadKey(KeyEvent keyEvent);

    boolean onProcessKey2(KeyEvent keyEvent, int i10);

    void onProcessMouseMove(KeyEvent keyEvent);

    void onPutDownEventMap(String str, String str2);

    void onPutMapModeEvent(String str, String str2);

    void onRemoveDownEventMap(String str);

    void onRemoveMapModeEvent(String str);

    ScreenOrientation onScreenOrientation();

    boolean onTrackBallRMove();

    PointCoord onTrackBallRZ();
}
