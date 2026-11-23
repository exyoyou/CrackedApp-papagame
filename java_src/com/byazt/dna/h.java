package com.byazt.dna;

import android.content.Context;
import android.os.Looper;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface h {
    com.byazt.fk.sp createTTLiveVideoPlayer(Context context, boolean z10, long j10, JSONObject jSONObject, Looper looper);

    com.byazt.fk.sp createTTVideoPlayer(Context context, String str);

    com.byazt.fk.c createVideoCacheDir();

    com.byazt.fk.da createVideoPreload();

    int getLiveSupportCode();

    boolean isTTVideoOk();

    void openDebugLog(boolean z10);

    void preloadTTVideo(Context context, String str, int i10, String[] strArr, long[] jArr, boolean z10);
}
