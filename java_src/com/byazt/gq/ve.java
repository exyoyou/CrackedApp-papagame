package com.byazt.gq;

import com.byazt.ar.AdDownloadModel;
import com.byazt.su.DownloadModel;
import com.byazt.t.DownloadInfo;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 52, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f14667c = "ve";
    public static volatile ve tt;
    public ConcurrentHashMap<Long, Runnable> ve;

    public ve() {
        this.ve = null;
        this.ve = new ConcurrentHashMap<>();
    }

    public static ve c() {
        if (tt == null) {
            synchronized (ve.class) {
                if (tt == null) {
                    tt = new ve();
                }
            }
        }
        return tt;
    }

    public long tt() {
        return t.i().optLong("quick_app_check_internal", 1200L);
    }

    public void c(n nVar, boolean z10, int i10, DownloadModel downloadModel) {
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        long id2 = downloadModel.getId();
        if (i10 == 4) {
            if (!z10) {
                c(id2, false, 2);
                nVar.tt(false);
                return;
            } else {
                c(id2, true, 2);
                return;
            }
        }
        if (i10 == 5) {
            if (!z10) {
                c(id2, false, 1);
                nVar.ve(false);
                return;
            } else {
                c(id2, true, 1);
                return;
            }
        }
        if (i10 != 7) {
            return;
        }
        Runnable runnableRemove = this.ve.remove(Long.valueOf(id2));
        if (z10) {
            com.byazt.zn.c.c().c(id2, 1);
            c(id2, true, 1);
        } else {
            if (runnableRemove != null) {
                com.byazt.di.x.c().tt().post(runnableRemove);
            }
            c(id2, false, 1);
        }
    }

    private void c(long j10, boolean z10, int i10) {
        com.byazt.zn.c.c().c(j10, z10, i10);
        if (z10) {
            t.rl().c(null, null, null, null, null, 3);
        }
    }

    public void c(final n nVar, final int i10, final DownloadModel downloadModel) {
        com.byazt.us.n.c().c(new com.byazt.us.uj() { // from class: com.byazt.gq.ve.1
            @Override // com.byazt.us.uj
            public void c(boolean z10) {
                ve.this.c(nVar, z10, i10, downloadModel);
            }
        }, tt());
    }

    public static boolean c(DownloadInfo downloadInfo) {
        return downloadInfo == null || downloadInfo.getStatus() == 0 || downloadInfo.getStatus() == -4;
    }
}
