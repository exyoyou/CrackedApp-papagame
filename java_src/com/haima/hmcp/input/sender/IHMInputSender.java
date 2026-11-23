package com.haima.hmcp.input.sender;

import com.haima.hmcp.input.HMInputConfig;
import com.haima.hmcp.input.listener.HMInputCallback;

/* JADX INFO: loaded from: classes5.dex */
public interface IHMInputSender {
    void connect();

    void disConnected();

    boolean isConnected();

    boolean sendMessage(String str, boolean z10);

    void setCallback(HMInputCallback hMInputCallback);

    void setConfig(HMInputConfig hMInputConfig);
}
