package com.haima.hmcp.listeners;

/* JADX INFO: loaded from: classes5.dex */
public interface IUpDownloadListener extends BaseUpDownloadListener {
    @Override // com.haima.hmcp.listeners.BaseUpDownloadListener
    void onCancel();

    @Override // com.haima.hmcp.listeners.BaseUpDownloadListener
    void onError(int i10, String str);

    @Override // com.haima.hmcp.listeners.BaseUpDownloadListener
    void onFinish();

    void onProgress(int i10);

    void onStart();

    void onSuccess(Object obj);
}
