package com.byazt.n;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ev.n;
import com.byazt.m.BaseException;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.u.sp;
import com.byazt.w.a;
import com.byazt.zz.Downloader;
import com.byazt.zz.u;
import com.byazt.zz.uj;
import com.byazt.zz.ve;
import com.kuaishou.weapon.p0.g;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 46, 948})
public class DownloadNotificationService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile long f17030a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f17031c = "DownloadNotificationService";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static long f17032i = 900;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f17033n = false;
    public static volatile long sp = 0;
    public static int tt = -1;
    public static boolean uj = true;
    public static int ve = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static boolean f17034x;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public sp f17035da;
    public final SparseArray<Notification> sl = new SparseArray<>(2);

    private void uj() {
        if (this.f17035da == null) {
            sp spVar = new sp("DownloaderNotifyThread");
            this.f17035da = spVar;
            spVar.c();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        uj();
        ve.c(this);
        com.byazt.k.c cVarVe = com.byazt.k.c.ve();
        int iC = cVarVe.c("download_service_foreground", 0);
        if ((iC == 1 || iC == 3) && tt == -1) {
            tt = 0;
        }
        if ((iC == 2 || iC == 3) && ve == -1) {
            ve = 0;
        }
        f17033n = cVarVe.tt("non_going_notification_foreground", false);
        f17034x = cVarVe.tt("notify_too_fast", false);
        long jC = cVarVe.c("notification_time_window", 900L);
        f17032i = jC;
        if (jC < 0 || jC > 1200) {
            f17032i = 900L;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        sp spVar = this.f17035da;
        if (spVar != null) {
            try {
                spVar.tt();
            } catch (Throwable unused) {
            }
            this.f17035da = null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        c(intent);
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(NotificationManager notificationManager, int i10, Notification notification) {
        if (c(i10, notification)) {
            try {
                boolean z10 = false;
                boolean z11 = uj.c().c(i10) == 1 && !a.ve();
                if ((!z11 && tt == 0) || (z11 && ve == 0)) {
                    z10 = true;
                }
                if (z10) {
                    u uVarVe = uj.c().ve(i10);
                    if (uVarVe.sp() && !uVarVe.tt()) {
                        com.byazt.x.c.ve(f17031c, "doNotify, startForeground, ======== id = " + i10 + ", isIndependentProcess = " + z11);
                        if (z11) {
                            ve = i10;
                        } else {
                            tt = i10;
                        }
                        uVarVe.c(i10, notification);
                    } else {
                        com.byazt.x.c.ve(f17031c, "doNotify: canStartForeground = true, but proxy can not startForeground, isIndependentProcess = ".concat(String.valueOf(z11)));
                    }
                }
            } catch (Throwable th) {
                m.c(th);
            }
        } else if ((tt == i10 || ve == i10) && f17033n && (notification.flags & 2) == 0) {
            tt(notificationManager, i10);
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (f17030a < jCurrentTimeMillis) {
                f17030a = jCurrentTimeMillis;
            }
            notificationManager.notify(i10, notification);
        } catch (Throwable unused) {
        }
    }

    private void c(final Intent intent) {
        sp spVar;
        if (intent == null) {
            return;
        }
        final String action = intent.getAction();
        if (TextUtils.isEmpty(action) || (spVar = this.f17035da) == null) {
            return;
        }
        spVar.c(new Runnable() { // from class: com.byazt.n.DownloadNotificationService.1
            @Override // java.lang.Runnable
            public void run() {
                ConnectivityManager connectivityManager;
                NetworkInfo activeNetworkInfo;
                final NotificationManager notificationManager = (NotificationManager) DownloadNotificationService.this.getSystemService("notification");
                final int intExtra = intent.getIntExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", 0);
                if (!action.equals("android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY")) {
                    if (action.equals("android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL")) {
                        if (intExtra != 0) {
                            DownloadNotificationService.this.tt(notificationManager, intExtra);
                            return;
                        }
                        return;
                    }
                    if (!action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                        if (action.equals("android.intent.action.MEDIA_UNMOUNTED") || action.equals("android.intent.action.MEDIA_REMOVED") || action.equals("android.intent.action.MEDIA_BAD_REMOVAL") || action.equals("android.intent.action.MEDIA_EJECT")) {
                            try {
                                Downloader.getInstance(DownloadNotificationService.this).pauseAll();
                                return;
                            } catch (Exception e10) {
                                m.c(e10);
                                return;
                            }
                        }
                        return;
                    }
                    try {
                        if (a.c((Context) DownloadNotificationService.this, g.f74778b) && (connectivityManager = (ConnectivityManager) DownloadNotificationService.this.getApplicationContext().getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
                            ArrayList arrayList = new ArrayList();
                            if (!TextUtils.isEmpty(n.f14037c)) {
                                arrayList.add(n.f14037c);
                            }
                            arrayList.add("mime_type_plg");
                            Context applicationContext = DownloadNotificationService.this.getApplicationContext();
                            if (applicationContext != null) {
                                Downloader.getInstance(applicationContext).restartAllFailedDownloadTasks(arrayList);
                                Downloader.getInstance(applicationContext).restartAllPauseReserveOnWifiDownloadTasks(arrayList);
                                return;
                            }
                            return;
                        }
                        return;
                    } catch (Exception e11) {
                        m.c(e11);
                        return;
                    }
                }
                final Notification notification = (Notification) intent.getParcelableExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA");
                int intExtra2 = intent.getIntExtra("DOWNLOAD_NOTIFICATION_EXTRA_STATUS", 0);
                if (intExtra == 0 || notification == null || notificationManager == null) {
                    return;
                }
                if (intExtra2 != 4) {
                    if (intExtra2 != -2 && intExtra2 != -3) {
                        if (DownloadNotificationService.f17034x) {
                            DownloadNotificationService.this.c(notificationManager, intExtra, notification);
                            return;
                        } else {
                            DownloadNotificationService.this.tt(notificationManager, intExtra, notification);
                            return;
                        }
                    }
                    if (DownloadNotificationService.f17034x) {
                        DownloadNotificationService.this.c(notificationManager, intExtra, notification);
                        return;
                    } else {
                        if (DownloadNotificationService.this.f17035da != null) {
                            DownloadNotificationService.this.f17035da.c(new Runnable() { // from class: com.byazt.n.DownloadNotificationService.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    DownloadNotificationService.this.tt(notificationManager, intExtra, notification);
                                }
                            }, intExtra2 == -2 ? 50L : 200L);
                            return;
                        }
                        return;
                    }
                }
                if (Downloader.getInstance(ve.ic()).isDownloading(intExtra)) {
                    DownloadInfo downloadInfo = Downloader.getInstance(ve.ic()).getDownloadInfo(intExtra);
                    if (!DownloadNotificationService.f17034x) {
                        if (downloadInfo == null || !downloadInfo.canNotifyProgress()) {
                            return;
                        }
                        DownloadNotificationService.this.tt(notificationManager, intExtra, notification);
                        downloadInfo.setLastNotifyProgressTime();
                        return;
                    }
                    if (downloadInfo == null || !downloadInfo.canNotifyProgress() || System.currentTimeMillis() - DownloadNotificationService.sp <= DownloadNotificationService.f17032i) {
                        return;
                    }
                    DownloadNotificationService.this.tt(notificationManager, intExtra, notification);
                    downloadInfo.setLastNotifyProgressTime();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final NotificationManager notificationManager, final int i10, Notification notification) {
        synchronized (this.sl) {
            int iIndexOfKey = this.sl.indexOfKey(i10);
            if (iIndexOfKey >= 0 && iIndexOfKey < this.sl.size()) {
                this.sl.setValueAt(iIndexOfKey, notification);
                return;
            }
            long jCurrentTimeMillis = f17032i - (System.currentTimeMillis() - f17030a);
            if (jCurrentTimeMillis <= 0) {
                jCurrentTimeMillis = 0;
            }
            if (jCurrentTimeMillis > 20000) {
                jCurrentTimeMillis = 20000;
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis() + jCurrentTimeMillis;
            sp = jCurrentTimeMillis2;
            f17030a = jCurrentTimeMillis2;
            if (jCurrentTimeMillis <= 0) {
                tt(notificationManager, i10, notification);
            } else if (this.f17035da != null) {
                synchronized (this.sl) {
                    this.sl.put(i10, notification);
                }
                this.f17035da.c(new Runnable() { // from class: com.byazt.n.DownloadNotificationService.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DownloadNotificationService.this.c(notificationManager, i10);
                    }
                }, jCurrentTimeMillis);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(NotificationManager notificationManager, int i10) {
        Notification notification;
        synchronized (this.sl) {
            notification = this.sl.get(i10);
            this.sl.remove(i10);
        }
        if (notification != null) {
            tt(notificationManager, i10, notification);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(NotificationManager notificationManager, int i10) {
        boolean z10;
        c cVarValueAt;
        int iC;
        int i11 = tt;
        if (i11 != i10 && ve != i10) {
            try {
                notificationManager.cancel(i10);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        boolean z11 = true;
        if (i11 == i10) {
            tt = 0;
            z10 = false;
        } else {
            ve = 0;
            z10 = true;
        }
        try {
            u uVarVe = uj.c().ve(i10);
            if (!uVarVe.tt()) {
                uj = false;
                com.byazt.x.c.uj(f17031c, "try to stopForeground when is not Foreground, id = " + i10 + ", isIndependentProcess = " + z10);
            }
            com.byazt.x.c.ve(f17031c, "doCancel, ========== stopForeground id = " + i10 + ", isIndependentProcess = " + z10);
            uVarVe.c(false, true);
        } catch (Throwable th) {
            m.c(th);
        }
        try {
            notificationManager.cancel(i10);
        } catch (Throwable unused2) {
        }
        if (uj) {
            try {
                SparseArray<c> sparseArrayTt = tt.c().tt();
                if (sparseArrayTt == null) {
                    cVarValueAt = null;
                    break;
                }
                int size = sparseArrayTt.size() - 1;
                while (true) {
                    if (size < 0) {
                        cVarValueAt = null;
                        break;
                    }
                    cVarValueAt = sparseArrayTt.valueAt(size);
                    if (cVarValueAt != null && (iC = cVarValueAt.c()) != i10 && iC != tt && iC != ve && cVarValueAt.x()) {
                        if ((uj.c().c(cVarValueAt.c()) == 1 && !a.ve()) == z10) {
                            break;
                        }
                    }
                    size--;
                }
                if (cVarValueAt != null) {
                    int iC2 = cVarValueAt.c();
                    try {
                        notificationManager.cancel(iC2);
                    } catch (Throwable th2) {
                        m.c(th2);
                    }
                    if (Downloader.getInstance(this).getStatus(iC2) != 1) {
                        z11 = false;
                    }
                    com.byazt.x.c.ve(f17031c, "doCancel, updateNotification id = ".concat(String.valueOf(iC2)));
                    cVarValueAt.c((BaseException) null, z11);
                }
            } catch (Throwable th3) {
                m.c(th3);
            }
        }
    }

    private boolean c(int i10, Notification notification) {
        int i11;
        int i12;
        if (!uj || (i11 = tt) == i10 || (i12 = ve) == i10) {
            return false;
        }
        if (i11 != 0 && i12 != 0) {
            return false;
        }
        if (f17033n && (notification.flags & 2) == 0) {
            return false;
        }
        return Build.VERSION.SDK_INT < 26 || !TextUtils.isEmpty(notification.getChannelId());
    }
}
