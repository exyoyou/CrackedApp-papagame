package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.PointCoord;

/* JADX INFO: loaded from: classes5.dex */
public interface KeyboardInputModelListener {
    void onCacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord);

    void onCacheModeMapEvent2(int i10, float f10, float f11, int i11);

    void onCleanFnModeMapEvent(int i10, boolean z10);

    boolean onEventSend(String str);

    boolean onMorePointRun();

    boolean onSendMorePointEvent(PointCoord pointCoord, int i10);

    void onSightBeadButtonClick();
}
