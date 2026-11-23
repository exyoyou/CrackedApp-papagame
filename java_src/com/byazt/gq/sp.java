package com.byazt.gq;

import android.content.Context;
import com.byazt.ou.IDownloadButtonClickListener;
import com.byazt.ou.OnItemClickListener;
import com.byazt.su.DownloadController;
import com.byazt.su.DownloadEventConfig;
import com.byazt.su.DownloadModel;
import com.byazt.su.DownloadStatusChangeListener;

/* JADX INFO: loaded from: classes6.dex */
public interface sp {
    sp c(long j10);

    sp c(IDownloadButtonClickListener iDownloadButtonClickListener);

    sp c(OnItemClickListener onItemClickListener);

    sp c(String str);

    void c();

    void c(boolean z10);

    boolean c(int i10);

    sp tt(int i10, DownloadStatusChangeListener downloadStatusChangeListener);

    sp tt(Context context);

    sp tt(DownloadController downloadController);

    sp tt(DownloadEventConfig downloadEventConfig);

    sp tt(DownloadModel downloadModel);

    void tt(int i10);

    boolean tt();

    long uj();

    void x();
}
