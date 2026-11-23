package com.bykv.vk.component.ttvideo.medialoader;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public interface MediaLoaderListener {
    long getInt64Value(int i10, long j10);

    void onDataLoaderError(int i10, String str);

    void onLogInfo(int i10, String str, JSONObject jSONObject);

    void onNotify(int i10, long j10, long j11, String str);

    void onSwitchLoaderType(int i10, String str);
}
