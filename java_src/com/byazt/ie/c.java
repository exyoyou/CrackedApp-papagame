package com.byazt.ie;

import com.byazt.c.nu;
import com.byazt.c.rh;
import com.byazt.gq.t;
import com.byazt.hu.sl;
import com.byazt.hu.u;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.zz.Downloader;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1041, 20})
public class c implements rh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15304c;

    private long tt(com.byazt.k.c cVar) {
        long jC = cVar.c("clear_space_sleep_time", 0L);
        if (jC <= 0) {
            return 0L;
        }
        if (jC > 5000) {
            jC = 5000;
        }
        sl.tt("AppDownloadDiskSpaceHandler", "waiting for space clear, sleepTime = ".concat(String.valueOf(jC)), null);
        try {
            Thread.sleep(jC);
        } catch (InterruptedException e10) {
            m.c(e10);
        }
        sl.tt("AppDownloadDiskSpaceHandler", "waiting end!", null);
        return jC;
    }

    public void c(int i10) {
        this.f15304c = i10;
    }

    @Override // com.byazt.c.rh
    public boolean c(long j10, long j11, nu nuVar) throws Throwable {
        long j12;
        com.byazt.k.c cVarC = com.byazt.k.c.c(this.f15304c);
        if (!c(cVarC)) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        uj.c().ve();
        long jTt = u.tt(0L);
        c();
        long jTt2 = u.tt(0L);
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jTt2 < j11) {
            long jTt3 = tt(cVarC);
            if (jTt3 > 0) {
                jTt2 = u.tt(0L);
            }
            j12 = jTt3;
        } else {
            j12 = 0;
        }
        sl.tt("AppDownloadDiskSpaceHandler", "cleanUpDisk, byteRequired = " + j11 + ", byteAvailableAfter = " + jTt2 + ", cleaned = " + (jTt2 - jTt), null);
        long j13 = jTt2;
        c(jTt, jTt2, j11, jCurrentTimeMillis2, j12);
        if (j13 < j11) {
            return false;
        }
        if (nuVar == null) {
            return true;
        }
        nuVar.c();
        return true;
    }

    private boolean c(com.byazt.k.c cVar) {
        if (cVar.c("clear_space_use_disk_handler", 0) != 1) {
            return false;
        }
        return System.currentTimeMillis() - uj.c().tt() >= cVar.c("clear_space_min_time_interval", 600000L);
    }

    private void c() throws Throwable {
        t.m();
        ve.c();
        ve.tt();
    }

    private void c(long j10, long j11, long j12, long j13, long j14) {
        DownloadInfo downloadInfo = Downloader.getInstance(t.getContext()).getDownloadInfo(this.f15304c);
        if (downloadInfo == null) {
            return;
        }
        try {
            com.byazt.di.c.c().c(downloadInfo, j10, j11, j12, j13, j14, j11 > j12);
        } catch (Exception e10) {
            m.c(e10);
        }
    }
}
