package com.aggmoread.sdk.client;

/* JADX INFO: loaded from: classes7.dex */
public interface AMAdMediaListener {
    void onVideoClicked();

    void onVideoCompleted();

    void onVideoError(AMError aMError);

    void onVideoInit();

    void onVideoLoaded(int i10);

    void onVideoLoading();

    void onVideoPause();

    void onVideoReady();

    void onVideoResume();

    void onVideoStart();

    void onVideoStop();
}
