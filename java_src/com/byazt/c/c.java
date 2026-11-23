package com.byazt.c;

import com.byazt.t.DownloadInfo;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 20, 20})
public abstract class c extends AbsDownloadListener implements my {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f12212c = "c";

    @Override // com.byazt.c.my
    public void c(DownloadInfo downloadInfo) {
        if (!com.byazt.x.c.c() || downloadInfo == null) {
            return;
        }
        com.byazt.x.c.tt(f12212c, " onWaitingDownloadCompleteHandler -- " + downloadInfo.getName());
    }
}
