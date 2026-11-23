package com.bytedance.android.live.base.api.outer;

/* JADX INFO: loaded from: classes9.dex */
public interface ILiveStatusListener {
    void onError(String str);

    void onFirstFrame();

    void onLiveStatusChange(boolean z10);

    void onPrepare();

    void onRoomInvalid();

    void onVideoSizeChanged(int i10, int i11);
}
