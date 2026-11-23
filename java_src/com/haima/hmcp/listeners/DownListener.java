package com.haima.hmcp.listeners;

/* JADX INFO: loaded from: classes5.dex */
public interface DownListener extends IUpDownloadListener {
    void onFileError(String str, int i10, String str2);

    void onFileProgress(String str, int i10);

    void onFileStart(String str);

    void onFileSuccess(String str, Object obj);
}
