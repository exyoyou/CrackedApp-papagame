package com.haima.hmcp.listeners;

/* JADX INFO: loaded from: classes5.dex */
public interface HmcpUIListener {
    void CloudServiceState(int i10);

    void HmcpPlayerStatus(String str);

    void onExitQueue();

    void onSceneChanged(String str);
}
