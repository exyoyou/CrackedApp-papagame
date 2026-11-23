package com.join.mgps.activity;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.byazt.hv.TTDownloadField;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.JsonObject;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.PictureHProgress;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.va.service.MessengerService;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.util.FileUtils;
import com.uc.crashsdk.export.LogType;
import com.xinzhu.overmind.Overmind;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_mini_game_loading)
public class MiniGameLoadingActivity extends BaseActivity {
    public static final String KEY_MOD_INFO = "_mod_info";
    private static com.github.snowdream.android.app.downloader.b factory = null;
    static com.github.snowdream.android.app.downloader.b.InterfaceC0591b listener = null;
    public static final int retryTotalCount = 2;
    DownloadTask downloadTask;

    @Extra
    String gameId;

    @ViewById
    LinearLayout ll_back;
    int modCode;
    String modPath;
    ModReceiver modReceiver;
    int modType;
    String modVersion;
    String packageName;

    @ViewById
    PictureHProgress pb_progress;

    @ViewById
    SimpleDraweeView sdv_image;

    @ViewById
    View statubar;

    @ViewById
    TextView tv_cancel;

    @ViewById
    TextView tv_loading_progress;

    @ViewById
    TextView tv_name;

    @ViewById
    TextView tv_speed;
    int userId;
    private static Map<String, com.github.snowdream.android.app.downloader.c> tasks = new ConcurrentHashMap(0);
    public static int retryCount = 0;
    boolean allTaskInQueue = false;
    List<String> soCopyStartTasks = new ArrayList();
    List<String> soCopyFinishTasks = new ArrayList();
    boolean isLaunching = false;
    private boolean isCopyFinish = false;
    private String sModInfo = "";
    private long totalObbLength = 0;
    private Executor executor = new ThreadPoolExecutor(1, 2, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    f progressMonitor = null;

    @Extra
    boolean isLaunchApp = false;
    boolean isLaunchAfterDown = false;

    class ModReceiver extends BroadcastReceiver {
        ModReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(com.join.mgps.mod.utils.d.f71918t)) {
                String stringExtra = intent.getStringExtra("soName");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                MiniGameLoadingActivity.this.soCopyStartTasks.add(stringExtra);
                return;
            }
            if (action.equals(com.join.mgps.mod.utils.d.f71919u)) {
                String stringExtra2 = intent.getStringExtra("soName");
                if (TextUtils.isEmpty(stringExtra2)) {
                    MiniGameLoadingActivity.this.allTaskInQueue = true;
                    MiniGameLoadingActivity.this.checkReady();
                    return;
                }
                MiniGameLoadingActivity.this.soCopyFinishTasks.add(stringExtra2);
                MiniGameLoadingActivity miniGameLoadingActivity = MiniGameLoadingActivity.this;
                if (miniGameLoadingActivity.allTaskInQueue) {
                    miniGameLoadingActivity.checkReady();
                    return;
                }
                return;
            }
            if (action.equals(com.join.mgps.mod.utils.d.f71921w)) {
                MiniGameLoadingActivity.this.finish();
                return;
            }
            if (action.equals(com.join.mgps.mod.utils.d.f71920v)) {
                MiniGameLoadingActivity.retryCount++;
                com.join.mgps.Util.o0.m(MiniGameLoadingActivity.this.modPath);
                com.join.mgps.Util.o0.m(com.join.mgps.Util.z.f50168g + "mod/" + MiniGameLoadingActivity.this.downloadTask.getPackageName() + "/oat");
                if (!com.join.mgps.Util.t2.i(MiniGameLoadingActivity.this.sModInfo) || com.join.android.app.common.utils.m.j(MiniGameLoadingActivity.this) || MiniGameLoadingActivity.retryCount >= 2) {
                    MiniGameLoadingActivity.this.startCopyFile();
                } else {
                    MiniGameLoadingActivity miniGameLoadingActivity2 = MiniGameLoadingActivity.this;
                    miniGameLoadingActivity2.checkModAndStart(miniGameLoadingActivity2.gameId);
                }
            }
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Iterator<ActivityManager.RunningServiceInfo> it2 = ((ActivityManager) MiniGameLoadingActivity.this.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(Integer.MAX_VALUE).iterator();
                while (it2.hasNext()) {
                    if (it2.next().service.getClassName().equals(MessengerService.class.getName())) {
                        com.join.mgps.Util.h1.a("messenger service is running", new Object[0]);
                        return;
                    }
                }
                com.join.mgps.Util.h1.a("start messenger service", new Object[0]);
                MiniGameLoadingActivity.this.startService(new Intent(MiniGameLoadingActivity.this, (Class<?>) MessengerService.class));
            } catch (SecurityException e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            com.join.mgps.va.overmind.i.q().n0();
            MiniGameLoadingActivity.this.prepare();
            File file = new File(com.join.mgps.va.overmind.k.f73277a.N(MiniGameLoadingActivity.this.packageName));
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            MiniGameLoadingActivity miniGameLoadingActivity = MiniGameLoadingActivity.this;
            PluginConfig.setModConfig(file + "", miniGameLoadingActivity.modPath, miniGameLoadingActivity.modVersion, miniGameLoadingActivity.modCode, System.currentTimeMillis());
            if (com.join.mgps.va.overmind.i.q().R(MiniGameLoadingActivity.this.packageName)) {
                MiniGameLoadingActivity.this.copyExtFile();
                return;
            }
            com.join.mgps.va.overmind.i iVarQ = com.join.mgps.va.overmind.i.q();
            MiniGameLoadingActivity miniGameLoadingActivity2 = MiniGameLoadingActivity.this;
            String absolutePath = file.getAbsolutePath();
            MiniGameLoadingActivity miniGameLoadingActivity3 = MiniGameLoadingActivity.this;
            iVarQ.o(miniGameLoadingActivity2, absolutePath, miniGameLoadingActivity3.packageName, miniGameLoadingActivity3.modPath, miniGameLoadingActivity3.modVersion, miniGameLoadingActivity3.modCode, miniGameLoadingActivity3.modType == 0, false);
        }
    }

    class c implements com.github.snowdream.android.app.downloader.b.InterfaceC0591b {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MiniGameLoadingActivity.this.showProgress(true);
                MiniGameLoadingActivity.this.showSpeedStatus(true);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f54715b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f54716c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f54717d;

            b(final String val$url, final int val$progress, final String val$speed) {
                this.f54715b = val$url;
                this.f54716c = val$progress;
                this.f54717d = val$speed;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) MiniGameLoadingActivity.tasks.get(this.f54715b);
                if (cVar != null) {
                    MiniGameLoadingActivity.this.pb_progress.setProgress(this.f54716c);
                    MiniGameLoadingActivity miniGameLoadingActivity = MiniGameLoadingActivity.this;
                    miniGameLoadingActivity.tv_loading_progress.setText(String.format(miniGameLoadingActivity.getResources().getString(R.string.s_mod_progress_status_1), UtilsMy.e(cVar.c()) + "", UtilsMy.e(cVar.e()) + "", this.f54716c + "%"));
                    MiniGameLoadingActivity miniGameLoadingActivity2 = MiniGameLoadingActivity.this;
                    miniGameLoadingActivity2.tv_speed.setText(String.format(miniGameLoadingActivity2.getResources().getString(R.string.s_mod_progress_status_2), UtilsMy.e(cVar.e()) + "", this.f54717d + "", "v" + MiniGameLoadingActivity.this.modVersion));
                }
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.MiniGameLoadingActivity$c$c, reason: collision with other inner class name */
        class RunnableC0675c implements Runnable {
            RunnableC0675c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MiniGameLoadingActivity.this.showProgress(false);
                MiniGameLoadingActivity.this.showSpeedStatus(false);
            }
        }

        c() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onError(String url) {
            MiniGameLoadingActivity.this.startCopyFile();
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onFinish(String url) {
            com.join.mgps.Util.h1.a("onFinish onStart - " + url, new Object[0]);
            com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) MiniGameLoadingActivity.tasks.get(url);
            if (cVar != null) {
                if (MiniGameLoadingActivity.this.downloadTask.isMod()) {
                    if (com.join.mgps.Util.t2.i(MiniGameLoadingActivity.this.sModInfo)) {
                        ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(MiniGameLoadingActivity.this.sModInfo, ModInfoBean.class);
                        if (modInfoBean != null) {
                            MiniGameLoadingActivity.this.downloadTask.setResource_url_remote(modInfoBean.getDown_url());
                            modInfoBean.setStatus(14);
                            MiniGameLoadingActivity.this.downloadTask.setMod_info(JsonMapper.toJsonString(modInfoBean));
                        } else {
                            MiniGameLoadingActivity miniGameLoadingActivity = MiniGameLoadingActivity.this;
                            miniGameLoadingActivity.downloadTask.setMod_info(JsonMapper.toJsonString(miniGameLoadingActivity.sModInfo));
                        }
                    }
                } else if (APKUtils.O(MiniGameLoadingActivity.this.downloadTask) && com.join.mgps.Util.t2.i(MiniGameLoadingActivity.this.sModInfo)) {
                    SingleGameModInfoBean singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(MiniGameLoadingActivity.this.sModInfo, SingleGameModInfoBean.class);
                    if (singleGameModInfoBean != null) {
                        MiniGameLoadingActivity.this.downloadTask.setResource_url_remote(singleGameModInfoBean.getDownUrl());
                        singleGameModInfoBean.setStatus(14);
                        MiniGameLoadingActivity.this.downloadTask.setSingle_game_mod_info(JsonMapper.toJsonString(singleGameModInfoBean));
                    } else {
                        MiniGameLoadingActivity miniGameLoadingActivity2 = MiniGameLoadingActivity.this;
                        miniGameLoadingActivity2.downloadTask.setSingle_game_mod_info(JsonMapper.toJsonString(miniGameLoadingActivity2.sModInfo));
                    }
                }
                MiniGameLoadingActivity.this.modPath = cVar.d() + cVar.h();
                MiniGameLoadingActivity miniGameLoadingActivity3 = MiniGameLoadingActivity.this;
                miniGameLoadingActivity3.downloadTask.setResource_path(miniGameLoadingActivity3.modPath);
                q5.f.M().m(MiniGameLoadingActivity.this.downloadTask);
            }
            MiniGameLoadingActivity.this.runOnUiThread(new RunnableC0675c());
            MiniGameLoadingActivity.this.startCopyFile();
            MiniGameLoadingActivity.tasks.remove(url);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onProgress(String url, int progress, String speed) {
            MiniGameLoadingActivity.this.runOnUiThread(new b(url, progress, speed));
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStart(String url) {
            com.join.mgps.Util.h1.a("PreDownloadPlug onStart - " + url, new Object[0]);
            MiniGameLoadingActivity.this.runOnUiThread(new a());
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStop(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onWait(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void updateSize(String url, long actualSize) {
        }
    }

    class d implements Runnable {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MiniGameLoadingActivity.this.pb_progress.setProgress(0);
                MiniGameLoadingActivity miniGameLoadingActivity = MiniGameLoadingActivity.this;
                miniGameLoadingActivity.tv_loading_progress.setText(String.format(miniGameLoadingActivity.getResources().getString(R.string.s_mod_progress_status_3), "0%"));
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            MiniGameLoadingActivity.this.soCopyStartTasks.add("copyExtFile");
            com.join.mgps.va.overmind.k kVar = com.join.mgps.va.overmind.k.f73277a;
            String strV = kVar.V(MiniGameLoadingActivity.this.packageName);
            MiniGameLoadingActivity.this.totalObbLength = FileUtils.fileSize(strV);
            Bundle bundle = new Bundle();
            bundle.putString("modPath", MiniGameLoadingActivity.this.modPath);
            bundle.putString("gameId", MiniGameLoadingActivity.this.gameId);
            bundle.putLong("obbSize", MiniGameLoadingActivity.this.totalObbLength);
            MiniGameLoadingActivity miniGameLoadingActivity = MiniGameLoadingActivity.this;
            com.join.mgps.va.overmind.m.d(miniGameLoadingActivity.packageName, miniGameLoadingActivity.userId, bundle);
            if (MiniGameLoadingActivity.this.totalObbLength == 0) {
                MiniGameLoadingActivity.this.soCopyFinishTasks.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
                return;
            }
            long jB = com.join.mgps.va.overmind.m.b(kVar.X(MiniGameLoadingActivity.this.packageName));
            MiniGameLoadingActivity.this.calculateSize();
            if (MiniGameLoadingActivity.this.totalObbLength != jB) {
                MiniGameLoadingActivity.this.runOnUiThread(new a());
            } else {
                MiniGameLoadingActivity.this.soCopyFinishTasks.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
            }
        }
    }

    class e implements Runnable {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f54723b;

            a(final int val$progress) {
                this.f54723b = val$progress;
            }

            @Override // java.lang.Runnable
            public void run() {
                MiniGameLoadingActivity.this.pb_progress.setProgress(this.f54723b);
                MiniGameLoadingActivity miniGameLoadingActivity = MiniGameLoadingActivity.this;
                miniGameLoadingActivity.tv_loading_progress.setText(String.format(miniGameLoadingActivity.getResources().getString(R.string.s_mod_progress_status_3), this.f54723b + "%"));
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            while (!MiniGameLoadingActivity.this.isCopyFinish) {
                try {
                    long jB = com.join.mgps.va.overmind.m.b(com.join.mgps.va.overmind.k.f73277a.X(MiniGameLoadingActivity.this.packageName));
                    MiniGameLoadingActivity miniGameLoadingActivity = MiniGameLoadingActivity.this;
                    miniGameLoadingActivity.isCopyFinish = jB >= miniGameLoadingActivity.totalObbLength;
                    int i10 = MiniGameLoadingActivity.this.totalObbLength == 0 ? 100 : (int) ((jB / MiniGameLoadingActivity.this.totalObbLength) * 100);
                    Thread.currentThread();
                    Thread.sleep(1000L);
                    MiniGameLoadingActivity.this.runOnUiThread(new a(i10));
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            MiniGameLoadingActivity.this.soCopyFinishTasks.add("copyExtFile");
            Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
        }
    }

    class f extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f54725b = true;

        public f() {
        }

        public void a(boolean monitor) {
            this.f54725b = monitor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            float f10;
            float f11;
            super.run();
            try {
                Random random = new Random();
                int iNextInt = random.nextInt(10) + 70;
                int iNextInt2 = random.nextInt(10) + 80;
                int i10 = 0;
                int i11 = 0;
                while (this.f54725b && i10 < 100) {
                    if (i11 < 3) {
                        f10 = iNextInt;
                        f11 = 3.0f;
                    } else {
                        if (i11 < 3 || i11 >= 15) {
                            this.f54725b = false;
                        } else {
                            f10 = iNextInt2 - iNextInt;
                            f11 = 12.0f;
                        }
                        MiniGameLoadingActivity.this.updateLaunchProgress(i10);
                        i11++;
                        Thread.sleep(1000L);
                    }
                    i10 = (int) (i10 + (f10 / f11));
                    MiniGameLoadingActivity.this.updateLaunchProgress(i10);
                    i11++;
                    Thread.sleep(1000L);
                }
                MiniGameLoadingActivity.this.updateLaunchProgress(100);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calculateSize() {
        new Thread(new e()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void copyExtFile() {
        new Thread(new d()).start();
    }

    private void handleIntent() {
        if (getIntent() != null) {
            this.isLaunchApp = getIntent().getBooleanExtra("isLaunchApp", false);
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        this.downloadTask = downloadTaskG;
        if (downloadTaskG == null) {
            ToastManager.show("游戏数据获取错误");
            finish();
            return;
        }
        com.join.android.app.common.utils.l.o(this.sdv_image, downloadTaskG.getPortraitURL());
        this.tv_name.setText(this.downloadTask.getShowName());
        if (this.isLaunchApp) {
            this.packageName = getIntent().getStringExtra("packageName");
            this.modPath = getIntent().getStringExtra("modPath");
            this.modVersion = getIntent().getStringExtra("modVersion");
            this.modCode = getIntent().getIntExtra("modCode", 0);
            this.modType = getIntent().getIntExtra("modType", 0);
            this.userId = getIntent().getIntExtra("userId", 0);
            this.sModInfo = getIntent().getStringExtra("_mod_info");
            if (TextUtils.isEmpty(this.packageName)) {
                finish();
                return;
            }
            new PrefDef_(this).lastLaunchModGameId().g(this.gameId);
            this.modReceiver = new ModReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(com.join.mgps.mod.utils.d.f71918t);
            intentFilter.addAction(com.join.mgps.mod.utils.d.f71919u);
            intentFilter.addAction(com.join.mgps.mod.utils.d.f71920v);
            intentFilter.addAction(com.join.mgps.mod.utils.d.f71921w);
            registerReceiver(this.modReceiver, intentFilter);
            checkModAndStart(this.gameId);
            pullUpMessengerSrv();
            showSpeedStatus(false);
            this.tv_loading_progress.setText("启动中...");
        } else {
            showProgress(true);
            showSpeedStatus(true);
        }
        switchStatus(this.isLaunchApp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkReady$2() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkReady$3(Handler handler) {
        if (com.join.mgps.va.overmind.i.q().R(this.packageName)) {
            com.join.mgps.va.overmind.k kVar = com.join.mgps.va.overmind.k.f73277a;
            String[] strArr = {kVar.V(this.packageName), kVar.C(this.packageName), kVar.f0()};
            for (int i10 = 0; i10 < 3; i10++) {
                com.join.mgps.Util.o0.m(strArr[i10]);
            }
        }
        handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.o7
            @Override // java.lang.Runnable
            public final void run() {
                this.f57812b.lambda$checkReady$2();
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkReady$4(final Handler handler) {
        if (this.isLaunching || isFinishing()) {
            return;
        }
        this.isLaunching = true;
        Bundle bundle = new Bundle();
        bundle.putInt("wf_app_mode", 1);
        if (!AccountUtil_.getInstance_(this).isTourist()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("wf_mobile", AccountUtil_.getInstance_(this).getAccountData().getMobile());
            bundle.putString("wf_share_data", jsonObject.toString());
        }
        com.join.mgps.va.overmind.i.q().f0(this, this.userId, this.packageName, bundle);
        new Thread(new Runnable() { // from class: com.join.mgps.activity.l7
            @Override // java.lang.Runnable
            public final void run() {
                this.f57402b.lambda$checkReady$3(handler);
            }
        }).start();
        f fVar = this.progressMonitor;
        if (fVar != null) {
            fVar.a(false);
            this.progressMonitor = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$launchMiniGame$0(DownloadTask downloadTask) {
        startVmGameV2(downloadTask);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showToast$1(String str) {
        com.join.mgps.Util.a3.b(this).d(str);
    }

    private void launchMiniGame() {
        final DownloadTask downloadTaskG;
        if (!com.join.mgps.Util.t2.i(this.gameId) || (downloadTaskG = q5.f.M().G(this.gameId)) == null) {
            return;
        }
        if ((downloadTaskG.isMiniGame() && downloadTaskG.isSingleGame()) || downloadTaskG.isH5VmGame()) {
            if (com.join.mgps.va.overmind.i.q().R(downloadTaskG.getPackageName()) && (APKUtils.b(this, downloadTaskG) || APKUtils.h(this, new Function0() { // from class: com.join.mgps.activity.k7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return this.f57384b.lambda$launchMiniGame$0(downloadTaskG);
                }
            }))) {
                return;
            }
            startVmGameV2(downloadTaskG);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0076, code lost:
    
        r4 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepare() {
        /*
            Method dump skipped, instruction units count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MiniGameLoadingActivity.prepare():void");
    }

    private void receiveDelete(DownloadTask task) {
        if (task != null && this.gameId.equals(task.getCrc_link_type_val())) {
            ToastManager.show("下载文件已删除");
            finish();
        }
    }

    private void receiveError(DownloadTask task) {
        if (task == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(task.getCrc_link_type_val()) || !task.getCrc_link_type_val().equals(this.gameId)) {
                return;
            }
            UtilsMy.U4(task);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask task) {
        if (task != null && this.gameId.equals(task.getCrc_link_type_val())) {
            this.downloadTask = task;
        }
    }

    private void receiveSuccess(DownloadTask task) {
        if (task != null && this.gameId.equals(task.getCrc_link_type_val())) {
            this.tv_speed.setText("");
            this.pb_progress.setProgress(100);
        }
    }

    private void setStatusBar() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.statubar.getLayoutParams();
        layoutParams.height = com.join.android.app.common.utils.q.v(this);
        this.statubar.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgress(boolean show) {
        this.pb_progress.setVisibility(show ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSpeedStatus(boolean show) {
        this.tv_speed.setVisibility(show ? 0 : 4);
    }

    private boolean startVmGameV2(DownloadTask task) {
        int i10;
        if (!com.join.mgps.va.overmind.i.q().K(task.getPackageName())) {
            return false;
        }
        ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(task.getMod_info(), ModInfoBean.class);
        ModMeta modMeta = new ModMeta();
        modMeta.setPackageName(task.getPackageName());
        modMeta.setModPath(task.getResource_path());
        if (modInfoBean != null) {
            modMeta.setModVersion(modInfoBean.getVer() + "");
            modMeta.setModCode(modInfoBean.getVer());
        }
        modMeta.setGameId(task.getCrc_link_type_val());
        modMeta.setModType(0);
        modMeta.setAndroidId(com.join.android.app.common.utils.q.n(MApplication.f3182z).e(MApplication.f3182z));
        modMeta.setPlatform("wufun");
        modMeta.setPackage_type("wufun");
        modMeta.setTypeId(UtilsMy.g2(task));
        try {
            com.join.mgps.va.overmind.i.h0(task.getPackageName(), task.getResource_path());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.join.mgps.va.overmind.i.q().c0(this, modMeta, task);
        if (APKUtils.K(task)) {
            i10 = 1;
        } else {
            i10 = APKUtils.P(task) ? 2 : 0;
        }
        com.papa.sim.statistic.t.l(this).i1(task.getCrc_link_type_val(), AccountUtil_.getInstance_(this).getUid(), i10, task.get_from(), task.get_from_type(), task.getExt());
        if (task.getModInfoBean() != null) {
            UtilsMy.Q4(this, task.getModInfoBean().getMain_game_id());
        } else {
            UtilsMy.Q4(this, task.getCrc_link_type_val());
        }
        return true;
    }

    private void switchStatus(boolean isLaunchApp) {
        if (isLaunchApp) {
            this.tv_cancel.setVisibility(4);
            this.ll_back.setVisibility(4);
        } else {
            this.tv_cancel.setVisibility(0);
            this.ll_back.setVisibility(0);
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask != null) {
            if (downloadTask.getStatus() != 2 && this.downloadTask.getStatus() != 12) {
                if (this.downloadTask.getStatus() == 5 && !this.isLaunchApp && this.gameId.equals(this.downloadTask.getCrc_link_type_val())) {
                    this.pb_progress.setProgress(100);
                    this.tv_speed.setText("");
                    return;
                }
                return;
            }
            try {
                if (this.gameId.equals(this.downloadTask.getCrc_link_type_val())) {
                    DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(this.downloadTask.getCrc_link_type_val());
                    this.pb_progress.setProgress((int) downloadTaskG.getProgress());
                    this.tv_loading_progress.setText("游戏加载中 " + downloadTaskG.getProgress() + "% \n体验后可对游戏进行评价哦");
                    this.tv_speed.setText("当前网速 " + downloadTaskG.getSpeed() + "/s");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.j0.a().d(this);
        setStatusBar();
        if (!com.join.mgps.Util.t2.h(this.gameId)) {
            handleIntent();
        } else {
            ToastManager.show("游戏信息获取失败，请重试");
            finish();
        }
    }

    @Click({R.id.ll_back})
    void back() {
        finish();
    }

    @Click({R.id.tv_cancel})
    void cancel() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask != null) {
            com.php25.PDownload.d.i(downloadTask);
        }
        finish();
    }

    void checkModAndStart(String gameId) {
        DownloadTask downloadTask;
        if (TextUtils.isEmpty(gameId)) {
            showToast("游戏信息[ID]缺失");
            finish();
            return;
        }
        this.downloadTask = q5.f.M().G(gameId);
        if ((!com.join.mgps.Util.t2.i(this.sModInfo) || !com.join.android.app.common.utils.m.j(this) || (downloadTask = this.downloadTask) == null || (!com.join.mgps.Util.t2.h(downloadTask.getResource_path()) && com.join.mgps.Util.o0.D(this.downloadTask.getResource_path()))) && !modNeedUpdate(this.downloadTask)) {
            startCopyFile();
        } else {
            startUpdate(this.downloadTask);
        }
    }

    synchronized void checkReady() {
        boolean z10;
        Iterator<String> it2 = this.soCopyStartTasks.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = true;
                break;
            }
            if (!this.soCopyFinishTasks.contains(it2.next())) {
                z10 = false;
                break;
            }
        }
        if (z10) {
            final Handler handler = new Handler();
            handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.n7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57780b.lambda$checkReady$4(handler);
                }
            }, 2000L);
        }
    }

    public void initPreDownloadFactory() {
        factory = com.github.snowdream.android.app.downloader.b.e();
        c cVar = new c();
        listener = cVar;
        factory.m(cVar);
    }

    boolean modNeedUpdate(DownloadTask task) {
        ModInfoBean modInfoBean;
        if (task == null) {
            return false;
        }
        if (!APKUtils.P(task)) {
            return APKUtils.K(task) && (modInfoBean = task.getModInfoBean()) != null && !TextUtils.isEmpty(modInfoBean.getDown_url()) && modInfoBean.getStatus() == 9;
        }
        SingleGameModInfoBean singleGameModInfoBean = task.getSingleGameModInfoBean();
        return (singleGameModInfoBean == null || TextUtils.isEmpty(singleGameModInfoBean.getDownUrl()) || singleGameModInfoBean.getStatus() != 9) ? false : true;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().A(this);
        super.onDestroy();
        this.isLaunching = false;
        ModReceiver modReceiver = this.modReceiver;
        if (modReceiver != null) {
            unregisterReceiver(modReceiver);
        }
        f fVar = this.progressMonitor;
        if (fVar != null) {
            fVar.a(false);
            this.progressMonitor = null;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC == 5) {
            updateUI(downloadTaskA, 5);
            this.isLaunchAfterDown = true;
            launchMiniGame();
            return;
        }
        if (iC == 6) {
            updateUI(downloadTaskA, 6);
            return;
        }
        if (iC == 7) {
            updateUI(downloadTaskA, 3);
            return;
        }
        if (iC == 8) {
            updateProgressPartly();
            return;
        }
        if (iC == 48) {
            if (downloadTaskA == null || !this.gameId.equals(downloadTaskA.getCrc_link_type_val())) {
                return;
            }
            this.tv_loading_progress.setText("游戏安装中...\n体验后可对游戏进行评价哦");
            this.tv_speed.setVisibility(4);
            this.pb_progress.setVisibility(4);
            this.tv_cancel.setVisibility(4);
            return;
        }
        switch (iC) {
            case 10:
                updateUI(downloadTaskA, 7);
                break;
            case 11:
                updateUI(downloadTaskA, 5);
                finish();
                break;
            case 12:
                updateUI(downloadTaskA, 8);
                break;
            case 13:
                updateUI(downloadTaskA, 9);
                break;
        }
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent();
    }

    void pullUpMessengerSrv() {
        this.executor.execute(new a());
    }

    void showToast(final String msg) {
        runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.m7
            @Override // java.lang.Runnable
            public final void run() {
                this.f57489b.lambda$showToast$1(msg);
            }
        });
    }

    void startCopyFile() {
        if (this.isLaunchApp && !this.isLaunchAfterDown) {
            showProgress(true);
            f fVar = this.progressMonitor;
            if (fVar != null) {
                fVar.a(false);
                this.progressMonitor = null;
            }
            f fVar2 = new f();
            this.progressMonitor = fVar2;
            fVar2.a(true);
            this.progressMonitor.start();
        }
        this.executor.execute(new b());
    }

    void startUpdate(DownloadTask task) {
        initPreDownloadFactory();
        String down_url = "";
        boolean zP = APKUtils.P(task);
        if (zP) {
            SingleGameModInfoBean singleGameModInfoBean = task.getSingleGameModInfoBean();
            if (singleGameModInfoBean != null) {
                down_url = singleGameModInfoBean.getDownUrl();
            }
        } else {
            ModInfoBean modInfoBean = task.getModInfoBean();
            if (modInfoBean != null) {
                down_url = modInfoBean.getDown_url();
            }
        }
        String str = down_url;
        if (TextUtils.isEmpty(str)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(task.getShowName());
            sb2.append(", mod url null error, vm=");
            sb2.append(zP);
            startCopyFile();
            return;
        }
        com.github.snowdream.android.app.downloader.c cVar = new com.github.snowdream.android.app.downloader.c(str, com.join.mgps.Util.i1.d(str) + ".mod", com.join.mgps.Util.z.f50168g + "mod/" + task.getPackageName() + net.lingala.zip4j.util.e.F0, 0L);
        factory.b(cVar);
        if (tasks == null || cVar.i() == null || cVar.i().equals("")) {
            return;
        }
        String strI = cVar.i();
        if (tasks.get(cVar.i()) != null) {
            return;
        }
        synchronized (tasks) {
            tasks.put(strI, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLaunchProgress(int progress) {
        this.pb_progress.setProgress(progress);
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }
}
