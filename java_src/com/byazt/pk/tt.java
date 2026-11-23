package com.byazt.pk;

import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import com.byazt.ou.IDownloadButtonClickListener;
import com.byazt.su.DownloadController;
import com.byazt.su.DownloadEventConfig;
import com.byazt.su.DownloadModel;
import com.byazt.su.DownloadStatusChangeListener;

/* JADX INFO: loaded from: classes6.dex */
public interface tt {
    Dialog c(Context context, String str, boolean z10, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i10);

    Dialog c(Context context, String str, boolean z10, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i10, IDownloadButtonClickListener iDownloadButtonClickListener);

    boolean c(long j10);

    boolean c(long j10, int i10);

    boolean c(Context context, long j10, String str, DownloadStatusChangeListener downloadStatusChangeListener, int i10);

    boolean c(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController);

    boolean c(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener);
}
