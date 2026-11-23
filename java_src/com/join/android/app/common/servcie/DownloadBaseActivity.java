package com.join.android.app.common.servcie;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.MApplication;
import com.beizi.fusion.BeiZiBiddingConstant;
import com.byazt.hv.TTDownloadField;
import com.byazt.tk.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.p1;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.MyFragmentActivity1;
import com.join.mgps.activity.PapaPlugGuideActivity_;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_;
import com.join.mgps.broadcast.BaseBroadcastReceiver;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.DownloadScanEvent;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.HomeViewSwich;
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
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadBaseActivity extends MyFragmentActivity1 {
    private static final String TAG = "DownloadBaseActivity";
    private static Context context;
    static ScheduledFuture future;
    private static boolean recovery;
    private static ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
    private BroadcastReceiver apkInstalDownDataOrObbRecverReceiver_;
    private BroadcastReceiver downloadbygameRecverReceiver_;
    ScreenStatusReceiver mScreenStatusReceiver;
    private BroadcastReceiver onConnectivityChangedReceiver_;
    PrefDef_ prefDef;
    com.join.mgps.rpc.e recommendClient;
    private Handler mHandler = new Handler(new a());
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private IntentFilter intentFilter2_ = new IntentFilter();
    private BroadcastReceiver apkInstalRecverReceiver_ = null;
    private IntentFilter intentFilter3_ = new IntentFilter();
    private IntentFilter intentFilter4_ = new IntentFilter();
    long screenOffTime = 0;
    HashMap<String, DownloadTask> lastRemovedDownloadTasks = new HashMap<>();
    boolean isWifi = false;
    boolean activityHasdestroy = false;
    private int delay = 1000;
    private long lastDelay = 0;

    private class ScreenStatusReceiver extends BaseBroadcastReceiver {
        private ScreenStatusReceiver() {
        }

        @Override // com.join.mgps.broadcast.BaseBroadcastReceiver, android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!"android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    DownloadBaseActivity.this.screenOffTime = System.currentTimeMillis();
                    return;
                }
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            DownloadBaseActivity downloadBaseActivity = DownloadBaseActivity.this;
            if (jCurrentTimeMillis - downloadBaseActivity.screenOffTime > 240000) {
                downloadBaseActivity.mHandler.sendEmptyMessageDelayed(1, BaseCloudFileManager.ACK_TIMEOUT);
            }
        }

        /* synthetic */ ScreenStatusReceiver(DownloadBaseActivity downloadBaseActivity, a aVar) {
            this();
        }
    }

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message msg) {
            int i10 = msg.what;
            if (i10 == 0) {
                DownloadBaseActivity.this.restartOnlyWifiDownloadTask();
                return false;
            }
            if (i10 != 1) {
                return false;
            }
            DownloadBaseActivity.this.restartDownloadTask();
            return false;
        }
    }

    class b implements Callback<ResultMainBean<List<DetailResultBean>>> {
        b() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<List<DetailResultBean>>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<List<DetailResultBean>>> call, Response<ResultMainBean<List<DetailResultBean>>> response) {
            ResultMainBean<List<DetailResultBean>> resultMainBeanBody = response.body();
            if (resultMainBeanBody == null || resultMainBeanBody.getFlag() == 0) {
                if (resultMainBeanBody != null) {
                    resultMainBeanBody.getFlag();
                }
            } else {
                List<DetailResultBean> data = resultMainBeanBody.getMessages().getData();
                if (data.size() != 0) {
                    DownloadBaseActivity.this.startDown(data.get(0));
                }
            }
        }
    }

    class c implements Callback<ResultMainBean<List<SearchDataBean>>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34663b;

        c(final String val$packageName) {
            this.f34663b = val$packageName;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<List<SearchDataBean>>> call, Throwable t10) {
        }

        /* JADX WARN: Code duplicated, block: B:53:0x01a7  */
        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<List<SearchDataBean>>> call, Response<ResultMainBean<List<SearchDataBean>>> response) {
            boolean z10;
            ResultMainBean<List<SearchDataBean>> resultMainBeanBody = response.body();
            if (resultMainBeanBody == null || resultMainBeanBody.getFlag() != 1) {
                return;
            }
            List<SearchDataBean> data = resultMainBeanBody.getMessages().getData();
            g1.c(System.currentTimeMillis() + "  time");
            ArrayList arrayList = new ArrayList();
            Iterator<SearchDataBean> it2 = data.iterator();
            while (it2.hasNext()) {
                DownloadTask downloadtaskDown = it2.next().getDownloadtaskDown();
                if (t2.h(downloadtaskDown.getUrl())) {
                    return;
                }
                downloadtaskDown.setFileType(Dtype.android.name());
                downloadtaskDown.setRomType(downloadtaskDown.getPlugin_num());
                com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(DownloadBaseActivity.context);
                Context context = DownloadBaseActivity.context;
                String packageName = downloadtaskDown.getPackageName();
                APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                Boolean boolValueOf = Boolean.valueOf(gVarT0.f(context, packageName, device_type));
                if (boolValueOf.booleanValue()) {
                    APKUtils.a aVarO = com.join.android.app.common.utils.g.t0(DownloadBaseActivity.context).o(DownloadBaseActivity.context, downloadtaskDown.getPackageName(), device_type);
                    if (!t2.i(downloadtaskDown.getVer()) || aVarO.d() >= Integer.parseInt(downloadtaskDown.getVer())) {
                        downloadtaskDown.setStatus(5);
                    } else {
                        downloadtaskDown.setVer(aVarO.d() + "");
                        downloadtaskDown.setVer_name(aVarO.e());
                        downloadtaskDown.setStatus(9);
                    }
                } else {
                    downloadtaskDown.setStatus(11);
                }
                if (q5.f.M().G(downloadtaskDown.getCrc_link_type_val()) == null && t2.i(downloadtaskDown.getCrc_link_type_val()) && t2.i(downloadtaskDown.getUrl())) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(DownloadBaseActivity.context).n(DownloadBaseActivity.context, this.f34663b);
                    if (!downloadtaskDown.getCrc_link_type_val().equals("846928650") && !downloadtaskDown.getCrc_link_type_val().equals("752756546") && !downloadtaskDown.getCrc_link_type_val().equals("802190896") && !downloadtaskDown.getCrc_link_type_val().equals("633053817") && !downloadtaskDown.getCrc_link_type_val().equals("4279891468") && !downloadtaskDown.getCrc_link_type_val().equals("316132861")) {
                        if (t2.h(downloadtaskDown.getSingle_game_mod_info())) {
                            UtilsMy.Q2(downloadtaskDown);
                        }
                        downloadtaskDown.setOpen(true);
                        downloadtaskDown.setOpenTime(System.currentTimeMillis());
                        q5.f.M().k(downloadtaskDown);
                        UtilsMy.i3(downloadtaskDown, 5);
                        arrayList.add(downloadtaskDown);
                    } else if (boolValueOf.booleanValue() && aVarN != null && aVarN.a() != null) {
                        if ((downloadtaskDown.getCrc_link_type_val().equals("846928650") && aVarN.a().equals("罪恶都市")) || ((downloadtaskDown.getCrc_link_type_val().equals("752756546") && aVarN.a().equals("侠盗猎车手：罪恶都市")) || ((downloadtaskDown.getCrc_link_type_val().equals("802190896") && aVarN.a().equals("侠盗猎车手：圣安地列斯")) || ((downloadtaskDown.getCrc_link_type_val().equals("633053817") && aVarN.a().equals("圣安地列斯")) || (downloadtaskDown.getCrc_link_type_val().equals("633053817") && aVarN.a().equals("圣安地列斯")))))) {
                            z10 = true;
                        } else {
                            z10 = false;
                            if (!downloadtaskDown.getCrc_link_type_val().equals("4279891468") || !aVarN.a().equals("捕鱼炸翻天") ? !(!downloadtaskDown.getCrc_link_type_val().equals("316132861") || !aVarN.a().equals("捕鱼炸翻天") || q5.f.M().G("4279891468") != null) : q5.f.M().G("316132861") == null) {
                                z10 = true;
                            }
                        }
                        if (z10) {
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
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.join.android.app.common.utils.m.l()) {
                DownloadBaseActivity.this.restartAllNetDownloadTask();
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!com.join.android.app.common.utils.m.k(DownloadBaseActivity.context)) {
                DownloadBaseActivity.future.cancel(true);
            } else if (com.join.android.app.common.utils.m.l()) {
                if (DownloadBaseActivity.this.mHandler != null) {
                    DownloadBaseActivity.this.mHandler.sendEmptyMessage(0);
                }
                DownloadBaseActivity.future.cancel(true);
            }
        }
    }

    private synchronized void download(DownloadTask downloadTask, boolean showTip) {
        downloadStart(downloadTask, showTip);
    }

    private synchronized void downloadStart(DownloadTask downloadTask, boolean showTip) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method downloadStart called.");
        sb2.append(downloadTask.getName());
        sb2.append(";url=");
        sb2.append(downloadTask.getUrl());
        if (!t2.h(downloadTask.getUrl()) && q.a(context, downloadTask)) {
            j.f().p(context, downloadTask, showTip);
        }
    }

    private void initRecviver() {
        if (this.mScreenStatusReceiver == null) {
            this.mScreenStatusReceiver = new ScreenStatusReceiver(this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            registerReceiver(this.mScreenStatusReceiver, intentFilter);
        }
        this.intentFilter1_.addAction(p5.a.f96209n);
        this.intentFilter2_.addAction(p5.a.f96211o);
        this.intentFilter3_.addAction(p5.a.f96213p);
        this.intentFilter4_.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.intentFilter4_.addAction("android.net.wifi.STATE_CHANGE");
        this.intentFilter4_.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.intentFilter4_.addAction("android.net.wifi.SCAN_RESULTS");
        if (this.apkInstalRecverReceiver_ == null) {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.join.android.app.common.servcie.DownloadBaseActivity.6
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    DownloadBaseActivity.this.apkInstalRecver(intent);
                }
            };
            this.apkInstalRecverReceiver_ = broadcastReceiver;
            context.registerReceiver(broadcastReceiver, this.intentFilter2_);
        }
        if (this.downloadbygameRecverReceiver_ == null) {
            BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() { // from class: com.join.android.app.common.servcie.DownloadBaseActivity.7
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    DownloadBaseActivity.this.downloadbygameRecver(intent);
                }
            };
            this.downloadbygameRecverReceiver_ = broadcastReceiver2;
            context.registerReceiver(broadcastReceiver2, this.intentFilter3_);
        }
        if (this.onConnectivityChangedReceiver_ == null) {
            BroadcastReceiver broadcastReceiver3 = new BroadcastReceiver() { // from class: com.join.android.app.common.servcie.DownloadBaseActivity.8
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    DownloadBaseActivity.this.onConnectivityChanged(intent);
                }
            };
            this.onConnectivityChangedReceiver_ = broadcastReceiver3;
            context.registerReceiver(broadcastReceiver3, this.intentFilter4_);
        }
        if (this.apkInstalDownDataOrObbRecverReceiver_ == null) {
            BroadcastReceiver broadcastReceiver4 = new BroadcastReceiver() { // from class: com.join.android.app.common.servcie.DownloadBaseActivity.9
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    DownloadBaseActivity.this.apkInstalDownDataOrObbRecver(intent);
                }
            };
            this.apkInstalDownDataOrObbRecverReceiver_ = broadcastReceiver4;
            context.registerReceiver(broadcastReceiver4, this.intentFilter1_);
        }
    }

    private boolean isAppOnForeground() {
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

    private boolean isChajianApk(DownloadTask task) {
        String mimeType = task.getMimeType();
        if (!TextUtils.isEmpty(mimeType)) {
            String lowerCase = mimeType.toLowerCase();
            if (lowerCase.contains(AdBaseConstants.MIME_APK)) {
                return true;
            }
            if (lowerCase.contains("application/zip") || lowerCase.contains("application/x-zip") || lowerCase.contains("audio/x-mod")) {
                return false;
            }
        }
        String url = !TextUtils.isEmpty(task.getUrl()) ? task.getUrl() : task.getPath();
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        String lowerCase2 = url.toLowerCase();
        int iIndexOf = lowerCase2.indexOf(63);
        if (iIndexOf >= 0) {
            lowerCase2 = lowerCase2.substring(0, iIndexOf);
        }
        if (lowerCase2.endsWith(".zip")) {
            return false;
        }
        return lowerCase2.endsWith(".apk");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit lambda$apkInstalDownDataOrObbRecver$0(String str, String str2) {
        com.join.android.app.common.utils.g.t0(context).A(context, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onFinish$2(DownloadTask downloadTask, String str) {
        if (d2.d(context, downloadTask)) {
            return null;
        }
        com.join.android.app.common.utils.g.t0(context).A(this, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onFinish$3(DownloadTask downloadTask, String str) {
        if (d2.d(context, downloadTask)) {
            return null;
        }
        com.join.android.app.common.utils.g.t0(context).A(this, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onFinish$4(String str) {
        com.join.android.app.common.utils.g.t0(context).A(this, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onFinish$5(String str) {
        com.join.android.app.common.utils.g.t0(context).A(this, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$restartDownloadTask$1(String str) {
        com.join.android.app.common.utils.g.t0(this).A(this, str);
        return null;
    }

    private void reconcileInstallStates() {
        String fileType;
        try {
            List<DownloadTask> listD = q5.f.M().d();
            if (listD != null && !listD.isEmpty()) {
                HashSet hashSet = new HashSet();
                for (DownloadTask downloadTask : listD) {
                    if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getPackageName()) && (fileType = downloadTask.getFileType()) != null && (fileType.equals(Dtype.android.name()) || fileType.equals(Dtype.chajian.name()))) {
                        if (!fileType.equals(Dtype.chajian.name()) || isChajianApk(downloadTask)) {
                            String packageName = downloadTask.getPackageName();
                            if (!hashSet.contains(packageName)) {
                                if (Boolean.TRUE.equals(Boolean.valueOf(com.join.android.app.common.utils.g.t0(context).f(context, packageName, APKUtils.DEVICE_TYPE.ALL)))) {
                                    int status = downloadTask.getStatus();
                                    if (status == 11 || status == 48 || status == 9) {
                                        hashSet.add(packageName);
                                        changeDownloadState(status == 9 ? 3 : 1, packageName);
                                    }
                                } else if (downloadTask.getStatus() == 5) {
                                    hashSet.add(packageName);
                                    changeDownloadState(2, packageName);
                                }
                            }
                        }
                    }
                }
                if (TextUtils.isEmpty("com.join.android.app.mgsim.wufun.addon") || Boolean.TRUE.equals(Boolean.valueOf(com.join.android.app.common.utils.g.t0(context).e(context, "com.join.android.app.mgsim.wufun.addon")))) {
                    return;
                }
                APKUtils.x(context);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void restartAllNetDownloadTask() {
        if (recovery) {
            return;
        }
        recovery = true;
        List<DownloadTask> listH0 = q5.f.M().h0();
        if (listH0 != null && listH0.size() != 0) {
            for (DownloadTask downloadTask : listH0) {
                try {
                    downloadTask.setDownType(UtilsMy.s0(context, downloadTask));
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
                    if (!downloadTask.isCloudGame() || !downloadTask.isCloudTask()) {
                        downloadTask.setStatus(0);
                        q5.f.M().update(downloadTask);
                        download(downloadTask, false);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            recovery = false;
            return;
        }
        recovery = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartDownloadTask() {
        try {
            if (this.activityHasdestroy) {
                return;
            }
            boolean zBooleanValue = this.prefDef.isOnlyWifiReconnect().e(Boolean.TRUE).booleanValue();
            List<DownloadTask> listI0 = q5.f.M().i0();
            if (listI0 == null || listI0.size() <= 0) {
                return;
            }
            for (DownloadTask downloadTask : listI0) {
                try {
                    downloadTask.setDownType(UtilsMy.s0(context, downloadTask));
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
                    Context context2 = context;
                    if (context2 != null) {
                        if (!com.join.android.app.common.utils.m.k(context2)) {
                            downloadTask.setStatus(6);
                            q5.f.M().update(downloadTask);
                            com.php25.PDownload.d.i(downloadTask);
                        } else if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 10 || downloadTask.getStatus() == 1) {
                            downloadTask.setStatus(0);
                            q5.f.M().update(downloadTask);
                            download(downloadTask, false);
                        }
                    }
                } else if (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 10 || downloadTask.getStatus() == 0 || downloadTask.getStatus() == 1) {
                    downloadTask.setStatus(0);
                    q5.f.M().update(downloadTask);
                    download(downloadTask, false);
                }
                if (downloadTask.getStatus() == 12 || downloadTask.getStatus() == 13) {
                    if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.apk.name())) {
                        j.f().z(context, downloadTask, false);
                    } else {
                        j.f().z(context, downloadTask, true);
                    }
                } else if (downloadTask.getStatus() == 48) {
                    if (t2.i(downloadTask.getGameZipPath()) || t2.i(downloadTask.getPath())) {
                        if (t2.h(downloadTask.getGameZipPath())) {
                            downloadTask.setGameZipPath(downloadTask.getPath());
                        }
                        APKUtils.s0(downloadTask.getGameZipPath(), downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.b
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return this.f34711b.lambda$restartDownloadTask$1((String) obj);
                            }
                        });
                    } else {
                        q5.f.M().n(downloadTask.getCrc_link_type_val());
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void restartOnlyWifiDownloadTask() {
        try {
            if (!com.join.android.app.common.utils.m.k(context)) {
                recovery = false;
                return;
            }
            if (recovery) {
                return;
            }
            recovery = true;
            List<DownloadTask> listH0 = q5.f.M().h0();
            if (listH0 != null && listH0.size() != 0) {
                for (DownloadTask downloadTask : listH0) {
                    try {
                        downloadTask.setDownType(UtilsMy.s0(context, downloadTask));
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
                        download(downloadTask, false);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                recovery = false;
                return;
            }
            recovery = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void retryOnSomeTime() {
        if (com.join.android.app.common.utils.m.k(context)) {
            if (future != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("scheduler status:: isDone =");
                sb2.append(future.isDone());
                sb2.append(";furture.isCancelled=");
                sb2.append(future.isCancelled());
            }
            ScheduledFuture scheduledFuture = future;
            if (scheduledFuture == null || scheduledFuture.isDone() || future.isCancelled()) {
                future = scheduler.scheduleWithFixedDelay(new e(), 5L, 10L, TimeUnit.SECONDS);
            }
        }
    }

    private void sendPointVolcanno(String moretype, String gameid, String vocannoOther, boolean isOnlineGame) {
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

    public static void updatezipProgress(DownloadTask downloadTask) {
        DownloadTask downloadTaskG;
        if (downloadTask == null || (downloadTaskG = j.f().g(downloadTask.getCrc_link_type_val())) == null) {
            return;
        }
        downloadTaskG.setProgress(downloadTask.getProgress());
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 8));
    }

    void apkInstalDownDataOrObbRecver(Intent intent) {
        final String stringExtra = intent.getStringExtra("apkpath");
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setFlags(C.ENCODING_PCM_MU_LAW);
        intent2.setAction("android.intent.action.VIEW");
        APKUtils.s0(stringExtra, q5.f.M().F(stringExtra), new Function1() { // from class: com.join.android.app.common.servcie.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadBaseActivity.lambda$apkInstalDownDataOrObbRecver$0(stringExtra, (String) obj);
            }
        });
    }

    void apkInstalRecver(Intent intent) {
        String stringExtra = intent.getStringExtra("packageName");
        String stringExtra2 = intent.getStringExtra("actionFrom");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method apkInstalRecver() called.packageName=");
        sb2.append(stringExtra);
        sb2.append("  actionFrom=");
        sb2.append(stringExtra2);
        if (stringExtra2.equals(BootReceiver_.f72254a)) {
            changeDownloadState(1, stringExtra);
            return;
        }
        if (stringExtra2.equals(BootReceiver_.f72255b)) {
            if (TextUtils.equals(stringExtra, "xyz.aethersx2.android")) {
                return;
            }
            changeDownloadState(2, stringExtra);
        } else {
            if (stringExtra2.equals(BootReceiver_.f72257d)) {
                changeDownloadState(3, stringExtra);
                return;
            }
            if (!stringExtra2.equals(BootReceiver_.f72256c)) {
                BootReceiver_.f72258e.equals(stringExtra2);
                return;
            }
            if ("com.join.android.app.mgsim.wufun.addon".equals(stringExtra)) {
                APKUtils.x(context);
            }
            if (TextUtils.equals(stringExtra, "xyz.aethersx2.android")) {
                changeDownloadState(2, stringExtra);
            }
        }
    }

    void backH5Downloadgame(String packageName) {
        try {
            com.join.mgps.rpc.impl.i.P0().N0().r0(RequestBeanUtil.getInstance(this).getAppDataBackRequest(new String[]{packageName})).enqueue(new c(packageName));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void changeDownloadState(int i10, String packageName) {
        if (i10 == 1) {
            try {
                if (com.join.android.app.common.utils.m.j(this)) {
                    backH5Downloadgame(packageName);
                } else {
                    HashMap<String, DownloadTask> map = this.lastRemovedDownloadTasks;
                    if (map != null && map.containsKey(packageName)) {
                        DownloadTask downloadTask = this.lastRemovedDownloadTasks.get(packageName);
                        downloadTask.setOpenTime(System.currentTimeMillis());
                        q5.f.M().m(downloadTask);
                        this.lastRemovedDownloadTasks.remove(packageName);
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
                            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, downloadTask2.getPackageName());
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
                        UtilsMy.d3(this, downloadTask2.getCrc_link_type_val());
                        PrefDef_ prefDef_ = new PrefDef_(context);
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
                    q.b(context, downloadTask2, Event.installAndroidCompleted);
                    g1.c("downloadTask status=" + downloadTask2.getStatus() + " Event.installAndroidCompleted");
                    org.greenrobot.eventbus.c.f().q(new r(downloadTask2, 5));
                    try {
                        File file = new File(downloadTask2.getPath());
                        if (file.exists()) {
                            UtilsMy.delete(file);
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                } else if (i10 == 2 && !Dtype.MOD.name().equals(downloadTask2.getFileType())) {
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
                        if (!this.lastRemovedDownloadTasks.containsKey(downloadTask2.getPackageName())) {
                            this.lastRemovedDownloadTasks.put(downloadTask2.getPackageName(), downloadTask2);
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

    void downloadbygameRecver(Intent intent) {
        getBaseDetailData(intent.getStringExtra("gameId"));
    }

    @Override // android.app.Activity
    public void finish() {
        ScreenStatusReceiver screenStatusReceiver = this.mScreenStatusReceiver;
        if (screenStatusReceiver != null) {
            unregisterReceiver(screenStatusReceiver);
            this.mScreenStatusReceiver = null;
        }
        super.finish();
    }

    void getBaseDetailData(String gameId) {
        if (com.join.android.app.common.utils.m.j(context)) {
            try {
                com.join.mgps.rpc.impl.d.O1().N1().I0(RequestBeanUtil.getInstance(context).getAppDetialBean(gameId, 0, null)).enqueue(new b());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void onConnectivityChanged(Intent intent) {
        try {
            String action = intent.getAction();
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) || action.equals("android.net.wifi.STATE_CHANGE") || action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                boolean zJ = com.join.android.app.common.utils.m.j(context);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("网络状态：");
                sb2.append(zJ);
                if (com.join.android.app.common.utils.m.k(context)) {
                    if (!this.prefDef.isFightActivity().d().booleanValue()) {
                        this.prefDef.isWifiConnectedBefore().g(Boolean.TRUE);
                    }
                    this.isWifi = true;
                } else {
                    if (!this.prefDef.isFightActivity().d().booleanValue()) {
                        this.prefDef.isWifiConnectedBefore().g(Boolean.FALSE);
                    }
                    this.isWifi = false;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("wifi状态：");
                sb3.append(com.join.android.app.common.utils.m.k(context));
                StringBuilder sb4 = new StringBuilder();
                sb4.append("移动网络状态：");
                sb4.append(com.join.android.app.common.utils.m.i(context));
                StringBuilder sb5 = new StringBuilder();
                sb5.append("网络连接类型：");
                sb5.append(com.join.android.app.common.utils.m.c(context));
                retryOnSomeTime();
                scheduler.execute(new d());
            }
            if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                if (this.prefDef.isFightActivity().d().booleanValue()) {
                    return;
                }
                this.prefDef.isWifiConnectedBefore().g(Boolean.TRUE);
                return;
            }
            if (!action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                if (!action.equals("android.net.wifi.STATE_CHANGE") || this.prefDef.isFightActivity().d().booleanValue()) {
                    return;
                }
                this.prefDef.isWifiConnectedBefore().g(Boolean.TRUE);
                return;
            }
            StringBuilder sb6 = new StringBuilder();
            sb6.append("android.net.wifi.WIFI_STATE_CHANGED | ");
            sb6.append(intent.getIntExtra("wifi_state", -1));
            sb6.append(" | ");
            sb6.append(intent.getIntExtra("previous_wifi_state", -1));
            if (this.prefDef.isFightActivity().d().booleanValue()) {
                return;
            }
            if (intent.getIntExtra("wifi_state", -1) == 0 || intent.getIntExtra("wifi_state", -1) == 1) {
                this.prefDef.isWifiConnectedBefore().g(Boolean.FALSE);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        context = getApplicationContext();
        this.activityHasdestroy = false;
        if (p1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            return;
        }
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        initRecviver();
        j0.a().d(this);
        this.prefDef = new PrefDef_(context);
        try {
            List<DownloadTask> listD = q5.f.M().d();
            if (listD != null && listD.size() > 0) {
                for (DownloadTask downloadTask : listD) {
                    if (downloadTask.getGameZipPath() != null && Dtype.apk.name().equals(downloadTask.getFileType()) && !new File(downloadTask.getGameZipPath()).exists()) {
                        q5.f.M().delete(downloadTask);
                    }
                }
                listD.clear();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.mHandler.sendEmptyMessageDelayed(1, ConstantsInternal.WAIT_VIRTUAL_GAME_PAD_TIMEOUT_MS);
    }

    public void onDelete(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        q5.f.M().delete(downloadTask);
        j.f().c(downloadTask.getCrc_link_type_val());
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 7));
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 38));
    }

    @Override // com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.activityHasdestroy = true;
        if (!this.isBackHome) {
            t.l(context).e();
            try {
                if (p1.b(this) >= 26 && Build.VERSION.SDK_INT >= 26) {
                    if (j0.a().b(this)) {
                        j0.a().e(this);
                    }
                    try {
                        ScreenStatusReceiver screenStatusReceiver = this.mScreenStatusReceiver;
                        if (screenStatusReceiver != null) {
                            unregisterReceiver(screenStatusReceiver);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    try {
                        BroadcastReceiver broadcastReceiver = this.apkInstalDownDataOrObbRecverReceiver_;
                        if (broadcastReceiver != null) {
                            unregisterReceiver(broadcastReceiver);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    try {
                        BroadcastReceiver broadcastReceiver2 = this.apkInstalRecverReceiver_;
                        if (broadcastReceiver2 != null) {
                            unregisterReceiver(broadcastReceiver2);
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    try {
                        BroadcastReceiver broadcastReceiver3 = this.downloadbygameRecverReceiver_;
                        if (broadcastReceiver3 != null) {
                            unregisterReceiver(broadcastReceiver3);
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    try {
                        BroadcastReceiver broadcastReceiver4 = this.onConnectivityChangedReceiver_;
                        if (broadcastReceiver4 != null) {
                            unregisterReceiver(broadcastReceiver4);
                        }
                    } catch (Exception e14) {
                        h1.e(e14.getLocalizedMessage());
                    }
                    sendBroadcast(new Intent("com.intent.downloadService.destroyed"));
                }
            } catch (Exception e15) {
                e15.printStackTrace();
            }
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadEvent(com.join.mgps.event.o event) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method onDownloadEvent called.event=");
        sb2.append(event.getType());
        if (p1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            return;
        }
        DownloadTask downloadTaskA = event.a();
        DlTaskManager.INSTANCE.onTaskChanged(downloadTaskA);
        int type = event.getType();
        if (type == 39) {
            if (j.f().g(downloadTaskA.getCrc_link_type_val()) == null) {
                j.f().l(downloadTaskA);
            }
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTaskA.getCrc_link_type_val(), 36));
        }
        switch (type) {
            case 14:
                download(downloadTaskA, !d2.d(this, downloadTaskA));
                if (!TextUtils.isEmpty(downloadTaskA.getPackageName()) && !downloadTaskA.getPackageName().equals(d2.f49544b)) {
                    this.prefDef.normalDownloadCount().g(1);
                    break;
                }
                break;
            case 15:
                j.f().q(downloadTaskA);
                break;
            case 16:
                j.f().d(context, downloadTaskA);
                break;
            case 17:
                q5.f.M().delete(downloadTaskA);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadRuntimeEvent(com.join.mgps.event.p event) {
        DownloadTask downloadTaskG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method onRuntimeEvent called.");
        sb2.append(event.getType());
        if (p1.b(this) < 26 || Build.VERSION.SDK_INT < 26 || (downloadTaskG = j.f().g(event.a())) == null) {
        }
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        dlTaskManager.onTaskChanged(downloadTaskG);
        if (event.getType() != 33) {
            downloadTaskG.setRuntimeStatus(new AtomicInteger(event.getType()));
        }
        if (event.getType() == 41) {
            t.l(context).N1("STATUS_RUNTIME_SIZE_MISMATCH,gameId=" + event.a() + ";realSize=" + downloadTaskG.getSize() + ";atcualSize=" + downloadTaskG.getActual_size());
            return;
        }
        int type = event.getType();
        if (type == 20) {
            onStart(downloadTaskG);
            dlTaskManager.onStart(downloadTaskG);
            return;
        }
        if (type == 29) {
            downloadTaskG.setStatus(10);
            org.greenrobot.eventbus.c.f().q(new r(downloadTaskG, 10));
            downloadTaskG.setRuntimeStatus(new AtomicInteger(38));
            dlTaskManager.onTaskChanged(downloadTaskG);
            return;
        }
        if (type == 45) {
            a3.b(context).d("文件出错，重新下载中");
            return;
        }
        if (type == 46) {
            g1.d("unzipfailedxx", "recived failed");
            if (!(MApplication.f3182z.getActivity() instanceof ModGameIndexActivity)) {
                ((UnzipFailedDialog_.IntentBuilder_) UnzipFailedDialog_.intent(context).from(1).gameId(downloadTaskG.getCrc_link_type_val()).flags(C.ENCODING_PCM_MU_LAW)).start();
            }
            j.f().n(downloadTaskG.getCrc_link_type_val());
            dlTaskManager.onDelete(downloadTaskG);
            return;
        }
        switch (type) {
            case 31:
            case 36:
                onFinish(downloadTaskG);
                dlTaskManager.onTaskChanged(downloadTaskG);
                break;
            case 32:
                onError(downloadTaskG);
                dlTaskManager.onError(downloadTaskG);
                break;
            case 33:
                onProgressUpdate(new Long[0]);
                break;
            case 34:
                onDelete(downloadTaskG);
                dlTaskManager.onDelete(downloadTaskG);
                break;
            case 35:
                onStop(downloadTaskG);
                dlTaskManager.onStop(downloadTaskG);
                break;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadScanEvent(DownloadScanEvent event) {
        DownloadTask task;
        if (event == null || (task = event.getTask()) == null) {
            return;
        }
        onFinish(task);
    }

    public void onError(DownloadTask downloadTask) {
        UtilsMy.y2(context, downloadTask, true);
        q5.f.M().m0(downloadTask, 6);
        downloadTask.setStatus(6);
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 6));
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 38));
        retryOnSomeTime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onFinish(final DownloadTask downloadTask) {
        ExtBean extBean;
        ExtBean extBean2;
        ExtBean extBean3;
        g1.c(" permissxx   onfinish");
        downloadTask.setDuration(downloadTask.getSize() / downloadTask.getDuration());
        downloadTask.setCurrentSize((long) (Double.parseDouble(downloadTask.getShowSize()) * 1024.0d * 1024.0d));
        boolean zG = d2.g(downloadTask.getPackageName());
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            q.b(context, downloadTask, Event.downloadPlugCompleted);
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
            int iIntValue = this.prefDef.insatllAppFirst().d().intValue();
            String strD = this.prefDef.insatllAppFirstData().d();
            if (iIntValue <= 0 || !t2.i(strD) || !isAppOnForeground()) {
                if (ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTask.getPlugin_num()) || ConstantIntEnum.N3DS.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                    j.f().w(context, downloadTask);
                    return;
                }
                if (downloadTask.getDown_type() == 2) {
                    if (com.join.android.app.common.utils.o.r(context, downloadTask, false, new String[0])) {
                        return;
                    }
                    j.f().w(context, downloadTask);
                    return;
                } else {
                    if (MApplication.f3169b2 && ConstantIntEnum.VA32.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                        return;
                    }
                    com.join.android.app.common.utils.g.t0(context).A(this, path);
                    return;
                }
            }
            BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(strD, BootPageData.class);
            if (bootPageData != null && bootPageData.getGame_setup_boot() != null && downloadTask.getDown_type() == 0) {
                ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.intent(context).a(1).flags(C.ENCODING_PCM_MU_LAW)).b(downloadTask.getCrc_link_type_val()).start();
                this.prefDef.insatllAppFirst().g(Integer.valueOf(iIntValue - 1));
                return;
            }
            if (ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTask.getPlugin_num()) || ConstantIntEnum.N3DS.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                j.f().w(context, downloadTask);
                return;
            }
            if (downloadTask.getDown_type() == 2) {
                if (com.join.android.app.common.utils.o.r(context, downloadTask, false, new String[0])) {
                    return;
                }
                j.f().w(context, downloadTask);
                return;
            } else {
                if (MApplication.f3169b2 && ConstantIntEnum.VA32.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
                    return;
                }
                com.join.android.app.common.utils.g.t0(context).A(context, path);
                return;
            }
        }
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
            if (!zG) {
                q.b(context, downloadTask, Event.gameDownloadCompleted);
            }
            j.f().z(context, downloadTask, true);
            return;
        }
        String qkPosition = "";
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name()) && !APKUtils.P(downloadTask)) {
            if (Build.VERSION.SDK_INT < 30 && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name()))) {
                if (!zG) {
                    q.b(context, downloadTask, Event.gameDownloadCompleted);
                }
                j.f().z(context, downloadTask, false);
                return;
            }
            if (zG) {
                String ext = downloadTask.getExt();
                if (t2.i(ext) && (extBean3 = (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class)) != null) {
                    qkPosition = extBean3.getQkPosition();
                }
                d2.u(this, Event.installSuccessQk, downloadTask.getCrc_link_type_val(), qkPosition);
            } else {
                q.b(context, downloadTask, Event.gameDownloadCompleted);
                q.b(context, downloadTask, Event.gameDownload);
            }
            String ext2 = downloadTask.getExt();
            if (t2.i(ext2) && (extBean2 = (ExtBean) JsonMapper.getInstance().fromJson(ext2, ExtBean.class)) != null) {
                String recPosition = extBean2.getRecPosition();
                if (t2.i(recPosition)) {
                    sendPointVolcanno(recPosition, downloadTask.getCrc_link_type_val(), extBean2.getVolcanoOther(), UtilsMy.t2(downloadTask.getTipBeans()));
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
            int iIntValue2 = this.prefDef.insatllAppFirst().d().intValue();
            String strD2 = this.prefDef.insatllAppFirstData().d();
            if (iIntValue2 > 0 && t2.i(strD2) && isAppOnForeground()) {
                BootPageData bootPageData2 = (BootPageData) JsonMapper.getInstance().fromJson(strD2, BootPageData.class);
                if (bootPageData2 == null || bootPageData2.getGame_setup_boot() == null) {
                    APKUtils.s0(path2, downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.c
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return this.f34712b.lambda$onFinish$2(downloadTask, (String) obj);
                        }
                    });
                } else {
                    ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.intent(context).a(1).flags(C.ENCODING_PCM_MU_LAW)).b(downloadTask.getCrc_link_type_val()).start();
                    this.prefDef.insatllAppFirst().g(Integer.valueOf(iIntValue2 - 1));
                }
            } else {
                APKUtils.s0(path2, downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return this.f34714b.lambda$onFinish$3(downloadTask, (String) obj);
                    }
                });
            }
            downloadTask.setGameZipPath(path2);
            downloadTask.setStatus(11);
            UtilsMy.X3(context, downloadTask, 11);
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
            q.b(context, downloadTask, Event.gameDownloadCompleted);
            j.f().z(context, downloadTask, false);
            return;
        }
        if (zG) {
            d2.u(this, Event.installSuccessQk, downloadTask.getCrc_link_type_val(), "");
        } else {
            q.b(context, downloadTask, Event.gameDownloadCompleted);
            q.b(context, downloadTask, Event.gameDownload);
        }
        String ext3 = downloadTask.getExt();
        if (t2.i(ext3) && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(ext3, ExtBean.class)) != null) {
            String recPosition2 = extBean.getRecPosition();
            if (t2.i(recPosition2)) {
                sendPointVolcanno(recPosition2, downloadTask.getCrc_link_type_val(), extBean.getVolcanoOther(), UtilsMy.t2(downloadTask.getTipBeans()));
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
            int iIntValue3 = this.prefDef.insatllAppFirst().d().intValue();
            String strD3 = this.prefDef.insatllAppFirstData().d();
            if (iIntValue3 > 0 && t2.i(strD3) && isAppOnForeground()) {
                BootPageData bootPageData3 = (BootPageData) JsonMapper.getInstance().fromJson(strD3, BootPageData.class);
                if (bootPageData3 == null || bootPageData3.getGame_setup_boot() == null || z10) {
                    APKUtils.s0(path3, downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.e
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return this.f34716b.lambda$onFinish$4((String) obj);
                        }
                    });
                } else {
                    ((PapaPlugGuideActivity_.c) PapaPlugGuideActivity_.intent(context).a(1).flags(C.ENCODING_PCM_MU_LAW)).b(downloadTask.getCrc_link_type_val()).start();
                    this.prefDef.insatllAppFirst().g(Integer.valueOf(iIntValue3 - 1));
                }
            } else {
                APKUtils.s0(path3, downloadTask, new Function1() { // from class: com.join.android.app.common.servcie.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return this.f34717b.lambda$onFinish$5((String) obj);
                    }
                });
            }
            downloadTask.setGameZipPath(path3);
        } else {
            com.join.android.app.common.utils.g.t0(context);
            APKUtils.F(this, downloadTask);
        }
        UtilsMy.X3(context, downloadTask, 5);
        j.f().n(downloadTask.getCrc_link_type_val());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    public void onProgressUpdate(Long... values) {
        try {
            if (System.currentTimeMillis() - this.lastDelay > this.delay || System.currentTimeMillis() - this.lastDelay < 0) {
                org.greenrobot.eventbus.c.f().q(new r(null, 8));
                this.lastDelay = System.currentTimeMillis();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (p1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            return;
        }
        reconcileInstallStates();
    }

    public void onStart(DownloadTask downloadTask) {
        downloadTask.setStatus(2);
        downloadTask.setSpeed("0");
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 2));
    }

    public void onStop(final DownloadTask downloadTask) {
        if (j.f().g(downloadTask.getCrc_link_type_val()) == null || downloadTask.getStatus() == 7 || downloadTask.getStatus() == 6 || downloadTask.getStatus() == 5) {
            return;
        }
        q5.f.M().m0(downloadTask, 3);
        downloadTask.setStatus(3);
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 3));
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 38));
        q.b(context, downloadTask, Event.downloadStop);
    }

    void startDown(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        UtilsMy.A1(downloadtaskDown, detialResultBean);
        if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(context, downloadtaskDown.getCrc_link_type_val());
        } else {
            if (UtilsMy.o1(context, downloadtaskDown)) {
                return;
            }
            if (detialResultBean.getDown_status() == 5) {
                UtilsMy.l1(context, downloadtaskDown);
            } else {
                UtilsMy.U0(context, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
            }
        }
    }
}
