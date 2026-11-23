package com.haima.hmcp.listeners;

import com.haima.hmcp.enums.ScreenOrientation;

/* JADX INFO: loaded from: classes5.dex */
public interface LocalKeyboardModelListener {
    void onCallbackLocalKeyboardShow();

    void onCheckImeType(GetCloudIMECallback getCloudIMECallback);

    void onCheckImeTypeFinished(GetCloudIMECallback getCloudIMECallback);

    void onInputHide();

    void onKeyboardEvent(String str, int i10);

    void onKeyboardEvent(String str, String str2);

    void onRegisterKeyboardListener();

    void onScreenOrientationForKeyboard(ScreenOrientation screenOrientation);

    void onSendKeyboardHeightPercent();

    void onSendText(String str);
}
