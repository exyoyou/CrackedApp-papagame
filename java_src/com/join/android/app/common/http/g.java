package com.join.android.app.common.http;

/* JADX INFO: loaded from: classes5.dex */
public interface g {
    void onRequestProgress(long bytesWritten, long contentLength, boolean b10, String url);

    void onUploadFailed(String msg);
}
