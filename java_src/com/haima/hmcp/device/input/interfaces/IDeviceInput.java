package com.haima.hmcp.device.input.interfaces;

import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.business.IWebSocket;

/* JADX INFO: loaded from: classes5.dex */
public interface IDeviceInput extends IDeviceOperate {
    int getCurrentInputMode();

    void onDestroy();

    void setButtonMapping(ButtonMappings buttonMappings);

    boolean setButtonMappingMode(boolean z10, int i10);

    void setWebSocket(IWebSocket iWebSocket);
}
