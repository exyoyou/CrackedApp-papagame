package com.haima.hmcp.input.listener;

/* JADX INFO: loaded from: classes5.dex */
public interface HMInputCallback {
    void onClockDiffChange(long j10, int i10);

    void onConnect(boolean z10);

    void onDisconnect(int i10, String str, boolean z10);

    void onFirstDiffClockSuccess(long j10);

    void onHeartBeatSuccess();

    void onTextMessage(String str);
}
