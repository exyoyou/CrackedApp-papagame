package com.byazt.p;

import android.content.Context;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.haima.hmcp.device.input.manager.TcMouseManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TcMouseManager.MOUSE_STARY, 13})
public class tt extends com.byazt.c.uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f18604a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f18605c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f18606n;
    public com.byazt.n.c sp;
    public int tt;
    public String uj;
    public String ve;

    public tt(Context context, int i10, String str, String str2, String str3, String str4) {
        if (context != null) {
            this.f18605c = context.getApplicationContext();
        } else {
            this.f18605c = com.byazt.zz.ve.ic();
        }
        this.tt = i10;
        this.ve = str;
        this.uj = str2;
        this.f18606n = str3;
        this.f18604a = str4;
    }

    @Override // com.byazt.c.uj
    public com.byazt.n.c c() {
        Context context;
        com.byazt.n.c cVar = this.sp;
        return (cVar != null || (context = this.f18605c) == null) ? cVar : new c(context, this.tt, this.ve, this.uj, this.f18606n, this.f18604a);
    }

    @Override // com.byazt.c.uj, com.byazt.c.AbsDownloadListener, com.byazt.c.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        if (downloadInfo == null || this.f18605c == null || !downloadInfo.canShowNotification() || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onFailed(downloadInfo, baseException);
    }

    @Override // com.byazt.c.uj, com.byazt.c.AbsDownloadListener, com.byazt.c.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onPause(downloadInfo);
    }

    @Override // com.byazt.c.uj, com.byazt.c.AbsDownloadListener, com.byazt.c.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onPrepare(downloadInfo);
    }

    @Override // com.byazt.c.uj, com.byazt.c.AbsDownloadListener, com.byazt.c.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onProgress(downloadInfo);
    }

    @Override // com.byazt.c.uj, com.byazt.c.AbsDownloadListener, com.byazt.c.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        if (downloadInfo == null || downloadInfo.isAutoInstallWithoutNotification()) {
            return;
        }
        super.onStart(downloadInfo);
    }

    @Override // com.byazt.c.uj, com.byazt.c.AbsDownloadListener, com.byazt.c.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        if (downloadInfo == null || this.f18605c == null) {
            return;
        }
        if (downloadInfo.canShowNotification() && (!downloadInfo.isAutoInstallWithoutNotification() || !downloadInfo.isAutoInstall())) {
            super.onSuccessed(downloadInfo);
        }
        if (downloadInfo.isAutoInstall()) {
            com.byazt.i.tt.c(downloadInfo);
        }
    }

    public tt(com.byazt.n.c cVar) {
        this.f18605c = com.byazt.zz.ve.ic();
        this.sp = cVar;
    }
}
