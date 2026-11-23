package com.bytedance.sdk.openadsdk.mediation.bridge;

/* JADX INFO: loaded from: classes9.dex */
public interface IMediationCustomizeVideo {
    String getVideoUrl();

    void reportVideoAutoStart();

    void reportVideoBreak(long j10);

    void reportVideoContinue(long j10);

    void reportVideoError(long j10, int i10, int i11);

    void reportVideoFinish();

    void reportVideoPause(long j10);

    void reportVideoStart();

    void reportVideoStartError(int i10, int i11);
}
