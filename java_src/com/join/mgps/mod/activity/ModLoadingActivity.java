package com.join.mgps.mod.activity;

import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.Nullable;
import com.MApplication;
import com.byazt.hv.TTDownloadField;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.i1;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.f0;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.mod.bean.ModMetaParams;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.va.overmind.i;
import com.join.mgps.va.overmind.k;
import com.join.mgps.va.service.MessengerService;
import com.papa91.arc.util.FileUtils;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.shared.OMProxyActivity;
import com.xinzhu.overmind.shared.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import t6.p;

/* JADX INFO: loaded from: classes3.dex */
public class ModLoadingActivity extends ComponentActivity implements View.OnSystemUiVisibilityChangeListener {
    public static final String S = "_mod_info";
    private static com.github.snowdream.android.app.downloader.b T = null;
    static com.github.snowdream.android.app.downloader.b.InterfaceC0591b U = null;
    private static Map<String, com.github.snowdream.android.app.downloader.c> V = new ConcurrentHashMap(0);
    public static int W = 0;
    public static final int X = 2;
    private DownloadTask D;
    private LinearLayout E;
    private ProgressBar F;
    private TextView G;
    private TextView H;
    private ImageView L;
    private TextView M;
    AnimationDrawable O;
    private BroadcastReceiver P;
    f0 Q;
    protected ActivityResultLauncher<Intent> R;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f71841g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f71842h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f71843j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f71844k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f71845m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f71846o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f71847p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    String f71848q;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ModMetaParams f71849t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    ModReceiver f71850u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f71851v = false;
    List<String> A = new ArrayList();
    List<String> B = new ArrayList();
    boolean C = false;
    private boolean I = false;
    private String J = "";
    private long K = 0;
    private Executor N = new ThreadPoolExecutor(1, 2, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

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
                ModLoadingActivity.this.A.add(stringExtra);
                return;
            }
            if (action.equals(com.join.mgps.mod.utils.d.f71919u)) {
                String stringExtra2 = intent.getStringExtra("soName");
                if (TextUtils.isEmpty(stringExtra2)) {
                    ModLoadingActivity.this.f71851v = true;
                    ModLoadingActivity.this.checkReady();
                    return;
                }
                ModLoadingActivity.this.B.add(stringExtra2);
                ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
                if (modLoadingActivity.f71851v) {
                    modLoadingActivity.checkReady();
                    return;
                }
                return;
            }
            if (action.equals(com.join.mgps.mod.utils.d.f71921w)) {
                ModLoadingActivity.this.finish();
                return;
            }
            if (action.equals(com.join.mgps.mod.utils.d.f71920v)) {
                ModLoadingActivity.W++;
                o0.m(ModLoadingActivity.this.f71843j);
                o0.m(z.f50168g + "mod/" + ModLoadingActivity.this.D.getPackageName() + "/oat");
                if (!t2.i(ModLoadingActivity.this.J) || m.j(ModLoadingActivity.this) || ModLoadingActivity.W >= 2) {
                    ModLoadingActivity.this.startCopyFile();
                } else {
                    ModLoadingActivity modLoadingActivity2 = ModLoadingActivity.this;
                    modLoadingActivity2.checkModAndStart(modLoadingActivity2.f71841g);
                }
            }
        }
    }

    class OMProxyReceiver extends BroadcastReceiver {
        OMProxyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action) || !action.equals(OMProxyActivity.f89988k.c())) {
                return;
            }
            ModLoadingActivity.this.finish();
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Iterator<ActivityManager.RunningServiceInfo> it2 = ((ActivityManager) ModLoadingActivity.this.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(Integer.MAX_VALUE).iterator();
                while (it2.hasNext()) {
                    if (it2.next().service.getClassName().equals(MessengerService.class.getName())) {
                        h1.a("messenger service is running", new Object[0]);
                        return;
                    }
                }
                h1.a("start messenger service", new Object[0]);
                ModLoadingActivity.this.startService(new Intent(ModLoadingActivity.this, (Class<?>) MessengerService.class));
            } catch (SecurityException e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements com.github.snowdream.android.app.downloader.b.InterfaceC0591b {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.M.setVisibility(8);
                ModLoadingActivity.this.E.setVisibility(0);
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.mod.activity.ModLoadingActivity$b$b, reason: collision with other inner class name */
        class RunnableC0737b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71857b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f71858c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f71859d;

            RunnableC0737b(final String val$url, final int val$progress, final String val$speed) {
                this.f71857b = val$url;
                this.f71858c = val$progress;
                this.f71859d = val$speed;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) ModLoadingActivity.V.get(this.f71857b);
                if (cVar != null) {
                    ModLoadingActivity.this.F.setProgress(this.f71858c);
                    ModLoadingActivity.this.G.setText(String.format(ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_1), UtilsMy.e(cVar.c()) + "", UtilsMy.e(cVar.e()) + "", this.f71858c + "%"));
                    ModLoadingActivity.this.H.setText(String.format(ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_2), UtilsMy.e(cVar.e()) + "", this.f71859d + "", "v" + ModLoadingActivity.this.f71844k));
                }
            }
        }

        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.E.setVisibility(8);
                ModLoadingActivity.this.M.setVisibility(0);
            }
        }

        b() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onError(String url) {
            ModLoadingActivity.this.startCopyFile();
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onFinish(String url) {
            h1.a("onFinish onStart - " + url, new Object[0]);
            com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) ModLoadingActivity.V.get(url);
            if (cVar != null) {
                if (ModLoadingActivity.this.D.isMod()) {
                    if (t2.i(ModLoadingActivity.this.J)) {
                        ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(ModLoadingActivity.this.J, ModInfoBean.class);
                        if (modInfoBean != null) {
                            ModLoadingActivity.this.D.setResource_url_remote(modInfoBean.getDown_url());
                            modInfoBean.setStatus(14);
                            ModLoadingActivity.this.D.setMod_info(JsonMapper.toJsonString(modInfoBean));
                        } else {
                            ModLoadingActivity.this.D.setMod_info(JsonMapper.toJsonString(ModLoadingActivity.this.J));
                        }
                    }
                } else if (APKUtils.O(ModLoadingActivity.this.D) && t2.i(ModLoadingActivity.this.J)) {
                    SingleGameModInfoBean singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(ModLoadingActivity.this.J, SingleGameModInfoBean.class);
                    if (singleGameModInfoBean != null) {
                        ModLoadingActivity.this.D.setResource_url_remote(singleGameModInfoBean.getDownUrl());
                        singleGameModInfoBean.setStatus(14);
                        ModLoadingActivity.this.D.setSingle_game_mod_info(JsonMapper.toJsonString(singleGameModInfoBean));
                    } else {
                        ModLoadingActivity.this.D.setSingle_game_mod_info(JsonMapper.toJsonString(ModLoadingActivity.this.J));
                    }
                }
                ModLoadingActivity.this.f71843j = cVar.d() + cVar.h();
                ModLoadingActivity.this.D.setResource_path(ModLoadingActivity.this.f71843j);
                q5.f.M().m(ModLoadingActivity.this.D);
            }
            ModLoadingActivity.this.runOnUiThread(new c());
            ModLoadingActivity.this.startCopyFile();
            ModLoadingActivity.V.remove(url);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onProgress(String url, int progress, String speed) {
            ModLoadingActivity.this.runOnUiThread(new RunnableC0737b(url, progress, speed));
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStart(String url) {
            h1.a("PreDownloadPlug onStart - " + url, new Object[0]);
            ModLoadingActivity.this.runOnUiThread(new a());
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

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModLoadingActivity.this.sendBroadcast(new Intent(OMProxyActivity.f89988k.b()));
        }
    }

    class d implements Runnable {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.E.setVisibility(0);
                ModLoadingActivity.this.F.setProgress(0);
                ModLoadingActivity.this.H.setVisibility(8);
                ModLoadingActivity.this.G.setText(String.format(ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_3), "0%"));
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            ModLoadingActivity.this.A.add("copyExtFile");
            k kVar = k.f73277a;
            String strV = kVar.V(ModLoadingActivity.this.f71842h);
            ModLoadingActivity.this.K = FileUtils.fileSize(strV);
            Bundle bundle = new Bundle();
            bundle.putString("modPath", ModLoadingActivity.this.f71843j);
            bundle.putString("gameId", ModLoadingActivity.this.f71841g);
            bundle.putLong("obbSize", ModLoadingActivity.this.K);
            ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
            com.join.mgps.va.overmind.m.d(modLoadingActivity.f71842h, modLoadingActivity.f71847p, bundle);
            if (ModLoadingActivity.this.K == 0) {
                ModLoadingActivity.this.B.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
                return;
            }
            long jB = com.join.mgps.va.overmind.m.b(kVar.X(ModLoadingActivity.this.f71842h));
            ModLoadingActivity.this.calculateSize();
            if (ModLoadingActivity.this.K != jB) {
                ModLoadingActivity.this.runOnUiThread(new a());
            } else {
                ModLoadingActivity.this.B.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
            }
        }
    }

    class e implements Runnable {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f71866b;

            a(final int val$progress) {
                this.f71866b = val$progress;
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.F.setProgress(this.f71866b);
                ModLoadingActivity.this.G.setText(String.format(ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_3), this.f71866b + "%"));
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            while (!ModLoadingActivity.this.I) {
                try {
                    long jB = com.join.mgps.va.overmind.m.b(k.f73277a.X(ModLoadingActivity.this.f71842h));
                    ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
                    modLoadingActivity.I = jB >= modLoadingActivity.K;
                    int i10 = ModLoadingActivity.this.K == 0 ? 100 : (int) ((jB / ModLoadingActivity.this.K) * 100);
                    Thread.currentThread();
                    Thread.sleep(1000L);
                    ModLoadingActivity.this.runOnUiThread(new a(i10));
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            ModLoadingActivity.this.B.add("copyExtFile");
            Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
        }
    }

    class f implements Runnable {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.E.setVisibility(0);
                ModLoadingActivity.this.F.setProgress(0);
                ModLoadingActivity.this.H.setVisibility(8);
                ModLoadingActivity.this.G.setText(String.format(ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_3), "0%"));
            }
        }

        f() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            i iVarQ = i.q();
            ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
            iVarQ.p0(modLoadingActivity.f71841g, modLoadingActivity.f71847p, modLoadingActivity.f71842h);
            ModLoadingActivity.this.A.add("copyExtFile");
            k kVar = k.f73277a;
            ModLoadingActivity.this.K = com.join.mgps.va.overmind.m.b(kVar.X(ModLoadingActivity.this.f71842h)) + com.join.mgps.va.overmind.m.b(kVar.F(ModLoadingActivity.this.f71842h));
            ModLoadingActivity.this.y();
            if (ModLoadingActivity.this.K == 0) {
                ModLoadingActivity.this.B.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
                return;
            }
            String strV = kVar.V(ModLoadingActivity.this.f71842h);
            String strC = kVar.C(ModLoadingActivity.this.f71842h);
            long jFileSize = FileUtils.fileSize(strV);
            long jFileSize2 = FileUtils.fileSize(strC);
            if (ModLoadingActivity.this.K != jFileSize + jFileSize2) {
                com.join.mgps.va.overmind.m.c(ModLoadingActivity.this.f71842h, jFileSize, jFileSize2);
                ModLoadingActivity.this.runOnUiThread(new a());
            } else {
                ModLoadingActivity.this.B.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
            }
        }
    }

    class g implements Runnable {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f71871b;

            a(final int val$progress) {
                this.f71871b = val$progress;
            }

            @Override // java.lang.Runnable
            public void run() {
                ModLoadingActivity.this.F.setProgress(this.f71871b);
                ModLoadingActivity.this.G.setText(String.format(ModLoadingActivity.this.getResources().getString(R.string.s_mod_progress_status_3), this.f71871b + "%"));
            }
        }

        g() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            while (!ModLoadingActivity.this.I) {
                try {
                    k kVar = k.f73277a;
                    long jFileSize = FileUtils.fileSize(kVar.V(ModLoadingActivity.this.f71842h));
                    long jFileSize2 = FileUtils.fileSize(kVar.V(ModLoadingActivity.this.f71842h));
                    ModLoadingActivity modLoadingActivity = ModLoadingActivity.this;
                    long j10 = jFileSize + jFileSize2;
                    modLoadingActivity.I = j10 >= modLoadingActivity.K;
                    int i10 = ModLoadingActivity.this.K == 0 ? 100 : (int) ((j10 / ModLoadingActivity.this.K) * 100);
                    Thread.currentThread();
                    Thread.sleep(1000L);
                    ModLoadingActivity.this.runOnUiThread(new a(i10));
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            ModLoadingActivity.this.B.add("copyExtFile");
            Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(ActivityResult activityResult) {
        if (activityResult.getResultCode() == -1) {
            startCopyFile();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() throws Throwable {
        EMUApkTable eMUApkTableN;
        i.q().o0(this.f71842h);
        prepare();
        boolean z10 = false;
        if (!i.q().R(this.f71842h)) {
            i.q().q0(this.f71842h, this.f71847p);
            F(false);
            if (new File(k.f73277a.k(this.f71842h) + "/obd.lock").exists()) {
                return;
            }
            z();
            return;
        }
        Boolean boolValueOf = Boolean.TRUE;
        if (i.H()) {
            eMUApkTableN = p.o().n(ConstantIntEnum.VA32.value() + "");
        } else {
            eMUApkTableN = p.o().n(ConstantIntEnum.VA64.value() + "");
        }
        if (i.q().P() && eMUApkTableN != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(eMUApkTableN.getPackage_name());
                intent.setComponent(new ComponentName(eMUApkTableN.getPackage_name(), "com.xinzhu.demoapp.stub.EmptyActivity"));
                List<ResolveInfo> listQueryIntentActivities = getPackageManager().queryIntentActivities(intent, 0);
                if (listQueryIntentActivities != null && listQueryIntentActivities.size() > 0) {
                    z10 = true;
                }
                boolValueOf = Boolean.valueOf(z10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        i.q().A0(this.f71842h, this.f71841g, boolValueOf.booleanValue());
        if (this.f71849t != null) {
            i.q().C0(this.f71849t.getPackageName(), this.f71849t.getGoldFingerSwitch(), this.f71849t.getArchiveCloudSwitch(), this.f71849t.getIntroductionSwitch(), this.f71849t.getChannelNum(), this.f71849t.getTarget_version() + "", this.f71849t.getAndroidId(), this.f71849t.getPlatform(), this.f71849t.getPackage_type(), this.f71849t.getTypeId(), boolValueOf.booleanValue());
        }
        F(boolValueOf.booleanValue());
        copyExtFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calculateSize() {
        new Thread(new e()).start();
    }

    private synchronized void copyExtFile() {
        new Thread(new d()).start();
    }

    private void handleIntent() {
        this.f71841g = getIntent().getStringExtra("gameId");
        this.f71842h = getIntent().getStringExtra("packageName");
        this.f71843j = getIntent().getStringExtra("modPath");
        this.f71844k = getIntent().getStringExtra("modVersion");
        this.f71845m = getIntent().getIntExtra("modCode", 0);
        this.f71846o = getIntent().getIntExtra("modType", 0);
        this.f71847p = getIntent().getIntExtra("userId", 0);
        this.f71848q = getIntent().getStringExtra("typeId");
        String stringExtra = getIntent().getStringExtra("modMeta");
        this.J = getIntent().getStringExtra("_mod_info");
        if (TextUtils.isEmpty(this.f71842h)) {
            finish();
            return;
        }
        if (!TextUtils.isEmpty(stringExtra)) {
            try {
                this.f71849t = (ModMetaParams) JsonMapper.getInstance().fromJson(stringExtra, ModMetaParams.class);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        MApplication.f3182z.p().lastLaunchModGameId().g(this.f71841g);
        this.E = (LinearLayout) findViewById(R.id.ll_download_status);
        this.F = (ProgressBar) findViewById(R.id.pb_progress);
        this.G = (TextView) findViewById(R.id.tv_progress_status_1);
        this.H = (TextView) findViewById(R.id.tv_progress_status_2);
        this.M = (TextView) findViewById(R.id.tv_launch_status);
        ImageView imageView = (ImageView) findViewById(R.id.iv_loading);
        this.L = imageView;
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getDrawable();
        this.O = animationDrawable;
        animationDrawable.start();
        this.f71850u = new ModReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(com.join.mgps.mod.utils.d.f71918t);
        intentFilter.addAction(com.join.mgps.mod.utils.d.f71919u);
        intentFilter.addAction(com.join.mgps.mod.utils.d.f71920v);
        intentFilter.addAction(com.join.mgps.mod.utils.d.f71921w);
        registerReceiver(this.f71850u, intentFilter);
        checkModAndStart(this.f71841g);
        pullUpMessengerSrv();
        UtilsMy.Z1(this, 12, this.f71841g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkReady$4(Handler handler) {
        if (this.C || isFinishing()) {
            return;
        }
        this.C = true;
        this.E.setVisibility(8);
        this.M.setVisibility(0);
        i.q().a0(this, this.f71847p, this.f71842h);
        MApplication.f3182z.O(true);
        handler.postDelayed(new Runnable() { // from class: com.join.mgps.mod.activity.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f71874b.A();
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showToast$1(String str) {
        a3.b(this).d(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
    
        r4 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void prepare() {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.mod.activity.ModLoadingActivity.prepare():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        new Thread(new g()).start();
    }

    private synchronized void z() {
        new Thread(new f()).start();
    }

    boolean D() {
        try {
            j jVar = j.f90033a;
            if (!jVar.m() && !jVar.p()) {
                return false;
            }
            File fileJ = com.xinzhu.overmind.a.j(this.f71842h);
            return fileJ.exists() && fileJ.length() > 314572800;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void E() {
        this.N.execute(new Runnable() { // from class: com.join.mgps.mod.activity.a
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f71873b.C();
            }
        });
    }

    void F(boolean runInPlugin) throws Throwable {
        File file = new File(k.f73277a.N(this.f71842h));
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        i.q().o(this, file.getAbsolutePath(), this.f71842h, this.f71843j, this.f71844k, this.f71845m, this.f71846o == 0, runInPlugin);
        if (runInPlugin) {
            return;
        }
        PluginConfig.setModConfig(file + "", this.f71843j, this.f71844k, this.f71845m, System.currentTimeMillis());
    }

    void checkModAndStart(String gameId) {
        DownloadTask downloadTask;
        if (TextUtils.isEmpty(gameId)) {
            showToast("游戏信息[ID]缺失");
            finish();
            return;
        }
        this.D = q5.f.M().G(gameId);
        if ((t2.i(this.J) && m.j(this) && (downloadTask = this.D) != null && (t2.h(downloadTask.getResource_path()) || !o0.D(this.D.getResource_path()))) || modNeedUpdate(this.D)) {
            startUpdate(this.D);
            return;
        }
        if (!i.q().R(this.f71842h)) {
            startCopyFile();
            return;
        }
        if (Build.VERSION.SDK_INT < 34) {
            startCopyFile();
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setClassName(Overmind.getPluginPkg(), "com.xinzhu.demoapp.stub.EmptyActivity");
            this.R.launch(intent);
        } catch (ActivityNotFoundException unused) {
            startCopyFile();
        }
    }

    synchronized void checkReady() {
        boolean z10;
        Iterator<String> it2 = this.A.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = true;
                break;
            }
            if (!this.B.contains(it2.next())) {
                z10 = false;
                break;
            }
        }
        if (z10) {
            runOnUiThread(new c());
            final Handler handler = new Handler();
            handler.postDelayed(new Runnable() { // from class: com.join.mgps.mod.activity.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f71875b.lambda$checkReady$4(handler);
                }
            }, 2000L);
        }
    }

    void hideNavigationBar() {
        setSystemUiVisibility();
    }

    public void initPreDownloadFactory() {
        T = com.github.snowdream.android.app.downloader.b.e();
        b bVar = new b();
        U = bVar;
        T.m(bVar);
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

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mod_loading);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
        this.R = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.join.mgps.mod.activity.d
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                this.f71877a.B((ActivityResult) obj);
            }
        });
        handleIntent();
        OMProxyReceiver oMProxyReceiver = new OMProxyReceiver();
        this.P = oMProxyReceiver;
        registerReceiver(oMProxyReceiver, new IntentFilter(OMProxyActivity.f89988k.c()));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            this.C = false;
            ModReceiver modReceiver = this.f71850u;
            if (modReceiver != null) {
                unregisterReceiver(modReceiver);
            }
            AnimationDrawable animationDrawable = this.O;
            if (animationDrawable != null) {
                animationDrawable.stop();
            }
            BroadcastReceiver broadcastReceiver = this.P;
            if (broadcastReceiver != null) {
                unregisterReceiver(broadcastReceiver);
            }
        } catch (Exception e10) {
            h1.e(Log.getStackTraceString(e10));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if ("EmptyActivity_RESULT_OK".equals(intent.getStringExtra("action"))) {
            return;
        }
        setIntent(intent);
        handleIntent();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        hideNavigationBar();
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int visibility) {
        if (visibility == 0) {
            hideNavigationBar();
        }
    }

    void pullUpMessengerSrv() {
        this.N.execute(new a());
    }

    void setSystemUiVisibility() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    void showToast(final String msg) {
        runOnUiThread(new Runnable() { // from class: com.join.mgps.mod.activity.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f71878b.lambda$showToast$1(msg);
            }
        });
    }

    void startCopyFile() {
        try {
            if (i.q().R(this.f71842h) && D()) {
                Intent intent = new Intent(OMProxyActivity.f89988k.a());
                intent.setComponent(new ComponentName(Overmind.getPluginPkg(), OMProxyActivity.class.getName()));
                intent.setPackage(Overmind.getPluginPkg());
                startActivity(intent);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        E();
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
        com.github.snowdream.android.app.downloader.c cVar = new com.github.snowdream.android.app.downloader.c(str, i1.d(str) + ".mod", z.f50168g + "mod/" + task.getPackageName() + net.lingala.zip4j.util.e.F0, 0L);
        T.b(cVar);
        if (V == null || cVar.i() == null || cVar.i().equals("")) {
            return;
        }
        String strI = cVar.i();
        if (V.get(cVar.i()) != null) {
            return;
        }
        synchronized (V) {
            V.put(strI, cVar);
        }
    }
}
