package com.join.android.app.common.servcie;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import com.MApplication;
import com.beizi.fusion.BeiZiBiddingConstant;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.PapaPlugGuideActivity_;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.DownloadScanEvent;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchDataBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.BootReceiver_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EService;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes5.dex */
@EService
public class DownloadService extends Service {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f34667j = "DownloadService";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f34668k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static Context f34669l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static ScheduledExecutorService f34670m = Executors.newScheduledThreadPool(1);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static Handler f34671n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static ScheduledFuture f34672o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.join.mgps.rpc.e f34673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.join.mgps.rpc.k f34674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Pref
    PrefDef_ f34675d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    BootReceiver_ f34677f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    HashMap<String, DownloadTask> f34676e = new HashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f34678g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34679h = 1000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f34680i = 0;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 0) {
                DownloadService.K();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.join.android.app.common.utils.m.l()) {
                DownloadService.H();
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!com.join.android.app.common.utils.m.k(DownloadService.f34669l)) {
                DownloadService.f34672o.cancel(true);
            } else if (com.join.android.app.common.utils.m.l()) {
                DownloadService.f34671n.sendEmptyMessage(0);
                DownloadService.f34672o.cancel(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void H() {
        try {
            if (f34668k) {
                return;
            }
            f34668k = true;
            List<DownloadTask> listH0 = q5.f.M().h0();
            if (listH0 != null && listH0.size() != 0) {
                for (DownloadTask downloadTask : listH0) {
                    try {
                        downloadTask.setDownType(UtilsMy.s0(f34669l, downloadTask));
                        HomeViewSwich homeViewSwich = MApplication.U;
                        if (homeViewSwich != null) {
                            downloadTask.setDownLimit(Integer.parseInt(homeViewSwich.getDown_load_speed_limit().getCfg_values_express()));
                        } else {
                            downloadTask.setDownLimit(300);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    try {
                        DownloadTask downloadTaskG = j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG != null && downloadTaskG.getStatus() != 12 && downloadTaskG.getStatus() != 13) {
                            downloadTaskG.setMobleNetNeedStop(0);
                        }
                        downloadTask.setStatus(0);
                        q5.f.M().update(downloadTask);
                        o(downloadTask, false);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                f34668k = false;
                return;
            }
            f34668k = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void J() {
        try {
            boolean zBooleanValue = this.f34675d.isOnlyWifiReconnect().e(Boolean.TRUE).booleanValue();
            List<DownloadTask> listI0 = q5.f.M().i0();
            if (listI0 != null && listI0.size() > 0) {
                for (final DownloadTask downloadTask : listI0) {
                    try {
                        downloadTask.setDownType(UtilsMy.s0(f34669l, downloadTask));
                        HomeViewSwich homeViewSwich = MApplication.U;
                        if (homeViewSwich != null) {
                            downloadTask.setDownLimit(Integer.parseInt(homeViewSwich.getDown_load_speed_limit().getCfg_values_express()));
                        } else {
                            downloadTask.setDownLimit(300);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    if (zBooleanValue) {
                        Context context = f34669l;
                        if (context != null) {
                            if (!com.join.android.app.common.utils.m.k(context)) {
                                downloadTask.setStatus(6);
                                q5.f.M().update(downloadTask);
                                com.php25.PDownload.d.i(downloadTask);
                            } else if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 10 || downloadTask.getStatus() == 1) {
                                downloadTask.setStatus(0);
                                q5.f.M().update(downloadTask);
                                o(downloadTask, false);
                            }
                        }
                    } else if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 10 || downloadTask.getStatus() == 0 || downloadTask.getStatus() == 1) {
                        downloadTask.setStatus(0);
                        q5.f.M().update(downloadTask);
                        o(downloadTask, false);
                    }
                    if (downloadTask.getStatus() == 12 || downloadTask.getStatus() == 13) {
                        if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.apk.name())) {
                            j.f().z(f34669l, downloadTask, false);
                        } else {
                            j.f().z(f34669l, downloadTask, true);
                        }
                    }
                    if (downloadTask.getStatus() == 48) {
                        if (t2.i(downloadTask.getGameZipPath()) || t2.i(downloadTask.getPath())) {
                            if (t2.h(downloadTask.getGameZipPath())) {
                                downloadTask.setGameZipPath(downloadTask.getPath());
                            }
                            APKUtils.s0(downloadTask.getGameZipPath(), downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.o
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return this.f34734b.z(downloadTask, (String) obj);
                                }
                            });
                        } else {
                            q5.f.M().n(downloadTask.getCrc_link_type_val());
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void K() {
        if (!com.join.android.app.common.utils.m.k(f34669l)) {
            f34668k = false;
            return;
        }
        if (f34668k) {
            return;
        }
        f34668k = true;
        List<DownloadTask> listH0 = q5.f.M().h0();
        if (listH0 != null && listH0.size() != 0) {
            for (DownloadTask downloadTask : listH0) {
                try {
                    downloadTask.setDownType(UtilsMy.s0(f34669l, downloadTask));
                    HomeViewSwich homeViewSwich = MApplication.U;
                    if (homeViewSwich != null) {
                        downloadTask.setDownLimit(Integer.parseInt(homeViewSwich.getDown_load_speed_limit().getCfg_values_express()));
                    } else {
                        downloadTask.setDownLimit(300);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                try {
                    DownloadTask downloadTaskG = j.f().g(downloadTask.getCrc_link_type_val());
                    if (downloadTaskG != null && downloadTaskG.getStatus() != 12 && downloadTaskG.getStatus() != 13) {
                        downloadTaskG.setMobleNetNeedStop(0);
                    }
                    downloadTask.setStatus(0);
                    q5.f.M().update(downloadTask);
                    o(downloadTask, false);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            f34668k = false;
            return;
        }
        f34668k = false;
    }

    private synchronized void L() {
        if (com.join.android.app.common.utils.m.k(f34669l)) {
            if (f34672o != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("scheduler status:: isDone =");
                sb2.append(f34672o.isDone());
                sb2.append(";furture.isCancelled=");
                sb2.append(f34672o.isCancelled());
            }
            ScheduledFuture scheduledFuture = f34672o;
            if (scheduledFuture == null || scheduledFuture.isDone() || f34672o.isCancelled()) {
                f34672o = f34670m.scheduleWithFixedDelay(new c(), 5L, 10L, TimeUnit.SECONDS);
            }
        }
    }

    private void M(String moretype, String gameid, String vocannoOther, boolean isOnlineGame) {
        ArrayList arrayList = new ArrayList(Arrays.asList(moretype.split("-")));
        arrayList.remove("");
        if (arrayList.contains(BeiZiBiddingConstant.LossReason.OTHER)) {
            arrayList.remove(BeiZiBiddingConstant.LossReason.OTHER);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        if (strArr.length > 0) {
            if (strArr.length > 2 && "22".equals(strArr[0])) {
                if (!"4".equals(strArr[1]) && !PointType.SIGMOB_REPORT_TRACKING.equals(strArr[1])) {
                    "99".equals(strArr[1]);
                }
                String str = strArr[2];
                return;
            }
            if (TextUtils.equals(strArr[0], "home") || TextUtils.equals(strArr[0], "ranking")) {
                String str2 = strArr[0];
                if (strArr.length > 1) {
                    String str3 = strArr[1];
                }
                if (strArr.length > 2) {
                    String str4 = strArr[2];
                    return;
                }
                return;
            }
            if (strArr[0].equals("4")) {
                if (strArr.length > 1) {
                    String str5 = strArr[1];
                    return;
                }
                return;
            }
            if (strArr[0].equals("7")) {
                if (strArr.length > 1) {
                    String str6 = strArr[1];
                }
            } else if (strArr[0].equals("5")) {
                if (strArr.length > 1) {
                    String str7 = strArr[1];
                }
            } else if (strArr[0].equals("0")) {
                if (strArr.length > 2) {
                    String str8 = strArr[2];
                }
                if (strArr.length > 3) {
                    String str9 = strArr[1];
                    String str10 = strArr[3];
                }
            }
        }
    }

    public static void P(DownloadTask downloadTask) {
        DownloadTask downloadTaskG;
        if (downloadTask == null || (downloadTaskG = j.f().g(downloadTask.getCrc_link_type_val())) == null) {
            return;
        }
        downloadTaskG.setProgress(downloadTask.getProgress());
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 8));
    }

    private static synchronized void o(DownloadTask downloadTask, boolean showTip) {
        p(downloadTask, showTip);
    }

    private static synchronized void p(DownloadTask downloadTask, boolean showTip) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method downloadStart called.");
        sb2.append(downloadTask.getName());
        sb2.append(";url=");
        sb2.append(downloadTask.getUrl());
        if (!t2.h(downloadTask.getUrl()) && q.a(f34669l, downloadTask)) {
            j.f().p(f34669l, downloadTask, showTip);
        }
    }

    private boolean s() {
        ActivityManager activityManager = (ActivityManager) getApplicationContext().getSystemService(TTDownloadField.TT_ACTIVITY);
        String packageName = getApplicationContext().getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                return true;
            }
        }
        return false;
    }

    private boolean t(DownloadTask task) {
        ModInfoBean modInfoBean = t2.i(task.getMod_info()) ? (ModInfoBean) JsonMapper.getInstance().fromJson(task.getMod_info(), ModInfoBean.class) : null;
        return modInfoBean != null && task.getCrc_link_type_val().equals(modInfoBean.getMain_game_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit u(String str, String str2) {
        com.join.android.app.common.utils.g.t0(f34669l).A(f34669l, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit v(DownloadTask downloadTask, String str) {
        if (d2.d(f34669l, downloadTask)) {
            return null;
        }
        com.join.android.app.common.utils.g.t0(f34669l).A(this, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit w(DownloadTask downloadTask, String str) {
        if (d2.d(f34669l, downloadTask)) {
            return null;
        }
        com.join.android.app.common.utils.g.t0(f34669l).A(this, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit x(String str) {
        com.join.android.app.common.utils.g.t0(f34669l).A(this, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit y(String str) {
        com.join.android.app.common.utils.g.t0(f34669l).A(this, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit z(DownloadTask downloadTask, String str) {
        com.join.android.app.common.utils.g.t0(this).A(this, downloadTask.getGameZipPath());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    @Receiver(actions = {"android.net.wifi.WIFI_STATE_CHANGED", "android.net.wifi.STATE_CHANGE", "android.net.conn.CONNECTIVITY_CHANGE", "android.net.wifi.SCAN_RESULTS"})
    public void A(Intent intent) {
        try {
            String action = intent.getAction();
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) || action.equals("android.net.wifi.STATE_CHANGE") || action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                boolean zJ = com.join.android.app.common.utils.m.j(f34669l);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("网络状态：");
                sb2.append(zJ);
                if (com.join.android.app.common.utils.m.k(f34669l)) {
                    if (!this.f34675d.isFightActivity().d().booleanValue()) {
                        this.f34675d.isWifiConnectedBefore().g(Boolean.TRUE);
                    }
                    this.f34678g = true;
                } else {
                    if (!this.f34675d.isFightActivity().d().booleanValue()) {
                        this.f34675d.isWifiConnectedBefore().g(Boolean.FALSE);
                    }
                    this.f34678g = false;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("wifi状态：");
                sb3.append(com.join.android.app.common.utils.m.k(f34669l));
                StringBuilder sb4 = new StringBuilder();
                sb4.append("移动网络状态：");
                sb4.append(com.join.android.app.common.utils.m.i(f34669l));
                StringBuilder sb5 = new StringBuilder();
                sb5.append("网络连接类型：");
                sb5.append(com.join.android.app.common.utils.m.c(f34669l));
                L();
                f34670m.execute(new b());
            }
            if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                if (this.f34675d.isFightActivity().d().booleanValue()) {
                    return;
                }
                this.f34675d.isWifiConnectedBefore().g(Boolean.TRUE);
                return;
            }
            if (!action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                if (!action.equals("android.net.wifi.STATE_CHANGE") || this.f34675d.isFightActivity().d().booleanValue()) {
                    return;
                }
                this.f34675d.isWifiConnectedBefore().g(Boolean.TRUE);
                return;
            }
            StringBuilder sb6 = new StringBuilder();
            sb6.append("android.net.wifi.WIFI_STATE_CHANGED | ");
            sb6.append(intent.getIntExtra("wifi_state", -1));
            sb6.append(" | ");
            sb6.append(intent.getIntExtra("previous_wifi_state", -1));
            if (this.f34675d.isFightActivity().d().booleanValue()) {
                return;
            }
            if (intent.getIntExtra("wifi_state", -1) == 0 || intent.getIntExtra("wifi_state", -1) == 1) {
                this.f34675d.isWifiConnectedBefore().g(Boolean.FALSE);
            }
        } catch (Exception unused) {
        }
    }

    public void B(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        q5.f.M().delete(downloadTask);
        j.f().c(downloadTask.getCrc_link_type_val());
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 7));
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 38));
    }

    public void C(DownloadTask downloadTask) {
        UtilsMy.y2(f34669l, downloadTask, true);
        q5.f.M().m0(downloadTask, 6);
        downloadTask.setStatus(6);
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 6));
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 38));
        L();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void D(final DownloadTask downloadTask) {
        ExtBean extBean;
        ExtBean extBean2;
        ExtBean extBean3;
        ExtBean extBean4;
        g1.c(" permissxx   onfinish");
        downloadTask.setDuration(downloadTask.getSize() / downloadTask.getDuration());
        downloadTask.setCurrentSize((long) (Double.parseDouble(downloadTask.getShowSize()) * 1024.0d * 1024.0d));
        boolean zG = d2.g(downloadTask.getPackageName());
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            q.b(f34669l, downloadTask, Event.downloadPlugCompleted);
            String path = downloadTask.getPath();
            downloadTask.setGameZipPath(path);
            downloadTask.setStatus(11);
            try {
                downloadTask.setId(q5.f.M().G(downloadTask.getCrc_link_type_val()).getId());
                q5.f.M().m(downloadTask);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            j.f().n(downloadTask.getCrc_link_type_val());
            org.greenrobot.eventbus.c.f().q(new r(downloadTask, 11));
            int iIntValue = this.f34675d.insatllAppFirst().d().intValue();
            String strD = this.f34675d.insatllAppFirstData().d();
            if (iIntValue <= 0 || !t2.i(strD) || !s()) {
                if (downloadTask.getDown_type() == 2) {
                    if (com.join.android.app.common.utils.o.r(f34669l, downloadTask, false, new String[0])) {
                        return;
                    }
                    j.f().w(f34669l, downloadTask);
                    return;
                } else {
                    if (MApplication.f3169b2 && ConstantIntEnum.VA32.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                        return;
                    }
                    com.join.android.app.common.utils.g.t0(f34669l).A(this, path);
                    return;
                }
            }
            BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(strD, BootPageData.class);
            if (bootPageData != null && bootPageData.getGame_setup_boot() != null && downloadTask.getDown_type() == 0) {
                ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.intent(f34669l).a(1).flags(C.ENCODING_PCM_MU_LAW)).b(downloadTask.getCrc_link_type_val()).start();
                this.f34675d.insatllAppFirst().g(Integer.valueOf(iIntValue - 1));
                return;
            } else if (downloadTask.getDown_type() == 2) {
                if (com.join.android.app.common.utils.o.r(f34669l, downloadTask, false, new String[0])) {
                    return;
                }
                j.f().w(f34669l, downloadTask);
                return;
            } else {
                if (MApplication.f3169b2 && ConstantIntEnum.VA32.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                    return;
                }
                com.join.android.app.common.utils.g.t0(f34669l).A(f34669l, path);
                return;
            }
        }
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
            if (!zG) {
                q.b(f34669l, downloadTask, Event.gameDownloadCompleted);
            }
            j.f().z(f34669l, downloadTask, true);
            return;
        }
        String qkPosition = "";
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name()) && !APKUtils.P(downloadTask)) {
            if (Build.VERSION.SDK_INT < 30 && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
                q.b(f34669l, downloadTask, Event.gameDownloadCompleted);
                j.f().z(f34669l, downloadTask, false);
                return;
            }
            if (zG) {
                String ext = downloadTask.getExt();
                if (t2.i(ext) && (extBean4 = (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class)) != null) {
                    qkPosition = extBean4.getQkPosition();
                }
                d2.u(this, Event.installSuccessQk, downloadTask.getCrc_link_type_val(), qkPosition);
            } else {
                q.b(f34669l, downloadTask, Event.gameDownloadCompleted);
                q.b(f34669l, downloadTask, Event.gameDownload);
            }
            String ext2 = downloadTask.getExt();
            if (t2.i(ext2) && (extBean3 = (ExtBean) JsonMapper.getInstance().fromJson(ext2, ExtBean.class)) != null) {
                String recPosition = extBean3.getRecPosition();
                if (t2.i(recPosition)) {
                    M(recPosition, downloadTask.getCrc_link_type_val(), extBean3.getVolcanoOther(), UtilsMy.t2(downloadTask.getTipBeans()));
                }
            }
            String path2 = downloadTask.getPath();
            downloadTask.setGameZipPath(path2);
            downloadTask.setStatus(11);
            try {
                downloadTask.setId(q5.f.M().G(downloadTask.getCrc_link_type_val()).getId());
                q5.f.M().m(downloadTask);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            int iIntValue2 = this.f34675d.insatllAppFirst().d().intValue();
            String strD2 = this.f34675d.insatllAppFirstData().d();
            if (iIntValue2 > 0 && t2.i(strD2) && s()) {
                BootPageData bootPageData2 = (BootPageData) JsonMapper.getInstance().fromJson(strD2, BootPageData.class);
                if (bootPageData2 == null || bootPageData2.getGame_setup_boot() == null) {
                    APKUtils.s0(path2, downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.k
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return this.f34728b.v(downloadTask, (String) obj);
                        }
                    });
                } else {
                    ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.intent(f34669l).a(1).flags(C.ENCODING_PCM_MU_LAW)).b(downloadTask.getCrc_link_type_val()).start();
                    this.f34675d.insatllAppFirst().g(Integer.valueOf(iIntValue2 - 1));
                }
            } else {
                APKUtils.s0(path2, downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.l
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return this.f34730b.w(downloadTask, (String) obj);
                    }
                });
            }
            downloadTask.setGameZipPath(path2);
            downloadTask.setStatus(11);
            UtilsMy.X3(f34669l, downloadTask, 11);
            try {
                downloadTask.setId(q5.f.M().G(downloadTask.getCrc_link_type_val()).getId());
                q5.f.M().update(downloadTask);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            j.f().n(downloadTask.getCrc_link_type_val());
            org.greenrobot.eventbus.c.f().q(new r(downloadTask, 11));
            return;
        }
        if ((downloadTask.getFileType() == null || !Dtype.MOD.name().equals(downloadTask.getFileType())) && !APKUtils.P(downloadTask)) {
            return;
        }
        if ((downloadTask.getTask_down_type() == 0 || downloadTask.getTask_down_type() == 2) && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
            q.b(f34669l, downloadTask, Event.gameDownloadCompleted);
            j.f().z(f34669l, downloadTask, false);
            return;
        }
        if (zG) {
            String ext3 = downloadTask.getExt();
            if (t2.i(ext3) && (extBean2 = (ExtBean) JsonMapper.getInstance().fromJson(ext3, ExtBean.class)) != null) {
                qkPosition = extBean2.getQkPosition();
            }
            d2.u(this, Event.installSuccessQk, downloadTask.getCrc_link_type_val(), qkPosition);
        } else {
            q.b(f34669l, downloadTask, Event.gameDownloadCompleted);
            q.b(f34669l, downloadTask, Event.gameDownload);
        }
        String ext4 = downloadTask.getExt();
        if (t2.i(ext4) && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(ext4, ExtBean.class)) != null) {
            String recPosition2 = extBean.getRecPosition();
            if (t2.i(recPosition2)) {
                M(recPosition2, downloadTask.getCrc_link_type_val(), extBean.getVolcanoOther(), UtilsMy.t2(downloadTask.getTipBeans()));
            }
        }
        if (downloadTask.getTask_down_type() == 0 || downloadTask.getTask_down_type() == 2) {
            String path3 = downloadTask.getPath();
            downloadTask.setGameZipPath(path3);
            boolean z10 = APKUtils.K(downloadTask) || zG;
            if (z10) {
                downloadTask.setStatus(48);
            } else {
                downloadTask.setStatus(11);
            }
            try {
                downloadTask.setId(q5.f.M().G(downloadTask.getCrc_link_type_val()).getId());
                q5.f.M().m(downloadTask);
            } catch (Exception e13) {
                e13.printStackTrace();
            }
            int iIntValue3 = this.f34675d.insatllAppFirst().d().intValue();
            String strD3 = this.f34675d.insatllAppFirstData().d();
            if (iIntValue3 > 0 && t2.i(strD3) && s()) {
                BootPageData bootPageData3 = (BootPageData) JsonMapper.getInstance().fromJson(strD3, BootPageData.class);
                if (bootPageData3 == null || bootPageData3.getGame_setup_boot() == null || z10) {
                    APKUtils.s0(path3, downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.m
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return this.f34732b.x((String) obj);
                        }
                    });
                } else {
                    ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.intent(f34669l).a(1).flags(C.ENCODING_PCM_MU_LAW)).b(downloadTask.getCrc_link_type_val()).start();
                    this.f34675d.insatllAppFirst().g(Integer.valueOf(iIntValue3 - 1));
                }
            } else {
                APKUtils.s0(path3, downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.n
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return this.f34733b.y((String) obj);
                    }
                });
            }
        } else {
            com.join.android.app.common.utils.g.t0(f34669l);
            APKUtils.F(this, downloadTask);
        }
        try {
            downloadTask.setId(q5.f.M().G(downloadTask.getCrc_link_type_val()).getId());
            q5.f.M().update(downloadTask);
        } catch (Exception e14) {
            e14.printStackTrace();
        }
        UtilsMy.X3(f34669l, downloadTask, 5);
        j.f().n(downloadTask.getCrc_link_type_val());
    }

    public void E(Long... values) {
        try {
            if (System.currentTimeMillis() - this.f34680i > this.f34679h || System.currentTimeMillis() - this.f34680i < 0) {
                org.greenrobot.eventbus.c.f().q(new r(null, 8));
                this.f34680i = System.currentTimeMillis();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void F(DownloadTask downloadTask) {
        downloadTask.setStatus(2);
        downloadTask.setSpeed("0");
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 2));
    }

    public void G(final DownloadTask downloadTask) {
        if (j.f().g(downloadTask.getCrc_link_type_val()) == null || downloadTask.getStatus() == 7 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 5) {
            return;
        }
        q5.f.M().m0(downloadTask, 3);
        downloadTask.setStatus(3);
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 3));
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 38));
        q.b(f34669l, downloadTask, Event.downloadStop);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = BaseCloudFileManager.ACK_TIMEOUT)
    public void I() {
        J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N(int money, int empirical) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        UtilsMy.A1(downloadtaskDown, detialResultBean);
        if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(f34669l, downloadtaskDown.getCrc_link_type_val());
        } else {
            if (UtilsMy.o1(f34669l, downloadtaskDown)) {
                return;
            }
            if (detialResultBean.getDown_status() == 5) {
                UtilsMy.l1(f34669l, downloadtaskDown);
            } else {
                UtilsMy.U0(f34669l, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
            }
        }
    }

    @Receiver(actions = {p5.a.f96209n})
    void k(Intent intent) {
        final String stringExtra = intent.getStringExtra("apkpath");
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setFlags(C.ENCODING_PCM_MU_LAW);
        intent2.setAction("android.intent.action.VIEW");
        APKUtils.s0(stringExtra, q5.f.M().F(stringExtra), new Function1() { // from class: com.join.android.app.common.servcie.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadService.u(stringExtra, (String) obj);
            }
        });
    }

    @Receiver(actions = {p5.a.f96211o})
    void l(Intent intent) {
        String stringExtra = intent.getStringExtra("packageName");
        String stringExtra2 = intent.getStringExtra("actionFrom");
        if (stringExtra2.equals(BootReceiver_.f72254a)) {
            n(1, stringExtra);
            return;
        }
        if (stringExtra2.equals(BootReceiver_.f72255b)) {
            if (TextUtils.equals(stringExtra, d2.f49544b)) {
                this.f34675d.isQuarkSilentDownload().g(Boolean.TRUE);
            }
            if (TextUtils.equals(stringExtra, "xyz.aethersx2.android")) {
                return;
            }
            if ("com.join.android.app.mgsim.wufun.addon".equals(stringExtra)) {
                APKUtils.x(f34669l);
                return;
            } else {
                n(2, stringExtra);
                return;
            }
        }
        if (stringExtra2.equals(BootReceiver_.f72257d)) {
            n(3, stringExtra);
            return;
        }
        if (stringExtra2.equals(BootReceiver_.f72256c)) {
            if ("com.join.android.app.mgsim.wufun.addon".equals(stringExtra)) {
                APKUtils.x(f34669l);
            }
            if (TextUtils.equals(stringExtra, "xyz.aethersx2.android")) {
                n(2, stringExtra);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void m(String packageName) {
        try {
            ResultMainBean<List<SearchDataBean>> resultMainBeanR0 = this.f34674c.r0(RequestBeanUtil.getInstance(this).getAppDataBackRequest(new String[]{packageName}));
            if (resultMainBeanR0 == null || resultMainBeanR0.getFlag() != 1) {
                return;
            }
            List<SearchDataBean> data = resultMainBeanR0.getMessages().getData();
            g1.c(System.currentTimeMillis() + "  time");
            ArrayList arrayList = new ArrayList();
            Iterator<SearchDataBean> it2 = data.iterator();
            while (it2.hasNext()) {
                DownloadTask downloadtaskDown = it2.next().getDownloadtaskDown();
                if ((Dtype.MOD.name().equals(downloadtaskDown.getFileType()) && !t(downloadtaskDown)) || APKUtils.P(downloadtaskDown)) {
                    if (Boolean.valueOf(com.join.mgps.va.overmind.i.q().K(downloadtaskDown.getPackageName())).booleanValue()) {
                        d7.a aVarU = com.join.mgps.va.overmind.i.q().u(downloadtaskDown.getPackageName());
                        if (aVarU == null || !t2.i(downloadtaskDown.getVer()) || aVarU.f90718k >= Integer.parseInt(downloadtaskDown.getVer())) {
                            downloadtaskDown.setStatus(5);
                        } else {
                            downloadtaskDown.setStatus(9);
                        }
                    } else {
                        File file = !TextUtils.isEmpty(downloadtaskDown.getGameZipPath()) ? new File(downloadtaskDown.getGameZipPath()) : null;
                        if (file != null && file.exists()) {
                            downloadtaskDown.setStatus(11);
                        } else if (downloadtaskDown.getStatus() == 5) {
                            q5.f.M().n(downloadtaskDown.getCrc_link_type_val());
                        }
                    }
                    if (q5.f.M().G(downloadtaskDown.getCrc_link_type_val()) == null) {
                        downloadtaskDown.setOpen(true);
                        downloadtaskDown.setOpenTime(System.currentTimeMillis());
                        q5.f.M().k(downloadtaskDown);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(downloadtaskDown.getCrc_link_type_val());
                        sb2.append("  ");
                        sb2.append(downloadtaskDown.getShowName());
                        UtilsMy.i3(downloadtaskDown, 5);
                        arrayList.add(downloadtaskDown);
                    }
                } else {
                    if (t2.h(downloadtaskDown.getUrl())) {
                        return;
                    }
                    downloadtaskDown.setFileType(Dtype.android.name());
                    downloadtaskDown.setRomType(downloadtaskDown.getPlugin_num());
                    Boolean boolValueOf = Boolean.valueOf(com.join.android.app.common.utils.g.t0(this).e(this, downloadtaskDown.getPackageName()));
                    if (boolValueOf.booleanValue()) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this).n(this, downloadtaskDown.getPackageName());
                        if (!t2.i(downloadtaskDown.getVer()) || aVarN.d() >= Integer.parseInt(downloadtaskDown.getVer())) {
                            downloadtaskDown.setStatus(5);
                        } else {
                            downloadtaskDown.setVer(aVarN.d() + "");
                            downloadtaskDown.setVer_name(aVarN.e());
                            downloadtaskDown.setStatus(9);
                        }
                    } else {
                        downloadtaskDown.setStatus(11);
                    }
                    if (q5.f.M().G(downloadtaskDown.getCrc_link_type_val()) == null && t2.i(downloadtaskDown.getCrc_link_type_val()) && t2.i(downloadtaskDown.getUrl())) {
                        APKUtils.a aVarN2 = com.join.android.app.common.utils.g.t0(f34669l).n(f34669l, packageName);
                        if (!downloadtaskDown.getCrc_link_type_val().equals("846928650") && !downloadtaskDown.getCrc_link_type_val().equals("752756546") && !downloadtaskDown.getCrc_link_type_val().equals("802190896") && !downloadtaskDown.getCrc_link_type_val().equals("633053817")) {
                            if (t2.h(downloadtaskDown.getSingle_game_mod_info())) {
                                UtilsMy.Q2(downloadtaskDown);
                            }
                            downloadtaskDown.setOpen(true);
                            downloadtaskDown.setOpenTime(System.currentTimeMillis());
                            q5.f.M().k(downloadtaskDown);
                            UtilsMy.i3(downloadtaskDown, 5);
                            arrayList.add(downloadtaskDown);
                        } else if (boolValueOf.booleanValue() && aVarN2 != null) {
                            if ((downloadtaskDown.getCrc_link_type_val().equals("846928650") && aVarN2.a().equals("罪恶都市")) || (downloadtaskDown.getCrc_link_type_val().equals("752756546") && aVarN2.a().equals("侠盗猎车手：罪恶都市")) || ((downloadtaskDown.getCrc_link_type_val().equals("802190896") && aVarN2.a().equals("侠盗猎车手：圣安地列斯")) || (downloadtaskDown.getCrc_link_type_val().equals("633053817") && aVarN2.a().equals("圣安地列斯")))) {
                                downloadtaskDown.setOpen(true);
                                downloadtaskDown.setOpenTime(System.currentTimeMillis());
                                q5.f.M().k(downloadtaskDown);
                                UtilsMy.i3(downloadtaskDown, 5);
                                arrayList.add(downloadtaskDown);
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void n(int i10, String packageName) {
        if (i10 == 1) {
            try {
                if (com.join.android.app.common.utils.m.j(this)) {
                    m(packageName);
                } else {
                    HashMap<String, DownloadTask> map = this.f34676e;
                    if (map != null && map.containsKey(packageName)) {
                        DownloadTask downloadTask = this.f34676e.get(packageName);
                        downloadTask.setOpenTime(System.currentTimeMillis());
                        q5.f.M().m(downloadTask);
                        this.f34676e.remove(packageName);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        for (DownloadTask downloadTask2 : q5.f.M().d()) {
            if (packageName.equals(downloadTask2.getPackageName()) && (downloadTask2.getFileType().equals(Dtype.android.name()) || downloadTask2.getFileType().equals(Dtype.chajian.name()))) {
                if (i10 == 1) {
                    downloadTask2.setStatus(5);
                    if (downloadTask2.getRomType() == null || downloadTask2.getFileType().equals(Dtype.chajian.name())) {
                        try {
                            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(f34669l).n(f34669l, downloadTask2.getPackageName());
                            if (aVarN != null) {
                                downloadTask2.setVer(aVarN.d() + "");
                                downloadTask2.setVer_name(aVarN.e());
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    } else {
                        DownloadHistoryTable downloadHistoryTableP = t6.k.n().p(downloadTask2.getCrc_link_type_val());
                        if (downloadHistoryTableP != null) {
                            downloadHistoryTableP.setCreate_time(System.currentTimeMillis());
                        } else {
                            downloadHistoryTableP = new DownloadHistoryTable();
                            downloadHistoryTableP.setCrc_link_type_val(downloadTask2.getCrc_link_type_val());
                            downloadHistoryTableP.setCreate_time(System.currentTimeMillis());
                        }
                        t6.k.n().m(downloadHistoryTableP);
                        UtilsMy.d3(f34669l, downloadTask2.getCrc_link_type_val());
                        PrefDef_ prefDef_ = new PrefDef_(f34669l);
                        prefDef_.lastInstallAppFinish().g(downloadTask2.getCrc_link_type_val());
                        prefDef_.lastInstallApp().g("");
                    }
                    try {
                        DownloadTask downloadTaskG = j.f().g(downloadTask2.getCrc_link_type_val());
                        if (downloadTaskG != null) {
                            downloadTaskG.setStatus(5);
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    q5.f.M().m0(downloadTask2, downloadTask2.getStatus());
                    downloadTask2.setStatus(5);
                    q.b(f34669l, downloadTask2, Event.installAndroidCompleted);
                    org.greenrobot.eventbus.c.f().q(new r(downloadTask2, 5));
                    try {
                        File file = new File(downloadTask2.getPath());
                        if (file.exists()) {
                            UtilsMy.delete(file);
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                } else if (i10 == 2) {
                    g1.c("app卸载");
                    g1.c("downloadTask status=" + downloadTask2.getStatus() + "  5是finish状态");
                    if (11 == downloadTask2.getStatus()) {
                        g1.c("downloadTask 安装状态");
                        downloadTask2.setStatus(5);
                        q5.f.M().m0(downloadTask2, downloadTask2.getStatus());
                        org.greenrobot.eventbus.c.f().q(new r(downloadTask2, 5));
                        DownloadTask downloadTaskG2 = j.f().g(downloadTask2.getCrc_link_type_val());
                        if (downloadTaskG2 != null) {
                            downloadTaskG2.setStatus(5);
                        }
                    } else {
                        g1.c("收到删除广播");
                        DownloadTask downloadTaskG3 = j.f().g(downloadTask2.getCrc_link_type_val());
                        if (!this.f34676e.containsKey(downloadTask2.getPackageName())) {
                            this.f34676e.put(downloadTask2.getPackageName(), downloadTask2);
                        }
                        if (downloadTaskG3 != null) {
                            j.f().n(downloadTaskG3.getCrc_link_type_val());
                        }
                        com.php25.PDownload.d.a(downloadTask2);
                    }
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f34669l = getApplicationContext();
        this.f34673b = com.join.mgps.rpc.impl.d.O1();
        this.f34674c = com.join.mgps.rpc.impl.i.P0();
        this.f34677f = new BootReceiver_();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BootReceiver_.f72259f);
        intentFilter.setPriority(Integer.MAX_VALUE);
        registerReceiver(this.f34677f, intentFilter);
        j0.a().d(this);
        List<DownloadTask> listD = q5.f.M().d();
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : listD) {
                if (downloadTask.getGameZipPath() != null && downloadTask.getFileType().equals(Dtype.apk) && !new File(downloadTask.getGameZipPath()).exists()) {
                    q5.f.M().delete(downloadTask);
                }
            }
            listD.clear();
        }
        I();
    }

    @Override // android.app.Service
    public void onDestroy() {
        t.l(f34669l).e();
        j0.a().e(this);
        BootReceiver_ bootReceiver_ = this.f34677f;
        if (bootReceiver_ != null) {
            unregisterReceiver(bootReceiver_);
        }
        super.onDestroy();
        sendBroadcast(new Intent("com.intent.downloadService.destroyed"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadEvent(com.join.mgps.event.o event) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method onDownloadEvent called.event=");
        sb2.append(event.getType());
        DownloadTask downloadTaskA = event.a();
        int type = event.getType();
        if (type == 39) {
            if (j.f().g(downloadTaskA.getCrc_link_type_val()) == null) {
                j.f().l(downloadTaskA);
            }
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTaskA.getCrc_link_type_val(), 36));
        }
        switch (type) {
            case 14:
                o(downloadTaskA, true);
                break;
            case 15:
                j.f().q(downloadTaskA);
                break;
            case 16:
                j.f().d(f34669l, downloadTaskA);
                break;
            case 17:
                q5.f.M().delete(downloadTaskA);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadRuntimeEvent(com.join.mgps.event.p event) {
        DownloadTask downloadTaskG = j.f().g(event.a());
        if (downloadTaskG == null) {
        }
        if (event.getType() == 33) {
            DlTaskManager.INSTANCE.onTaskChanged(downloadTaskG);
        }
        if (event.getType() != 33) {
            downloadTaskG.setRuntimeStatus(new AtomicInteger(event.getType()));
        }
        if (event.getType() == 41) {
            t.l(f34669l).N1("STATUS_RUNTIME_SIZE_MISMATCH,gameId=" + event.a() + ";realSize=" + downloadTaskG.getSize() + ";atcualSize=" + downloadTaskG.getActual_size());
            return;
        }
        int type = event.getType();
        if (type == 20) {
            F(downloadTaskG);
            DlTaskManager.INSTANCE.onStart(downloadTaskG);
            return;
        }
        if (type == 29) {
            downloadTaskG.setStatus(10);
            org.greenrobot.eventbus.c.f().q(new r(downloadTaskG, 10));
            downloadTaskG.setRuntimeStatus(new AtomicInteger(38));
            return;
        }
        if (type == 45) {
            a3.b(f34669l).d("文件出错，重新下载中");
            return;
        }
        if (type == 46) {
            g1.d("unzipfailedxx", "recived failed");
            if (!(MApplication.f3182z.getActivity() instanceof ModGameIndexActivity)) {
                ((UnzipFailedDialog_.IntentBuilder_) UnzipFailedDialog_.intent(f34669l).from(1).gameId(downloadTaskG.getCrc_link_type_val()).flags(C.ENCODING_PCM_MU_LAW)).start();
            }
            j.f().n(downloadTaskG.getCrc_link_type_val());
            DlTaskManager.INSTANCE.onDelete(downloadTaskG);
            return;
        }
        switch (type) {
            case 31:
            case 36:
                D(downloadTaskG);
                DlTaskManager.INSTANCE.onTaskChanged(downloadTaskG);
                break;
            case 32:
                C(downloadTaskG);
                DlTaskManager.INSTANCE.onError(downloadTaskG);
                break;
            case 33:
                E(new Long[0]);
                break;
            case 34:
                B(downloadTaskG);
                DlTaskManager.INSTANCE.onDelete(downloadTaskG);
                break;
            case 35:
                G(downloadTaskG);
                DlTaskManager.INSTANCE.onStop(downloadTaskG);
                break;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadScanEvent(DownloadScanEvent event) {
        DownloadTask task;
        if (event == null || (task = event.getTask()) == null) {
            return;
        }
        D(task);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        return super.onStartCommand(intent, 1, startId);
    }

    @Receiver(actions = {p5.a.f96213p})
    void q(Intent intent) {
        r(intent.getStringExtra("gameId"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r(String gameId) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(f34669l).getAccountData();
                ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.f34673b.I0(RequestBeanUtil.getInstance(this).getAppDetialBean(gameId, accountData != null ? accountData.getUid() : 0, null));
                if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                    if (resultMainBeanI0 != null) {
                        resultMainBeanI0.getFlag();
                    }
                } else {
                    List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
                    if (data.size() != 0) {
                        O(data.get(0));
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
