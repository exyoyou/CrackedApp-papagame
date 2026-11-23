package com.byazt.gq;

import com.byazt.e.DownloadShortInfo;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 52, 72})
public class da {
    public static int c(int i10, int i11) {
        return (i11 <= 0 || i11 >= 100 || !c(i10)) ? i11 : (int) (Math.sqrt(i11) * 10.0d);
    }

    public static long c(int i10, long j10, long j11) {
        if (!c(i10)) {
            return j10;
        }
        if (j10 <= 0) {
            return 0L;
        }
        return j11 <= 0 ? j10 : (j11 * ((long) c(i10, (int) ((j10 * 100) / j11)))) / 100;
    }

    public static DownloadShortInfo c(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo != null && c((int) downloadShortInfo.f13244id)) {
            downloadShortInfo.currentBytes = c((int) downloadShortInfo.f13244id, downloadShortInfo.currentBytes, downloadShortInfo.totalBytes);
        }
        return downloadShortInfo;
    }

    private static boolean c(int i10) {
        return com.byazt.k.c.c(i10).c("pause_optimise_pretend_download_percent_switch", 0) == 1 && com.byazt.k.c.c(i10).c("pause_optimise_switch", 0) == 1;
    }
}
