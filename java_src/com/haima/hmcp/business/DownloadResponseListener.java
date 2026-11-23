package com.haima.hmcp.business;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public interface DownloadResponseListener {
    void onError(int i10, String str, String str2);

    void onFinish();

    void onHeaders(HashMap<String, String> map);

    void onProgress(long j10, long j11);

    void onRetry(long j10);

    void onSuccess();
}
