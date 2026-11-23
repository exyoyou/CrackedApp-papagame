package com.haima.hmcp.listeners;

/* JADX INFO: loaded from: classes5.dex */
public interface HmcpVideoPlayerListener {
    void onError(int i10, int i11);

    void onFirstFrameArrival();

    void onPlayerRelease();

    void onPlayerStop();
}
