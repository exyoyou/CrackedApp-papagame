package com.byazt.n;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.zz.Downloader;
import com.byazt.zz.da;
import com.byazt.zz.ve;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 46, 13})
public class tt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Object f17044n = new Object();
    public static volatile tt ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17046c = 1000;
    public final Map<Integer, Long> tt = new HashMap();
    public final Set<String> uj = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray<c> f17045a = new SparseArray<>();

    private tt() {
    }

    public static tt c() {
        if (ve == null) {
            synchronized (tt.class) {
                if (ve == null) {
                    ve = new tt();
                }
            }
        }
        return ve;
    }

    public static boolean tt(int i10) {
        return i10 == 1 || i10 == 3;
    }

    public static boolean ve(DownloadInfo downloadInfo) {
        return downloadInfo.isDownloadOverStatus() && tt(downloadInfo.getNotificationVisibility());
    }

    public void a(int i10) {
        uj(i10);
        if (i10 != 0) {
            c().ve(i10);
        }
    }

    public c n(int i10) {
        c cVar;
        if (i10 == 0) {
            return null;
        }
        synchronized (this.f17045a) {
            cVar = this.f17045a.get(i10);
        }
        return cVar;
    }

    public c uj(int i10) {
        c cVar;
        if (i10 == 0) {
            return null;
        }
        synchronized (this.f17045a) {
            cVar = this.f17045a.get(i10);
            if (cVar != null) {
                this.f17045a.remove(i10);
                com.byazt.x.c.c("removeNotificationId ".concat(String.valueOf(i10)));
            }
        }
        return cVar;
    }

    public void tt(DownloadInfo downloadInfo) {
        if (ve(downloadInfo)) {
            a(downloadInfo.getId());
        }
    }

    public void ve(int i10) {
        Context contextIc = ve.ic();
        if (contextIc == null || i10 == 0) {
            return;
        }
        Intent intent = new Intent(contextIc, (Class<?>) DownloadNotificationService.class);
        try {
            intent.setAction("android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL");
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", i10);
            if (com.byazt.k.c.ve().tt("enable_target_34") > 0) {
                com.byazt.l.c.c().c(intent);
            } else {
                contextIc.startService(intent);
            }
        } catch (Throwable th) {
            m.c(th);
            if (com.byazt.k.c.ve().tt("enable_target_34") > 0) {
                com.byazt.l.c.c().c(intent);
            }
        }
    }

    public SparseArray<c> tt() {
        SparseArray<c> sparseArray;
        synchronized (this.f17045a) {
            sparseArray = this.f17045a;
        }
        return sparseArray;
    }

    public void c(int i10) {
        DownloadInfo downloadInfo = Downloader.getInstance(ve.ic()).getDownloadInfo(i10);
        if (downloadInfo == null) {
            return;
        }
        c(downloadInfo);
        tt(downloadInfo);
    }

    public void c(DownloadInfo downloadInfo) {
        da daVarZm = ve.zm();
        if (daVarZm != null && downloadInfo.isDownloadOverStatus()) {
            downloadInfo.setNotificationVisibility(3);
            try {
                daVarZm.c(downloadInfo);
            } catch (SQLiteException e10) {
                m.c(e10);
            }
        }
    }

    public void c(int i10, int i11, Notification notification) {
        Context contextIc = ve.ic();
        if (contextIc == null || i10 == 0 || notification == null) {
            return;
        }
        if (i11 == 4) {
            synchronized (this.tt) {
                Long l10 = this.tt.get(Integer.valueOf(i10));
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (l10 != null && Math.abs(jCurrentTimeMillis - l10.longValue()) < 1000) {
                    return;
                } else {
                    this.tt.put(Integer.valueOf(i10), Long.valueOf(jCurrentTimeMillis));
                }
            }
        }
        Intent intent = new Intent(contextIc, (Class<?>) DownloadNotificationService.class);
        try {
            intent.setAction("android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY");
            intent.putExtra("DOWNLOAD_NOTIFICATION_EXTRA_STATUS", i11);
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", i10);
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA", notification);
            if (com.byazt.k.c.ve().tt("enable_target_34") > 0) {
                com.byazt.l.c.c().c(intent);
            } else {
                contextIc.startService(intent);
            }
        } catch (Throwable th) {
            m.c(th);
            if (com.byazt.k.c.ve().tt("enable_target_34") > 0) {
                com.byazt.l.c.c().c(intent);
            }
        }
    }

    public void c(c cVar) {
        if (cVar == null) {
            return;
        }
        synchronized (this.f17045a) {
            this.f17045a.put(cVar.c(), cVar);
        }
    }
}
