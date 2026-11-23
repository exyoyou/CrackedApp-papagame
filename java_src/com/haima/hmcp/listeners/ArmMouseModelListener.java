package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.PointCoord;

/* JADX INFO: loaded from: classes5.dex */
public interface ArmMouseModelListener {
    PointCoord onGetFireCoord();

    void onInputDeviceSend(int i10, int i11);

    void onSendMotionEventContent(int i10, String str);

    void onSendSceneMessage(String str, String str2);
}
