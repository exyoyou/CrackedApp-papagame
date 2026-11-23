package com.haima.hmcp.rtmp.widgets;

/* JADX INFO: loaded from: classes5.dex */
public interface IHmcpIJKVideoView {
    boolean isPlaying();

    void release();

    void setHmcpIJKVideoViewListener(HmcpIJKVideoViewListener hmcpIJKVideoViewListener);

    void startPlay(String str, String str2);

    void stopPlay();

    void stopPlay(boolean z10, boolean z11);
}
