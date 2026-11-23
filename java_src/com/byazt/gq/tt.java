package com.byazt.gq;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.zz.Downloader;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 52, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f14653c;
    public Handler tt = null;

    public static tt c() {
        if (f14653c == null) {
            synchronized (tt.class) {
                if (f14653c == null) {
                    f14653c = new tt();
                }
            }
        }
        return f14653c;
    }

    public boolean tt() {
        return t.i().optInt("forbid_invalidte_download_file_install", 0) == 1;
    }

    public void c(Context context, DownloadInfo downloadInfo) {
        if (tt() && downloadInfo != null) {
            try {
                File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                if (file.isFile() && file.exists()) {
                    file.delete();
                }
            } catch (Exception e10) {
                m.c(e10);
            }
            if (this.tt == null) {
                this.tt = new Handler(Looper.getMainLooper());
            }
            final String url = downloadInfo.getUrl();
            Downloader.getInstance(context).clearDownloadData(downloadInfo.getId());
            this.tt.post(new Runnable() { // from class: com.byazt.gq.tt.1
                @Override // java.lang.Runnable
                public void run() {
                    t.ve().c(3, t.getContext(), null, "下载失败，请重试！", null, 0);
                    n nVarC = com.byazt.di.x.c().c(url);
                    if (nVarC != null) {
                        nVarC.sp();
                    }
                }
            });
        }
    }
}
