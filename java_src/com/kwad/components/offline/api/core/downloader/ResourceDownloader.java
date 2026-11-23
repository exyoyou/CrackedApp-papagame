package com.kwad.components.offline.api.core.downloader;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ResourceDownloader {
    int download(List<String> list, String str, String str2, DownloadListener downloadListener, boolean z10, boolean z11);

    void startImmediately(int i10);
}
