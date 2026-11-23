package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.enums.ScreenOrientation;

/* JADX INFO: loaded from: classes5.dex */
public interface DpadInputModelListener {
    void onCacheModeMapEvent(int i10, float f10, float f11, PointCoord pointCoord);

    boolean onIsNativeDpadGame();

    PointCoord onMapPointCoord(int i10);

    PointCoord onMappingEvent(int i10);

    String onMappingVersion();

    ScreenOrientation onScreenOrientation();

    void onSendKeyboardEvent(String str, int i10);

    void onSendKeyboardEvent(String str, String str2);

    void onSendMotionEvent(int i10, FPoint fPoint);
}
