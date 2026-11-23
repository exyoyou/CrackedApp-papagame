package com.byazt.su;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.e.DownloadShortInfo;

/* JADX INFO: loaded from: classes6.dex */
public interface DownloadStatusChangeListener {
    void onDownloadActive(DownloadShortInfo downloadShortInfo, int i10);

    void onDownloadFailed(DownloadShortInfo downloadShortInfo);

    void onDownloadFinished(DownloadShortInfo downloadShortInfo);

    void onDownloadPaused(DownloadShortInfo downloadShortInfo, int i10);

    void onDownloadStart(@NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController);

    void onIdle();

    void onInstalled(DownloadShortInfo downloadShortInfo);
}
