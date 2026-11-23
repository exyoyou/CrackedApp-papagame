package com.bykv.vk.component.ttvideo;

import com.bykv.vk.component.ttvideo.utils.Error;

/* JADX INFO: loaded from: classes9.dex */
public interface VideoEngineCallback {
    public static final int AFTER_FIRST_FRAME = 1;
    public static final int BEFORE_FIRST_FRAME = 0;
    public static final int BUFFERING_TYPE_DECODER = 1;
    public static final int BUFFERING_TYPE_NET = 0;

    void onBufferEnd(int i10);

    void onBufferStart(int i10, int i11, int i12);

    void onBufferingUpdate(TTVideoEngine tTVideoEngine, int i10);

    void onCompletion(TTVideoEngine tTVideoEngine);

    void onError(Error error);

    void onLoadStateChanged(TTVideoEngine tTVideoEngine, int i10);

    void onMDLHitCache(String str, long j10);

    void onPlaybackStateChanged(TTVideoEngine tTVideoEngine, int i10);

    void onPrepare(TTVideoEngine tTVideoEngine);

    void onPrepared(TTVideoEngine tTVideoEngine);

    void onRenderSeekComplete(int i10);

    void onRenderStart(TTVideoEngine tTVideoEngine);

    void onRetry(int i10);

    void onUseMDLCacheEnd();

    void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i10, int i11);
}
