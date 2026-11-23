package com.byazt.z;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.Toast;
import com.byazt.c.eo;
import com.byazt.c.yv;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.tk.AdBaseConstants;
import com.byazt.zz.Downloader;
import com.bykv.vk.component.ttvideo.player.C;
import com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 133, 1473})
public class DownloadHandlerService extends Service {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22507c = "DownloadHandlerService";

    private boolean c(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return false;
        }
        int intExtra = intent.getIntExtra("extra_click_download_ids", 0);
        intent.getIntExtra("extra_click_download_type", 0);
        com.byazt.s.n nVarVe = uj.sl().ve();
        yv downloadNotificationEventListener = Downloader.getInstance(this).getDownloadNotificationEventListener(intExtra);
        if (intent.getBooleanExtra("extra_from_notification", false) && com.byazt.k.c.c(intExtra).tt("notification_opt_2") == 1) {
            com.byazt.n.tt.c().a(intExtra);
        }
        DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(intExtra);
        if (downloadInfo == null) {
            return false;
        }
        if (action.equals("android.ss.intent.action.DOWNLOAD_CLICK_CONTENT")) {
            tt(context, downloadInfo, nVarVe, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_OPEN")) {
            c(context, downloadInfo, nVarVe, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_CLICK_BTN")) {
            if (downloadInfo.getStatus() == 0) {
                return false;
            }
            c(context, downloadInfo, nVarVe, downloadNotificationEventListener);
            if (downloadInfo.isDownloadOverStatus() && com.byazt.k.c.c(intExtra).c("no_hide_notification", 0) == 0) {
                if (!(com.byazt.k.c.c(intExtra).tt("enable_notification_ui") >= 2 && downloadInfo.getStatus() == -1)) {
                    com.byazt.n.tt.c().c(intExtra);
                    com.byazt.n.tt.c().a(intExtra);
                }
            }
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_DELETE")) {
            ve(context, downloadInfo, nVarVe, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_HIDE")) {
            com.byazt.n.tt.c().c(intExtra);
        } else if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
            com.byazt.zz.ve.t().execute(new Runnable() { // from class: com.byazt.z.DownloadHandlerService.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(AdBaseConstants.MIME_APK);
                        arrayList.add("mime_type_plg");
                        Downloader.getInstance(com.byazt.zz.ve.ic()).restartAllFailedDownloadTasks(arrayList);
                    } catch (Exception e10) {
                        m.c(e10);
                    }
                }
            });
            return true;
        }
        return false;
    }

    private void tt(Context context, DownloadInfo downloadInfo, com.byazt.s.n nVar, yv yvVar) {
        boolean zC;
        int id2 = downloadInfo.getId();
        eo eoVarU = com.byazt.zz.uj.c().u(id2);
        if (eoVarU != null) {
            try {
                zC = eoVarU.c(downloadInfo);
            } catch (Throwable th) {
                m.c(th);
                zC = false;
            }
        } else {
            zC = false;
        }
        if (zC) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) DownloadTaskDeleteActivity.class);
        intent.putExtra("extra_click_download_ids", id2);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
        com.byazt.n.tt.c().c(id2);
        downloadInfo.updateDownloadTime();
        if (nVar != null) {
            nVar.c(id2, 7, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
        }
        if (yvVar != null) {
            yvVar.c(7, downloadInfo, "", "");
        }
    }

    private void ve(Context context, DownloadInfo downloadInfo, com.byazt.s.n nVar, yv yvVar) {
        int id2 = downloadInfo.getId();
        Intent intent = new Intent(context, (Class<?>) DownloadTaskDeleteActivity.class);
        intent.putExtra("extra_click_download_ids", id2);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
        com.byazt.n.tt.c().c(id2);
        downloadInfo.updateDownloadTime();
        if (nVar != null) {
            nVar.c(id2, 7, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
        }
        if (yvVar != null) {
            yvVar.c(7, downloadInfo, "", "");
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.byazt.zz.ve.c(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (com.byazt.x.c.c()) {
            com.byazt.x.c.tt(f22507c, "onStartCommand");
        }
        c(com.byazt.zz.ve.ic(), intent);
        stopSelf();
        return 2;
    }

    private static void c(Context context, DownloadInfo downloadInfo) {
        if (com.byazt.w.a.tt(context.getApplicationContext()) && downloadInfo.isPauseReserveOnWifi()) {
            downloadInfo.stopPauseReserveOnWifi();
        }
    }

    private static void c(Context context, final com.byazt.s.n nVar, final DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        final yv downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        if (nVar == null && downloadNotificationEventListener == null) {
            return;
        }
        com.byazt.zz.ve.t().execute(new Runnable() { // from class: com.byazt.z.DownloadHandlerService.2
            @Override // java.lang.Runnable
            public void run() {
                PackageInfo packageInfoC;
                try {
                    File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                    if (file.exists()) {
                        try {
                            String str = (com.byazt.zz.ve.ic() == null || (packageInfoC = ve.c(downloadInfo, file)) == null) ? "" : packageInfoC.packageName;
                            com.byazt.s.n nVar2 = nVar;
                            if (nVar2 != null) {
                                nVar2.c(downloadInfo.getId(), 3, str, -3, downloadInfo.getDownloadTime());
                            }
                            yv yvVar = downloadNotificationEventListener;
                            if (yvVar != null) {
                                yvVar.c(3, downloadInfo, str, "");
                                return;
                            }
                            return;
                        } catch (Exception e10) {
                            m.c(e10);
                            return;
                        }
                        m.c(e);
                    }
                } catch (Exception e11) {
                    m.c(e11);
                }
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    private static void c(Context context, int i10, boolean z10) {
        boolean zTt;
        eo eoVarU;
        if (!z10 || (eoVarU = com.byazt.zz.uj.c().u(i10)) == null) {
            zTt = false;
        } else {
            try {
                DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i10);
                if (downloadInfo != null) {
                    zTt = eoVarU.tt(downloadInfo);
                } else {
                    zTt = false;
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        if (!zTt && ve.c(context, i10, true) == 0) {
            Toast.makeText(context, "Open Fail!", 0).show();
        }
    }

    public static void c(Context context, DownloadInfo downloadInfo, com.byazt.s.n nVar, yv yvVar) {
        com.byazt.n.c cVarN;
        int id2 = downloadInfo.getId();
        eo eoVarU = com.byazt.zz.uj.c().u(id2);
        if (AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType()) && eoVarU != null && ve.c(context, downloadInfo) && eoVarU.ve(downloadInfo)) {
        }
        boolean z10 = false;
        switch (downloadInfo.getStatus()) {
            case -4:
            case -1:
                if (com.byazt.k.c.c(id2).tt("enable_notification_ui") >= 2 && downloadInfo.isOnlyWifi()) {
                    downloadInfo.setOnlyWifi(false);
                }
                Downloader.getInstance(context).restart(id2);
                break;
            case -3:
                c(com.byazt.zz.ve.ic(), id2, true);
                c(context, nVar, downloadInfo);
                if (com.byazt.k.c.c(id2).c("notification_click_install_auto_cancel", 1) != 0 || (cVarN = com.byazt.n.tt.c().n(id2)) == null) {
                    z10 = true;
                } else {
                    cVarN.sp();
                    cVarN.c(-3, null, false, true);
                }
                if (z10) {
                    com.byazt.n.tt.c().c(id2);
                }
                break;
            case -2:
                if (com.byazt.zz.uj.c().n(id2)) {
                    Downloader.getInstance(context).resume(id2);
                } else {
                    ve.c(downloadInfo, true, false);
                }
                if (nVar != null) {
                    nVar.c(id2, 6, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
                }
                if (yvVar != null) {
                    yvVar.c(6, downloadInfo, "", "");
                }
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                Downloader.getInstance(context).pause(id2);
                c(context, downloadInfo);
                if (nVar != null) {
                    nVar.c(id2, 5, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
                }
                if (yvVar != null) {
                    yvVar.c(5, downloadInfo, "", "");
                }
                break;
        }
    }
}
