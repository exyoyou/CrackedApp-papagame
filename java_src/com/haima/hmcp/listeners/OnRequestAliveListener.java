package com.haima.hmcp.listeners;

/* JADX INFO: loaded from: classes5.dex */
public interface OnRequestAliveListener {
    void onKeepAliveTimeUp();

    void onRequestAliveResult(boolean z10, String str);

    void onStopAliveResult(boolean z10, String str);
}
