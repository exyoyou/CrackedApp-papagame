package com.byazt.z;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Environment;
import android.text.TextUtils;
import com.byazt.b.rh;
import com.byazt.c.IDownloadListener;
import com.byazt.c.h;
import com.byazt.c.u;
import com.byazt.c.yp;
import com.byazt.c.yv;
import com.byazt.c.zb;
import com.byazt.m.BaseException;
import com.byazt.nr.m;
import com.byazt.quv.AbsServerManager;
import com.byazt.s.i;
import com.byazt.s.sl;
import com.byazt.s.x;
import com.byazt.s.z;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import com.byazt.tk.AdBaseConstants;
import com.byazt.zz.Downloader;
import com.join.mgps.receiver.BootReceiver_;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 133, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f22558a = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22559c = "uj";
    public static boolean sp;
    public static volatile uj tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static boolean f22560x;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f22561da;
    public zb gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Future f22562i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public x f22563m;
    public h my;
    public com.byazt.s.sp nu;
    public com.byazt.s.ve qy;
    public sl rh;
    public z rl;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.s.uj f22566u;
    public String uj;
    public String ve;
    public com.byazt.s.n yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public i f22567z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public DownloadReceiver f22564n = new DownloadReceiver();
    public boolean sl = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f22565t = false;

    private uj() {
    }

    private void gt() {
        rh.c(new rh.tt() { // from class: com.byazt.z.uj.3
            @Override // com.byazt.b.rh.tt
            public void c(DownloadInfo downloadInfo, long j10, boolean z10, int i10) {
                RetryJobSchedulerService.c(downloadInfo, j10, z10, i10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void my() {
        synchronized (this.f22564n) {
            if (sp) {
                return;
            }
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.MEDIA_MOUNTED");
                intentFilter2.addDataScheme("file");
                com.byazt.zz.ve.ic().registerReceiver(this.f22564n, intentFilter);
                com.byazt.zz.ve.ic().registerReceiver(this.f22564n, intentFilter2);
                sp = true;
            } catch (Exception e10) {
                m.c(e10);
            }
            com.byazt.x.c.tt(f22559c, "registerDownloadReceiver mIsRegistered:" + sp);
        }
    }

    public static uj sl() {
        if (tt == null) {
            synchronized (uj.class) {
                if (tt == null) {
                    tt = new uj();
                }
            }
        }
        return tt;
    }

    public com.byazt.s.sp a() {
        return this.nu;
    }

    public String da() {
        return this.ve;
    }

    public File i() {
        return Downloader.getInstance(com.byazt.zz.ve.ic()).getGlobalSaveDir();
    }

    public h m() {
        return this.my;
    }

    public String n() {
        return this.uj;
    }

    public zb nu() {
        return this.gt;
    }

    public boolean sp() {
        return com.byazt.k.c.tt().optInt("package_flag_config", 1) == 1;
    }

    public void t() {
        if (com.byazt.k.c.ve().c("enable_app_install_receiver", 1) <= 0) {
            com.byazt.x.c.tt(f22559c, "disable app install receiver");
            return;
        }
        synchronized (this.f22564n) {
            try {
                if (f22560x) {
                    tt(0);
                    return;
                }
                try {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction(BootReceiver_.f72254a);
                    intentFilter.addAction(BootReceiver_.f72257d);
                    intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
                    com.byazt.zz.ve.ic().registerReceiver(this.f22564n, intentFilter);
                    f22560x = true;
                    z zVar = this.rl;
                    if (zVar != null) {
                        zVar.c();
                    }
                } catch (Throwable th) {
                    m.c(th);
                }
                tt(0);
                com.byazt.x.c.tt(f22559c, "tryRegisterTempAppInstallDownloadReceiver mIsAppInstallRegistered:" + sp);
            } catch (Throwable th2) {
                tt(0);
                throw th2;
            }
        }
    }

    public void u() {
        z zVar;
        synchronized (this.f22564n) {
            try {
                if (sp) {
                    com.byazt.zz.ve.ic().unregisterReceiver(this.f22564n);
                    if (f22560x && (zVar = this.rl) != null) {
                        zVar.tt();
                    }
                    sp = false;
                    f22560x = false;
                } else {
                    sp = false;
                    f22560x = false;
                }
            } catch (Exception e10) {
                m.c(e10);
            }
            throw th;
        }
        com.byazt.x.c.tt(f22559c, "registerDownloadReceiver unRegisterDownloadReceiver");
    }

    public i uj() {
        return this.f22567z;
    }

    public com.byazt.s.n ve() {
        return this.yp;
    }

    public sl x() {
        return this.rh;
    }

    public x yp() {
        return this.f22563m;
    }

    public com.byazt.zz.rh z() {
        return Downloader.getInstance(com.byazt.zz.ve.ic()).getReserveWifiStatusListener();
    }

    private void ve(Context context) {
        if (context == null || f22558a) {
            return;
        }
        com.byazt.ev.n.c(AdBaseConstants.MIME_APK);
        com.byazt.zz.ve.c(context);
        com.byazt.zz.ve.c(new com.byazt.r.tt());
        if (this.f22565t) {
            com.byazt.zz.ve.c(new Runnable() { // from class: com.byazt.z.uj.1
                @Override // java.lang.Runnable
                public void run() {
                    uj.this.my();
                }
            }, 5L, TimeUnit.SECONDS);
        } else {
            my();
        }
        gt();
        f22558a = true;
    }

    public com.byazt.s.uj tt() {
        return this.f22566u;
    }

    public com.byazt.s.ve c() {
        return this.qy;
    }

    public void tt(String str) {
        Downloader.getInstance(com.byazt.zz.ve.ic()).setDefaultSavePath(str);
    }

    private void tt(int i10) {
        this.f22561da = com.byazt.k.c.ve().c("app_install_keep_receiver_time_s", 60);
        com.byazt.x.c.tt(f22559c, "tryUnRegisterTempAppInstallDownloadReceiver mAppInstallReceiverKeepTime:" + this.f22561da);
        if (this.f22561da <= 0) {
            return;
        }
        if (i10 > 0) {
            this.f22561da = i10;
        }
        Future future = this.f22562i;
        if (future != null) {
            try {
                future.cancel(true);
            } catch (Throwable th) {
                m.c(th);
            }
        }
        this.f22562i = com.byazt.zz.ve.c(new Runnable() { // from class: com.byazt.z.uj.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.x.c.tt(uj.f22559c, "registerDownloadReceiver tryUnRegisterTempAppInstallDownloadReceiver run inner");
                uj.this.u();
                uj.this.my();
            }
        }, this.f22561da, TimeUnit.SECONDS);
    }

    public void c(com.byazt.s.ve veVar) {
        this.qy = veVar;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.uj = str;
    }

    public void c(com.byazt.s.sp spVar) {
        this.nu = spVar;
    }

    public void c(sl slVar) {
        this.rh = slVar;
    }

    @Deprecated
    public void c(Context context, String str, com.byazt.s.uj ujVar, com.byazt.s.n nVar, i iVar) {
        if (ujVar != null) {
            this.f22566u = ujVar;
        }
        if (nVar != null) {
            this.yp = nVar;
        }
        if (iVar != null) {
            this.f22567z = iVar;
        }
        ve(context);
    }

    private DownloadInfo tt(Context context, String str) {
        List<DownloadInfo> downloadInfoList = Downloader.getInstance(context).getDownloadInfoList(str);
        if (downloadInfoList == null) {
            return null;
        }
        for (DownloadInfo downloadInfo : downloadInfoList) {
            if (downloadInfo != null && downloadInfo.isSavePathRedirected()) {
                return downloadInfo;
            }
        }
        return null;
    }

    public static boolean c(Context context, int i10) {
        return ve.c(context, i10, true) == 1;
    }

    public void c(Context context, int i10, int i11) {
        try {
            switch (i11) {
                case -4:
                case -1:
                    Downloader.getInstance(context).restart(i10);
                    break;
                case -3:
                    ve.c(context, i10, true);
                    break;
                case -2:
                    Downloader.getInstance(context).resume(i10);
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 7:
                case 8:
                    Downloader.getInstance(context).pause(i10);
                    break;
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public List<DownloadInfo> tt(Context context) {
        return Downloader.getInstance(context).getDownloadingDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
    }

    public int c(n nVar) {
        int i10;
        JSONObject jSONObject;
        DownloadInfo downloadInfo;
        if (nVar == null || nVar.getContext() == null) {
            return 0;
        }
        try {
            List<com.byazt.t.ve> listC = c(nVar.uj());
            String strC = nVar.c();
            if (TextUtils.isEmpty(strC)) {
                return 0;
            }
            final int iMy = nVar.my();
            final boolean z10 = iMy == 0;
            String strBx = nVar.bx();
            final String strTt = nVar.tt();
            if (TextUtils.isEmpty(strBx)) {
                strBx = ve.c(strC, strTt, nVar.t(), z10);
            }
            if (strBx.length() > 255) {
                strBx = strBx.substring(strBx.length() - 255);
            }
            if (TextUtils.isEmpty(strTt)) {
                strTt = strBx;
            }
            String strT = nVar.t();
            if (strBx.endsWith(".apk") && !ve.ve(nVar.t())) {
                strT = AdBaseConstants.MIME_APK;
            }
            String strVe = nVar.ve();
            if (TextUtils.isEmpty(nVar.ve())) {
                strVe = ve.tt();
            }
            String str = strVe;
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(strBx)) {
                String strL = nVar.l();
                if (TextUtils.isEmpty(strL)) {
                    strL = strC;
                }
                int iC = com.byazt.zz.ve.c(strL, str);
                if (com.byazt.k.c.c(nVar.os()).c("resume_task_override_settings") && (downloadInfo = Downloader.getInstance(com.byazt.zz.ve.ic()).getDownloadInfo(iC)) != null) {
                    try {
                        nVar.c(new JSONObject(downloadInfo.getDownloadSettingString()));
                    } catch (Throwable unused) {
                    }
                }
                com.byazt.k.c.c(iC, nVar.os());
                boolean zPf = nVar.pf();
                boolean z11 = (com.byazt.k.c.c(iC).c("modify_force", 1) == 1 && !zPf && com.byazt.w.a.uj(str, strBx) && Downloader.getInstance(nVar.getContext()).getDownloadInfo(iC) == null) ? true : zPf;
                IDownloadListener iDownloadListenerDa = nVar.da();
                if (iDownloadListenerDa == null && (nVar.n() || nVar.a())) {
                    if (nVar.yp() != null) {
                        iDownloadListenerDa = new com.byazt.p.tt(nVar.yp());
                    } else {
                        iDownloadListenerDa = new com.byazt.p.tt(nVar.getContext(), iC, strTt, str, strBx, nVar.sl());
                    }
                }
                yp ypVarAw = nVar.aw();
                if (ypVarAw == null) {
                    ypVarAw = new yp() { // from class: com.byazt.z.uj.4
                        @Override // com.byazt.c.yp
                        public void c(DownloadInfo downloadInfo2, BaseException baseException, int i11) {
                            if (uj.this.f22567z != null) {
                                uj.this.f22567z.c(downloadInfo2, baseException, i11);
                            }
                        }
                    };
                }
                List<u> listMd = com.byazt.zz.ve.md();
                if (!listMd.isEmpty()) {
                    Iterator<u> it2 = listMd.iterator();
                    while (it2.hasNext()) {
                        nVar.c(it2.next());
                    }
                }
                String strSl = nVar.sl();
                try {
                    if (!TextUtils.isEmpty(strSl)) {
                        jSONObject = new JSONObject(strSl);
                    } else {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.put("auto_install_with_notification", nVar.sp());
                    jSONObject.put("auto_install_without_notification", nVar.a());
                    strSl = jSONObject.toString();
                } catch (Throwable unused2) {
                }
                boolean z12 = nVar.n() || nVar.a();
                if (!z12 || com.byazt.k.c.c(iC).tt("enable_notification_ui") <= 0) {
                    i10 = iC;
                } else {
                    i10 = iC;
                    com.byazt.p.ve.c().c(i10, nVar.kk());
                }
                final DownloadTask autoInstall = com.byazt.zz.tt.with(nVar.getContext()).url(strC).backUpUrls(nVar.tx()).name(strBx).title(strTt).savePath(str).onlyWifi(nVar.x()).extraHeaders(listC).depend(ypVarAw).retryCount(nVar.gu()).backUpUrlRetryCount(nVar.gr()).showNotification(z12).extra(strSl).mimeType(strT).minProgressTimeMsInterval(nVar.d()).maxProgressCount(nVar.eo()).mainThreadListener(nVar.i()).notificationListener(iDownloadListenerDa).notificationEventListener(c(nVar.ic())).force(z11).autoResumed(nVar.nu()).showNotificationForAutoResumed(nVar.rh()).chunkStategy(nVar.z()).chunkAdjustCalculator(nVar.m()).needHttpsToHttpRetry(nVar.u()).packageName(nVar.gt()).md5(nVar.rl()).expectFileLength(nVar.qy()).needRetryDelay(nVar.zm()).retryDelayTimeArray(nVar.yv()).needDefaultHttpServiceBackUp(nVar.p()).needReuseFirstConnection(nVar.md()).needReuseChunkRunnable(nVar.zb()).needIndependentProcess(nVar.or()).enqueueType(nVar.nb()).monitorDepend(nVar.sv()).retryDelayTimeCalculator(nVar.h()).headConnectionAvailable(nVar.cu()).fileUriProvider(nVar.hd()).diskSpaceHandler(nVar.v()).needChunkDowngradeRetry(nVar.qp()).notificationClickCallback(nVar.bm()).downloadSetting(nVar.os()).iconUrl(nVar.kk()).needSDKMonitor(nVar.to()).monitorScene(nVar.tk()).extraMonitorStatus(nVar.kp()).executorGroup(nVar.pu()).throttleNetSpeed(nVar.lt()).distinctDirectory(nVar.b()).taskKey(nVar.l()).setAutoInstall(nVar.q());
                if (autoInstall != null && !nVar.lr().isEmpty()) {
                    autoInstall.setDownloadCompleteHandlers(nVar.lr());
                }
                if (autoInstall != null) {
                    if (z12 && nVar.lo() && nVar.getActivity() != null && !nVar.getActivity().isFinishing() && !com.byazt.p.uj.c()) {
                        com.byazt.p.uj.c(nVar.getActivity(), new com.byazt.s.yp() { // from class: com.byazt.z.uj.5
                            @Override // com.byazt.s.yp
                            public void c() {
                                com.byazt.x.c.tt(uj.f22559c, "notification permission granted, start download :" + strTt);
                                uj.this.c(autoInstall, iMy, z10);
                            }

                            @Override // com.byazt.s.yp
                            public void tt() {
                                com.byazt.x.c.tt(uj.f22559c, "notification permission denied, start download :" + strTt);
                                uj.this.c(autoInstall, iMy, z10);
                            }
                        });
                    } else {
                        com.byazt.x.c.tt(f22559c, "notification permission need not request, start download :".concat(String.valueOf(strTt)));
                        com.byazt.p.uj.c(i10);
                        c(autoInstall, iMy, z10);
                        autoInstall.getDownloadInfo();
                    }
                }
                return i10;
            }
            return 0;
        } catch (Throwable th) {
            com.byazt.zl.c.c(nVar.sv(), (DownloadInfo) null, new BaseException(1003, com.byazt.w.a.tt(th, "addDownloadTask")), 0);
            com.byazt.x.c.n(f22559c, String.format("add download task error:%s", th));
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(DownloadTask downloadTask, int i10, boolean z10) {
        if (downloadTask == null) {
            return;
        }
        downloadTask.download();
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            downloadInfo.setAntiHijackErrorCode(i10);
        }
        if (downloadInfo == null || !z10) {
            return;
        }
        downloadInfo.setSavePathRedirected(z10);
    }

    private List<com.byazt.t.ve> c(List<com.byazt.t.ve> list) {
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        if (list != null && list.size() > 0) {
            for (com.byazt.t.ve veVar : list) {
                if (veVar != null && !TextUtils.isEmpty(veVar.c()) && !TextUtils.isEmpty(veVar.tt())) {
                    if (veVar.c().equals("User-Agent")) {
                        z10 = true;
                    }
                    arrayList.add(new com.byazt.t.ve(veVar.c(), veVar.tt()));
                }
            }
        }
        if (!z10) {
            arrayList.add(new com.byazt.t.ve("User-Agent", com.byazt.j.c.f15710c));
        }
        return arrayList;
    }

    public String c(String str, String str2) {
        return (TextUtils.isEmpty(str) || !str.endsWith(".apk") || ve.ve(str2)) ? str2 : AdBaseConstants.MIME_APK;
    }

    private yv c(final com.byazt.s.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new yv() { // from class: com.byazt.z.uj.6
            @Override // com.byazt.c.yv
            public void c(int i10, DownloadInfo downloadInfo, String str, String str2) {
                if (i10 != 1 && i10 != 3) {
                    switch (i10) {
                        case 8:
                            downloadInfo.getPackageName();
                            break;
                        case 9:
                            com.byazt.zz.ve.ic();
                            break;
                    }
                    return;
                }
                downloadInfo.getStatus();
                downloadInfo.getDownloadTime();
            }

            @Override // com.byazt.c.yv
            public boolean c(boolean z10) {
                return aVar.c(z10);
            }

            @Override // com.byazt.c.yv
            public String c() {
                return aVar.c();
            }
        };
    }

    public DownloadInfo c(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                DownloadInfo downloadInfoC = c(context, str, i());
                if (downloadInfoC == null) {
                    downloadInfoC = c(context, str, com.byazt.nys.tt.c(context, Environment.DIRECTORY_DOWNLOADS));
                }
                if (downloadInfoC == null) {
                    downloadInfoC = c(context, str, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS));
                }
                if (downloadInfoC == null) {
                    downloadInfoC = c(context, str, com.byazt.nys.tt.c(context));
                }
                return (downloadInfoC == null && com.byazt.k.c.ve().c("get_download_info_by_list")) ? tt(context, str) : downloadInfoC;
            } catch (Throwable th) {
                com.byazt.x.c.tt(f22559c, String.format("getAppDownloadInfo error:%s", th.getMessage()));
            }
        }
        return null;
    }

    private DownloadInfo c(Context context, String str, File file) {
        if (context == null || TextUtils.isEmpty(str) || file == null) {
            return null;
        }
        return Downloader.getInstance(context).getDownloadInfo(str, file.getAbsolutePath());
    }

    public List<DownloadInfo> c(Context context) {
        return Downloader.getInstance(context).getUnCompletedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
    }

    public void c(x xVar) {
        this.f22563m = xVar;
    }

    public void c(com.byazt.zz.rh rhVar) {
        Downloader.getInstance(com.byazt.zz.ve.ic()).setReserveWifiStatusListener(rhVar);
    }

    public void c(h hVar) {
        this.my = hVar;
    }

    public void c(zb zbVar) {
        this.gt = zbVar;
    }

    public void c(int i10) {
        if (com.byazt.k.c.ve().c("enable_app_install_receiver", 1) <= 0) {
            return;
        }
        t();
        tt(i10);
    }

    public void c(z zVar) {
        this.rl = zVar;
    }
}
