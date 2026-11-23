package com.kwad.sdk.export.proxy;

/* JADX INFO: loaded from: classes2.dex */
public interface AdHttpResponseListener {
    boolean onReadProgress(long j10, long j11);

    void onResponseEnd();

    void onResponseStart();
}
