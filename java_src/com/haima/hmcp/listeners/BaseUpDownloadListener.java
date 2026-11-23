package com.haima.hmcp.listeners;

/* JADX INFO: loaded from: classes5.dex */
public interface BaseUpDownloadListener {
    void onCancel();

    void onError(int i10, String str);

    void onFinish();

    void onStop();
}
