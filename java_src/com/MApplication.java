package com;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.multidex.MultiDex;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.android.app.common.http.DNSDataResult;
import com.join.android.app.common.http.MiitHelper;
import com.join.android.app.common.servcie.DownloadService_;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.o;
import com.join.android.app.common.utils.q;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c1;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.f2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.o1;
import com.join.mgps.Util.o2;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.p1;
import com.join.mgps.Util.q2;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.u0;
import com.join.mgps.Util.v0;
import com.join.mgps.Util.w0;
import com.join.mgps.Util.z;
import com.join.mgps.activity.EmuLaunchLoadingActivity;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.WarningDialogActivity;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.ad.a0;
import com.join.mgps.ad.p;
import com.join.mgps.ad.y;
import com.join.mgps.dialog.StickAdDialog;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.PublicVideoCfgBean;
import com.join.mgps.dto.SScrollingTxtBeanV2;
import com.join.mgps.dto.SimulatorAdCfgBean;
import com.join.mgps.dto.SimulatorAdPlayConfig;
import com.join.mgps.dto.SimulatorAdPlayRecord;
import com.join.mgps.dto.SimulatorGoldAdCfgBean;
import com.join.mgps.dto.SimulatorRunAdTextCfgBean;
import com.join.mgps.dto.SingleGameRunAdTextCfgBean;
import com.join.mgps.dto.VideoInitCfgBean;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.mob.MobSDK;
import com.mob.OperationCallback;
import com.netease.nis.quicklogin.QuickLogin;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.m;
import com.papa.sim.statistic.s;
import com.papa.sim.statistic.u;
import com.papa91.arc.CContext;
import com.papa91.arc.bean.RequestHeaders;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.ext.ToastManager;
import com.papa91.wrapper.UserPrefs;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import com.windmill.sdk.WMConstants;
import com.wufan.user.service.protobuf.UserInfo;
import com.xinzhu.overmind.Overmind;
import dagger.hilt.android.HiltAndroidApp;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
@HiltAndroidApp
public class MApplication extends Hilt_MApplication implements Application.ActivityLifecycleCallbacks, ViewModelStoreOwner {
    public static String A = "";
    public static String B = "";
    public static String C = "";
    public static String D = "";
    public static String E = "";
    public static String F = "";
    public static int G = 0;
    public static String H = "";
    public static String I = "";
    public static String J = null;
    public static String K = null;
    public static String L = "";
    public static ArrayList<SScrollingTxtBeanV2> L1 = null;
    public static String M = "0";
    public static String N = "";
    public static String O = "0";
    public static MessageRedPointBean.MessagesBean.DataBean P = null;
    public static boolean Q = false;
    public static String R = "";
    public static int R1 = 0;
    public static int S = 0;
    public static int T = 0;
    public static HomeViewSwich U = null;
    public static LoginCfgsBean V = null;
    private static String V1 = null;
    public static boolean W = false;
    public static boolean X = false;
    public static int Y = 0;
    public static boolean Z = false;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static SingleGameRunAdTextCfgBean f3168b1 = null;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private static int f3171d2 = 0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static PublicVideoCfgBean f3172f1 = null;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static int f3173i1 = 2;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static String f3174l1 = "";

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static List<SimulatorRunAdTextCfgBean> f3175p0 = null;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static com.join.android.app.common.servcie.j f3176p1 = null;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static boolean f3177q1 = false;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static boolean f3178r1 = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f3180x = "MApplication";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static boolean f3181y = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static MApplication f3182z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PrefDef_ f3184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f3185f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.danikula.videocache.i f3192m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Activity f3193n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3194o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ViewModelStore f3196q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    CContext.IVideoAdListener f3197r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    y f3198s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    com.join.mgps.ad.j f3199t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    a0 f3200u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    com.join.mgps.ad.f f3201v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    com.join.mgps.ad.h f3202w;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public static List<String> f3179v1 = new ArrayList();

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    public static boolean f3167a2 = false;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public static boolean f3169b2 = true;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public static boolean f3170c2 = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<Activity> f3183d = new LinkedList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f3186g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final BroadcastReceiver f3187h = new BroadcastReceiver() { // from class: com.MApplication.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UtilsMy.h4(MApplication.this.getApplicationContext());
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f3188i = MediationConstant.KEY_REASON;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f3189j = "homekey";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f3190k = "recentapps";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final BroadcastReceiver f3191l = new BroadcastReceiver() { // from class: com.MApplication.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            if (!intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS") || (stringExtra = intent.getStringExtra(MediationConstant.KEY_REASON)) == null) {
                return;
            }
            if (stringExtra.equals("homekey")) {
                UtilsMy.D(context);
            }
            if (stringExtra.equals("recentapps")) {
                UtilsMy.D(context);
            }
        }
    };

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3195p = false;

    class a extends a0 {
        a(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            k(Event.Emu_PatchAd_Click.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            k(Event.Emu_PatchAd_Close.name(), gameId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            k(Event.Emu_PatchAd_Pop.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    class b extends com.join.mgps.ad.f {
        b(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            k(Event.Emu_PatchAd_Click.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            k(Event.Emu_PatchAd_Close.name(), gameId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            k(Event.Emu_PatchAd_Pop.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    class c extends com.join.mgps.ad.h {
        c(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            k(Event.Emu_PatchAd_Click.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            k(Event.Emu_PatchAd_Close.name(), gameId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            k(Event.Emu_PatchAd_Pop.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    class d implements s.g {
        d() {
        }

        @Override // com.papa.sim.statistic.s.g
        public int a() {
            try {
                return MApplication.f3182z.p().isBsideInt().d().intValue();
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        @Override // com.papa.sim.statistic.s.g
        public int b() {
            try {
                return !AccountUtil_.getInstance_(MApplication.this).isTourist() ? 1 : 0;
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            }
        }
    }

    class e implements Runnable {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DlTaskManager.INSTANCE.ensureGlobalDownloadEventBus();
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                q5.e.d(MApplication.f3182z).b("mgdb");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            f2.a(MApplication.f3182z);
            new Handler(Looper.getMainLooper()).post(new a());
        }
    }

    class f extends Thread {
        f() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                MApplication.this.u();
                MApplication.this.M();
            } catch (Exception unused) {
            }
        }
    }

    class g implements MiitHelper.a {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MApplication.this.M();
            }
        }

        g() {
        }

        @Override // com.join.android.app.common.http.MiitHelper.a
        public void a(@NonNull String ids) {
            if (TextUtils.isEmpty(ids)) {
                ids = "";
            }
            MApplication.L = ids;
            u.f(MApplication.f3182z).w(MApplication.L);
            new Thread(new a()).start();
        }
    }

    class h implements CContext.IVideoAdListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        PlayCfgBean f3214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        PlayCfgBean f3215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        SharedPreferences f3216c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        StickAdDialog f3218e;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f3217d = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3219f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f3220g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        long f3221h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f3222i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f3223j = false;

        class a implements StickAdDialog.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f3225a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f3226b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ UserInfo f3227c;

            a(final String val$gameId, final int val$state, final UserInfo val$accountBean) {
                this.f3225a = val$gameId;
                this.f3226b = val$state;
                this.f3227c = val$accountBean;
            }

            @Override // com.join.mgps.dialog.StickAdDialog.a
            public void a() {
                Intent intent = new Intent("com.tools.AdBroadcast");
                intent.putExtra("playCfg", h.this.f3215b);
                intent.putExtra("gameId", this.f3225a);
                intent.putExtra(NoticeTopAnimActivityDialog_.STATE_EXTRA, this.f3226b);
                intent.putExtra("adCount", h.this.f3219f);
                intent.putExtra("howTimes", h.this.f3220g);
                intent.putExtra("close", h.this.f3223j);
                intent.putExtra("action", 1005);
                MApplication.this.sendBroadcast(intent);
                h hVar = h.this;
                if (hVar.f3223j) {
                    MApplication.this.N(Event.Customgoldfinger_AdUnnecessary_Vedio.name(), this.f3225a);
                } else {
                    MApplication.this.N(Event.Customgoldfinger_AdMust_Vedio.name(), this.f3225a);
                }
            }

            @Override // com.join.mgps.dialog.StickAdDialog.a
            public void b(boolean close) {
                Intent intent = new Intent();
                intent.setAction("com.emu.ad.result");
                intent.putExtra("adAction", 1008);
                HashMap map = new HashMap();
                map.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, Integer.valueOf(this.f3226b));
                map.put("close", Boolean.valueOf(close));
                intent.putExtra("extras", JsonMapper.toJsonString(map));
                MApplication.f3182z.sendBroadcast(intent);
                if (h.this.f3219f > 0) {
                    UserPrefs userPrefs = new UserPrefs(MApplication.f3182z);
                    String str = this.f3225a;
                    String str2 = this.f3227c.getUid() + "";
                    h hVar = h.this;
                    userPrefs.setGoldFingerAdGamesConfig(str, str2, hVar.f3220g + 1, hVar.f3219f);
                }
            }

            @Override // com.join.mgps.dialog.StickAdDialog.a
            public void onShow() {
                h hVar = h.this;
                if (hVar.f3223j) {
                    MApplication.this.N(Event.Customgoldfinger_AdUnnecessary_Pop.name(), this.f3225a);
                } else {
                    MApplication.this.N(Event.Customgoldfinger_AdMust_Pop.name(), this.f3225a);
                }
            }
        }

        h() {
            this.f3216c = MApplication.this.getSharedPreferences("PrefDef", 4);
        }

        /* JADX WARN: Code duplicated, block: B:55:0x00fe  */
        /* JADX WARN: Code duplicated, block: B:57:0x010e  */
        /* JADX WARN: Code duplicated, block: B:58:0x0119  */
        /* JADX WARN: Code duplicated, block: B:61:0x0127  */
        /* JADX WARN: Code duplicated, block: B:63:0x012d  */
        /* JADX WARN: Code duplicated, block: B:64:0x0148  */
        /* JADX WARN: Code duplicated, block: B:66:0x0151  */
        /* JADX WARN: Code duplicated, block: B:67:0x0159  */
        /* JADX WARN: Code duplicated, block: B:69:0x0162  */
        /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:77:? A[RETURN, SYNTHETIC] */
        @Override // com.papa91.arc.CContext.IVideoAdListener
        public void loadAd(Activity activity, String scene) {
            String string;
            SimulatorAdPlayConfig simulatorAdPlayConfig;
            List<SimulatorAdPlayRecord> list;
            List<SimulatorAdPlayRecord> simulator_psp_cfg;
            SimulatorAdPlayRecord playConfig;
            PlayCfgBean playCfgBean;
            PlayCfgBean playCfgBean2;
            SimulatorAdPlayRecord simulatorAdPlayRecord = null;
            this.f3214a = null;
            if (CContext.SCENE_FC.equals(scene)) {
                string = this.f3216c.getString("simulator_fc_cfg", "");
            } else if (CContext.SCENE_FBA.equals(scene)) {
                string = this.f3216c.getString("simulator_jj_cfg", "");
            } else if (CContext.SCENE_PSP.equals(scene)) {
                string = this.f3216c.getString("simulator_psp_cfg", "");
            } else {
                string = CContext.SCENE_GBA.equals(scene) ? this.f3216c.getString("simulator_gba_cfg", "") : "";
            }
            SimulatorAdCfgBean simulatorAdCfgBean = t2.i(string) ? (SimulatorAdCfgBean) JsonMapper.getInstance().fromJson(string, SimulatorAdCfgBean.class) : null;
            if (simulatorAdCfgBean == null || simulatorAdCfgBean.getSwitch_state() != 1) {
                return;
            }
            String string2 = this.f3216c.getString("simulator_play_records", "");
            if (t2.i(string2)) {
                simulatorAdPlayConfig = (SimulatorAdPlayConfig) JsonMapper.getInstance().fromJson(string2, SimulatorAdPlayConfig.class);
                if (simulatorAdPlayConfig != null) {
                    long record_time = simulatorAdPlayConfig.getRecord_time();
                    this.f3217d = record_time;
                    if (!e0.z(record_time)) {
                        this.f3216c.edit().putString("simulator_play_records", "").commit();
                        simulatorAdPlayConfig = null;
                    }
                }
            } else {
                simulatorAdPlayConfig = null;
            }
            if (simulatorAdPlayConfig == null) {
                simulatorAdPlayConfig = new SimulatorAdPlayConfig();
            }
            if (CContext.SCENE_FC.equals(scene) || CContext.SCENE_FBA.equals(scene) || CContext.SCENE_GBA.equals(scene) || CContext.SCENE_PSP.equals(scene)) {
                if (CContext.SCENE_FC.equals(scene)) {
                    simulator_psp_cfg = simulatorAdPlayConfig.getSimulator_fc_cfg();
                    playConfig = simulatorAdPlayConfig.getPlayConfig(simulator_psp_cfg);
                } else if (CContext.SCENE_FBA.equals(scene)) {
                    simulator_psp_cfg = simulatorAdPlayConfig.getSimulator_jj_cfg();
                    playConfig = simulatorAdPlayConfig.getPlayConfig(simulator_psp_cfg);
                } else {
                    if (!CContext.SCENE_GBA.equals(scene)) {
                        if (CContext.SCENE_PSP.equals(scene)) {
                            simulator_psp_cfg = simulatorAdPlayConfig.getSimulator_psp_cfg();
                            playConfig = simulatorAdPlayConfig.getPlayConfig(simulator_psp_cfg);
                        } else {
                            list = null;
                        }
                        if (simulatorAdPlayRecord != null) {
                            playCfgBean2 = simulatorAdCfgBean.getPlayCfgBean(simulatorAdCfgBean.getPlay_cfg(), simulatorAdPlayRecord.getAdType());
                            this.f3214a = playCfgBean2;
                            if (playCfgBean2 == null) {
                                this.f3214a = simulatorAdCfgBean.getPlayCfgBean(simulatorAdCfgBean.getPlay_cfg());
                            }
                        } else {
                            this.f3214a = simulatorAdCfgBean.getPlayCfgBean(simulatorAdCfgBean.getPlay_cfg(), list);
                        }
                        playCfgBean = this.f3214a;
                        if (playCfgBean != null) {
                            if (playCfgBean.getSdk_type() == 1) {
                                Intent intent = new Intent("com.tools.AdBroadcast");
                                intent.putExtra("playCfg", this.f3214a);
                                intent.putExtra("action", 1001);
                                MApplication.this.sendBroadcast(intent);
                                return;
                            }
                            if (this.f3214a.getSdk_type() == 2) {
                                MApplication.this.F(activity, this.f3214a);
                            } else if (this.f3214a.getSdk_type() == 7) {
                                MApplication.this.H(activity, this.f3214a);
                                System.out.println("AD_LOG_TAG 加载融合广告");
                            }
                        }
                    }
                    simulator_psp_cfg = simulatorAdPlayConfig.getSimulator_gba_cfg();
                    playConfig = simulatorAdPlayConfig.getPlayConfig(simulator_psp_cfg);
                }
                List<SimulatorAdPlayRecord> list2 = simulator_psp_cfg;
                simulatorAdPlayRecord = playConfig;
                list = list2;
                if (simulatorAdPlayRecord != null) {
                    playCfgBean2 = simulatorAdCfgBean.getPlayCfgBean(simulatorAdCfgBean.getPlay_cfg(), simulatorAdPlayRecord.getAdType());
                    this.f3214a = playCfgBean2;
                    if (playCfgBean2 == null) {
                        this.f3214a = simulatorAdCfgBean.getPlayCfgBean(simulatorAdCfgBean.getPlay_cfg());
                    }
                } else {
                    this.f3214a = simulatorAdCfgBean.getPlayCfgBean(simulatorAdCfgBean.getPlay_cfg(), list);
                }
                playCfgBean = this.f3214a;
                if (playCfgBean != null) {
                    if (playCfgBean.getSdk_type() == 1) {
                        Intent intent2 = new Intent("com.tools.AdBroadcast");
                        intent2.putExtra("playCfg", this.f3214a);
                        intent2.putExtra("action", 1001);
                        MApplication.this.sendBroadcast(intent2);
                        return;
                    }
                    if (this.f3214a.getSdk_type() == 2) {
                        MApplication.this.F(activity, this.f3214a);
                    } else if (this.f3214a.getSdk_type() == 7) {
                        MApplication.this.H(activity, this.f3214a);
                        System.out.println("AD_LOG_TAG 加载融合广告");
                    }
                }
            }
        }

        @Override // com.papa91.arc.CContext.IVideoAdListener
        public void loadEndAd(int sdkType, String adId, String sdkKey) {
            PlayCfgBean playCfgBean = new PlayCfgBean();
            playCfgBean.setSdk_type(sdkType);
            playCfgBean.setAd_id(adId);
            playCfgBean.setSdk_key(sdkKey);
            if (sdkType == 1) {
                Intent intent = new Intent("com.tools.AdBroadcast");
                intent.putExtra("playCfg", playCfgBean);
                intent.putExtra("action", 1101);
                MApplication.this.sendBroadcast(intent);
                return;
            }
            if (sdkType == 2) {
                MApplication mApplication = MApplication.this;
                mApplication.G(mApplication.f3193n, playCfgBean);
            }
        }

        @Override // com.papa91.arc.CContext.IVideoAdListener
        public void showAd(Activity activity, String gameId, String scene) {
            List<SimulatorAdPlayRecord> simulator_psp_cfg;
            String string = this.f3216c.getString("simulator_play_records", "");
            SimulatorAdPlayRecord playConfig = null;
            SimulatorAdPlayConfig simulatorAdPlayConfig = t2.i(string) ? (SimulatorAdPlayConfig) JsonMapper.getInstance().fromJson(string, SimulatorAdPlayConfig.class) : null;
            if (simulatorAdPlayConfig == null) {
                simulatorAdPlayConfig = new SimulatorAdPlayConfig();
                simulatorAdPlayConfig.setRecord_time(System.currentTimeMillis());
            }
            if (this.f3214a != null) {
                if (CContext.SCENE_FC.equals(scene)) {
                    playConfig = simulatorAdPlayConfig.getPlayConfig(simulatorAdPlayConfig.getSimulator_fc_cfg(), this.f3214a.getSdk_type());
                    if (simulatorAdPlayConfig.getSimulator_fc_cfg() == null) {
                        simulatorAdPlayConfig.setSimulator_fc_cfg(new ArrayList());
                    }
                    simulator_psp_cfg = simulatorAdPlayConfig.getSimulator_fc_cfg();
                } else if (CContext.SCENE_FBA.equals(scene)) {
                    playConfig = simulatorAdPlayConfig.getPlayConfig(simulatorAdPlayConfig.getSimulator_jj_cfg(), this.f3214a.getSdk_type());
                    if (simulatorAdPlayConfig.getSimulator_jj_cfg() == null) {
                        simulatorAdPlayConfig.setSimulator_jj_cfg(new ArrayList());
                    }
                    simulator_psp_cfg = simulatorAdPlayConfig.getSimulator_jj_cfg();
                } else if (CContext.SCENE_GBA.equals(scene)) {
                    playConfig = simulatorAdPlayConfig.getPlayConfig(simulatorAdPlayConfig.getSimulator_gba_cfg(), this.f3214a.getSdk_type());
                    if (simulatorAdPlayConfig.getSimulator_gba_cfg() == null) {
                        simulatorAdPlayConfig.setSimulator_gba_cfg(new ArrayList());
                    }
                    simulator_psp_cfg = simulatorAdPlayConfig.getSimulator_gba_cfg();
                } else if (CContext.SCENE_PSP.equals(scene)) {
                    playConfig = simulatorAdPlayConfig.getPlayConfig(simulatorAdPlayConfig.getSimulator_psp_cfg(), this.f3214a.getSdk_type());
                    if (simulatorAdPlayConfig.getSimulator_psp_cfg() == null) {
                        simulatorAdPlayConfig.setSimulator_psp_cfg(new ArrayList());
                    }
                    simulator_psp_cfg = simulatorAdPlayConfig.getSimulator_psp_cfg();
                } else {
                    simulator_psp_cfg = null;
                }
                if (playConfig == null) {
                    simulator_psp_cfg.add(new SimulatorAdPlayRecord(this.f3214a.getSdk_type(), 1, (int) Double.parseDouble(this.f3214a.getProbability())));
                } else {
                    playConfig.add();
                }
                this.f3216c.edit().putString("simulator_play_records", JsonMapper.toJsonString(simulatorAdPlayConfig)).commit();
                if (this.f3214a.getSdk_type() == 1) {
                    Intent intent = new Intent("com.tools.AdBroadcast");
                    intent.putExtra("gameId", gameId);
                    intent.putExtra("action", 1002);
                    MApplication.this.sendBroadcast(intent);
                    return;
                }
                if (this.f3214a.getSdk_type() == 2) {
                    com.join.mgps.ad.f fVar = MApplication.this.f3201v;
                    if (fVar != null) {
                        fVar.q(activity, gameId);
                        return;
                    }
                    return;
                }
                if (this.f3214a.getSdk_type() == 7) {
                    MApplication.this.P(activity, gameId);
                    System.out.println("AD_LOG_TAG 显示融合广告");
                }
            }
        }

        @Override // com.papa91.arc.CContext.IVideoAdListener
        public void showEndAd(int sdkType, String gameId) {
            MApplication mApplication;
            com.join.mgps.ad.f fVar;
            if (sdkType == 1) {
                Intent intent = new Intent("com.tools.AdBroadcast");
                intent.putExtra("gameId", gameId);
                intent.putExtra("action", 1102);
                MApplication.this.sendBroadcast(intent);
                return;
            }
            if (sdkType != 2 || (fVar = (mApplication = MApplication.this).f3201v) == null) {
                return;
            }
            fVar.q(mApplication.f3193n, gameId);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r11v5, types: [boolean] */
        @Override // com.papa91.arc.CContext.IVideoAdListener
        public void showGoldAdDialog(Activity activity, String str, int i10) {
            ?? Has;
            String str2;
            int iB;
            SimulatorGoldAdCfgBean un_open_cfg;
            int iB2;
            String str3 = "";
            String string = this.f3216c.getString("simulator_gold_finger_cfg", "");
            if (!t2.i(string)) {
                Intent intent = new Intent();
                intent.setAction("com.emu.ad.result");
                intent.putExtra("adAction", 1007);
                HashMap map = new HashMap();
                map.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, Integer.valueOf(i10));
                map.put("close", Boolean.TRUE);
                intent.putExtra("extras", JsonMapper.toJsonString(map));
                MApplication.this.sendBroadcast(intent);
                return;
            }
            SimulatorAdCfgBean simulatorAdCfgBean = t2.i(string) ? (SimulatorAdCfgBean) JsonMapper.getInstance().fromJson(string, SimulatorAdCfgBean.class) : null;
            if (simulatorAdCfgBean == null || simulatorAdCfgBean.getSwitch_state() != 1) {
                Intent intent2 = new Intent();
                intent2.setAction("com.emu.ad.result");
                intent2.putExtra("adAction", 1007);
                HashMap map2 = new HashMap();
                map2.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, Integer.valueOf(i10));
                map2.put("close", Boolean.TRUE);
                intent2.putExtra("extras", JsonMapper.toJsonString(map2));
                MApplication.this.sendBroadcast(intent2);
                return;
            }
            UserPrefs userPrefs = new UserPrefs(MApplication.f3182z);
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            String goldFingerAdGamesConfig = userPrefs.getGoldFingerAdGamesConfig(str, accountData.getUid() + "");
            if (t2.i(goldFingerAdGamesConfig)) {
                try {
                    JSONObject jSONObject = new JSONObject(goldFingerAdGamesConfig);
                    Has = jSONObject.has("lastTime");
                    try {
                        if (Has != 0) {
                            this.f3221h = Long.parseLong(jSONObject.get("lastTime").toString());
                        } else {
                            this.f3221h = System.currentTimeMillis();
                        }
                        if (jSONObject.has("howTimes")) {
                            this.f3220g = Integer.parseInt(jSONObject.get("howTimes").toString());
                        } else {
                            this.f3220g = 0;
                        }
                        if (jSONObject.has("adCount")) {
                            this.f3219f = Integer.parseInt(jSONObject.get("adCount").toString());
                            str2 = str3;
                        } else {
                            this.f3219f = 0;
                            str2 = str3;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        str2 = Has;
                    }
                } catch (Exception e11) {
                    e = e11;
                    Has = "";
                }
            } else {
                str2 = "";
            }
            if (!e0.z(this.f3221h)) {
                this.f3219f = 0;
                this.f3220g = 0;
            }
            boolean z10 = this.f3219f < simulatorAdCfgBean.getDaily_times() && ((this.f3220g >= simulatorAdCfgBean.getShow_times() - 1 && !com.join.mgps.Util.b.piv(accountData) && ((this.f3220g + simulatorAdCfgBean.getShow_times()) + 1) % simulatorAdCfgBean.getInterval_times() == 0 && simulatorAdCfgBean.getShow_times() > 0) || (this.f3220g + 1 >= simulatorAdCfgBean.getShow_times() && this.f3219f <= 0));
            this.f3222i = z10;
            if (!z10) {
                Intent intent3 = new Intent();
                intent3.setAction("com.emu.ad.result");
                intent3.putExtra("adAction", 1007);
                HashMap map3 = new HashMap();
                map3.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, Integer.valueOf(i10));
                map3.put("close", Boolean.valueOf(this.f3223j));
                intent3.putExtra("extras", JsonMapper.toJsonString(map3));
                MApplication.this.sendBroadcast(intent3);
                if (this.f3219f < simulatorAdCfgBean.getDaily_times()) {
                    userPrefs.setGoldFingerAdGamesConfig(str, accountData.getUid() + str2, this.f3220g + 1, this.f3219f);
                    return;
                }
                return;
            }
            if (this.f3219f == 0) {
                List<PlayCfgBean> play_cfg = simulatorAdCfgBean.getPlay_cfg();
                if (play_cfg == null || play_cfg.size() <= 0) {
                    iB2 = 0;
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator<PlayCfgBean> it2 = play_cfg.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(Double.valueOf(it2.next().getProbability()));
                    }
                    iB2 = p.b(arrayList);
                }
                this.f3215b = play_cfg.get(iB2);
                un_open_cfg = simulatorAdCfgBean.getOpen_cfg();
                this.f3223j = false;
            } else {
                List<PlayCfgBean> un_play_cfg = simulatorAdCfgBean.getUn_play_cfg();
                if (un_play_cfg == null || un_play_cfg.size() <= 0) {
                    iB = 0;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<PlayCfgBean> it3 = un_play_cfg.iterator();
                    while (it3.hasNext()) {
                        arrayList2.add(Double.valueOf(it3.next().getProbability()));
                    }
                    iB = p.b(arrayList2);
                }
                this.f3215b = un_play_cfg.get(iB);
                un_open_cfg = simulatorAdCfgBean.getUn_open_cfg();
                this.f3223j = true;
            }
            StickAdDialog stickAdDialog = this.f3218e;
            if (stickAdDialog != null) {
                stickAdDialog.dismiss();
            }
            StickAdDialog stickAdDialog2 = new StickAdDialog(activity, un_open_cfg, this.f3223j);
            this.f3218e = stickAdDialog2;
            stickAdDialog2.d(new a(str, i10, accountData));
            this.f3218e.c(str);
            this.f3218e.show();
        }
    }

    class i extends y {
        i(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            MApplication.this.f3195p = true;
            k(Event.Emu_PatchAd_Click.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            k(Event.Emu_PatchAd_Close.name(), gameId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            k(Event.Emu_PatchAd_Pop.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    class j extends com.join.mgps.ad.j {
        j(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            k(Event.Stopad_GromoreSdk_Click.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            k(Event.Stopad_GromoreSdk_loading.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            k(Event.Stopad_GromoreSdk_Show.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        Intent intent = new Intent("com.tools.AdBroadcast");
        intent.putExtra("action", 1009);
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E() {
    }

    private com.danikula.videocache.i K() {
        return new com.danikula.videocache.i.b(this).i(1073741824L).h(20).b();
    }

    private String L() {
        MApplication mApplication = f3182z;
        if (mApplication == null || !TextUtils.isEmpty(V1)) {
            return V1;
        }
        try {
            String strH = com.join.mgps.pref.h.n(mApplication).H();
            V1 = strH;
            if (!TextUtils.isEmpty(strH)) {
                return V1;
            }
            File file = new File(Environment.getExternalStorageDirectory(), ".papakey");
            if (o3.a()) {
                V1 = o3.z(f3182z, file.getAbsolutePath());
            }
            if (!TextUtils.isEmpty(V1)) {
                return V1;
            }
            try {
                V1 = o1.f49829a.b(mApplication, "papakey", "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return V1;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void k() {
        String strSubstring;
        if (Build.VERSION.SDK_INT < 28) {
            return;
        }
        if (TextUtils.isEmpty(this.f3185f)) {
            this.f3185f = com.join.android.app.common.utils.p.a(this);
        }
        if (TextUtils.isEmpty(this.f3185f) || TextUtils.equals(this.f3185f, getPackageName())) {
            return;
        }
        if (this.f3185f.contains(":")) {
            String str = this.f3185f;
            strSubstring = str.substring(str.indexOf(":") + 1);
        } else {
            strSubstring = this.f3185f;
        }
        try {
            WebView.setDataDirectorySuffix(strSubstring);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int l() {
        return f3171d2;
    }

    public static QuickLogin m() {
        QuickLogin quickLogin = QuickLogin.getInstance();
        quickLogin.init(n(), "7fb44e42eeec4a95a2d0905f5c54d52f");
        quickLogin.setDebugMode(false);
        return quickLogin;
    }

    public static Context n() {
        return f3182z;
    }

    private PlayCfgBean o(List<PlayCfgBean> configs, int position) {
        if (configs == null || configs.size() <= position) {
            return null;
        }
        return configs.get(position);
    }

    public static com.danikula.videocache.i q(Context context) {
        MApplication mApplication = (MApplication) context.getApplicationContext();
        com.danikula.videocache.i iVar = mApplication.f3192m;
        if (iVar != null) {
            return iVar;
        }
        com.danikula.videocache.i iVarK = mApplication.K();
        mApplication.f3192m = iVarK;
        return iVarK;
    }

    public static QuickLogin s() {
        QuickLogin quickLogin = QuickLogin.getInstance();
        quickLogin.init(n(), "543ff4f5e60441349f54f8716f84e97b");
        quickLogin.setDebugMode(false);
        return quickLogin;
    }

    private void v() {
        h hVar = new h();
        this.f3197r = hVar;
        CContext.setVideoAdListener(hVar);
        CContext.setLifeListener(new CContext.IActivityLifeCycleListener() { // from class: com.h
            @Override // com.papa91.arc.CContext.IActivityLifeCycleListener
            public final void onCreated() {
                this.f33811a.D();
            }
        });
    }

    private void z() {
        v0.d();
    }

    public void A(Context context, String appid, String adid) {
        if (this.f3198s != null || !t2.i(appid)) {
            this.f3198s.d(false);
            return;
        }
        i iVar = new i(context, appid, adid);
        this.f3198s = iVar;
        iVar.a();
    }

    public void B() {
        if (w0.n() && Objects.equals(com.join.android.app.common.utils.p.a(this), getPackageName())) {
            PrefDef_ prefDef_ = new PrefDef_(this);
            if (prefDef_.firstShowUserPermiss().d().booleanValue()) {
                n6.a.f94478a.f(Boolean.TRUE);
                prefDef_.firstShowUserPermiss().g(Boolean.FALSE);
            }
        }
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            z.e(this);
            new f().start();
            try {
                UMConfigure.init(this, "55af129367e58e94ba0025b7", com.constant.a.b(this), 1, null);
                MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
                MobSDK.init(this, "563efaa5a8fe", "47378ac7ef1e9db5870c9cf62ee34a1d");
                MobSDK.submitPolicyGrantResult(true, (OperationCallback<Void>) null);
                o.o(this);
                q2.b(this);
                MiitHelper miitHelper = new MiitHelper(new g());
                if (Objects.equals(com.join.android.app.common.utils.p.a(this), getPackageName())) {
                    miitHelper.getDeviceIds(this);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void C(Context context, String appid, String adid) {
        if (this.f3200u != null || !t2.i(appid)) {
            this.f3200u.d(false);
            return;
        }
        a aVar = new a(context, appid, adid);
        this.f3200u = aVar;
        aVar.a();
    }

    public void F(Context context, PlayCfgBean playCfgBean) {
        w(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void G(Context context, PlayCfgBean playCfgBean) {
        x(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void H(Context context, PlayCfgBean playCfgBean) {
        y(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void I(Context context, PlayCfgBean playCfgBean) {
        A(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void J(Context context, PlayCfgBean playCfgBean) {
        C(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void M() {
        try {
            L();
            String strB = TextUtils.isEmpty(V1) ? "" : com.join.mgps.Util.p.b(V1.getBytes());
            if (t2.h(H) || t2.h(B) || t2.h(J)) {
                u();
            }
            RequestHeaders requestHeaders = new RequestHeaders();
            requestHeaders.setWufankey(strB);
            requestHeaders.setWf_d(A);
            requestHeaders.setWf_a(J);
            requestHeaders.setWf_ad(B);
            requestHeaders.setWf_m(C);
            requestHeaders.setWf_i(D);
            requestHeaders.setWf_pm(E);
            requestHeaders.setWf_sn(F);
            requestHeaders.setAndroid_ver(H);
            requestHeaders.setWf_o(L);
            requestHeaders.setArm64(M);
            requestHeaders.setWf_single(G);
            requestHeaders.setWf_am_v(I);
            com.join.mgps.pref.h.n(f3182z).p0(JsonMapper.toJsonString(requestHeaders));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void N(String eventName, String gameId) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.AnonymousClass33.f72723b, eventName);
        intent.putExtra("gameId", gameId);
        sendBroadcast(intent);
    }

    public void O(boolean backgroundExclude) {
        this.f3195p = backgroundExclude;
    }

    public void P(Activity activity, String gameId) {
        com.join.mgps.ad.j jVar = this.f3199t;
        if (jVar != null) {
            jVar.q(activity, gameId);
        }
    }

    public void Q(Activity activity, String gameId) {
        y yVar = this.f3198s;
        if (yVar != null) {
            yVar.q(activity, gameId);
        }
    }

    public void R(Activity activity, String gameId) {
        a0 a0Var = this.f3200u;
        if (a0Var != null) {
            a0Var.q(activity, gameId);
        }
    }

    @Override // com.join.mgps.va.overmind.VApp, android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(base);
    }

    public Activity getActivity() {
        return this.f3193n;
    }

    @Override // com.join.kotlin.base.BaseApp, androidx.lifecycle.ViewModelStoreOwner
    @NonNull
    public ViewModelStore getViewModelStore() {
        return this.f3196q;
    }

    public void i(Activity activity) {
        this.f3183d.add(activity);
    }

    public void j() {
        Iterator<Activity> it2 = this.f3183d.iterator();
        while (it2.hasNext()) {
            it2.next().finish();
        }
        this.f3183d.clear();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity instanceof WarningDialogActivity) {
            return;
        }
        this.f3193n = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (activity != null) {
            ((ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.content)).findViewById(com.join.android.app.mgsim.wufun.R.id.hideAppMask);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (!(activity instanceof WarningDialogActivity)) {
            this.f3193n = activity;
        }
        HMCloudGameManager.W().H0(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        ViewGroup viewGroup;
        View viewFindViewById;
        if (!(activity instanceof WarningDialogActivity)) {
            this.f3193n = activity;
        }
        f3171d2++;
        if (activity != null && (viewFindViewById = (viewGroup = (ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.content)).findViewById(com.join.android.app.mgsim.wufun.R.id.hideAppMask)) != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (this.f3185f.equals(getPackageName()) && f3171d2 == 1 && this.f3194o && !this.f3195p) {
            if (this.f3185f.equals(getPackageName())) {
                UtilsMy.B0();
            }
            if (activity instanceof EmuLaunchLoadingActivity) {
                activity.finish();
            }
        }
        this.f3194o = false;
        if (activity != null) {
            String className = activity.getComponentName().getClassName();
            if (className.contains("com.join") || className.contains("com.papa")) {
                this.f3195p = false;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        f3171d2--;
        if (!this.f3185f.equals(getPackageName()) || f3171d2 > 0 || this.f3194o) {
            return;
        }
        this.f3194o = true;
        if (activity instanceof EmuLaunchLoadingActivity) {
            activity.finish();
        }
    }

    @Override // com.Hilt_MApplication, com.join.kotlin.base.BaseApp, com.join.mgps.va.overmind.VApp, com.papa91.arc.MApplication, com.papa91.arc.BuglyApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        BAction.APPLICATION_ID = "com.join.android.app.mgsim.wufun";
        this.f3196q = new ViewModelStore();
        UMConfigure.preInit(this, "55af129367e58e94ba0025b7", com.constant.a.b(this));
        f3176p1 = com.join.android.app.common.servcie.j.f();
        M = !com.join.mgps.va.overmind.i.H() ? "0" : "1";
        f3182z = this;
        ToastManager.init(this);
        PrefDef_ prefDef_ = new PrefDef_(f3182z);
        this.f3184e = prefDef_;
        prefDef_.sdkInitReady().g(Boolean.FALSE);
        com.papa.gsyvideoplayer.player.d.q(8);
        this.f3185f = com.join.android.app.common.utils.p.a(this);
        k();
        v();
        z();
        if (!isEmulator() && (isMindProcess() || this.f3185f.startsWith("com.join.android.app.mgsim.wufun.addon"))) {
            if (Overmind.get().isVirtualProcess()) {
                this.f3186g = true;
                z.e(f3182z);
                try {
                    if (!this.f3185f.startsWith("com.join.android.app.mgsim.wufun.addon")) {
                        q5.e.d(f3182z).b("mgdb");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                f2.a(f3182z);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("before onCreate:processName");
            sb2.append(getPackageName());
            sb2.append(",");
            sb2.append(this.f3185f);
            return;
        }
        DlTaskManager.INSTANCE.ensureGlobalDownloadEventBus();
        s.m(this).p0(new d());
        String strD = this.f3184e.video_init_cfg().d();
        if (t2.i(strD)) {
            try {
                List<VideoInitCfgBean> list = (List) JsonMapper.getInstance().fromJson(strD, JsonMapper.getInstance().createCollectionType(List.class, VideoInitCfgBean.class));
                if (list != null && !list.isEmpty()) {
                    for (VideoInitCfgBean videoInitCfgBean : list) {
                        if (videoInitCfgBean != null && videoInitCfgBean.getSdkType() == 9) {
                            com.join.mgps.ad.adapter.d.a(getApplicationContext(), "", new e6.a() { // from class: com.i
                                @Override // e6.a
                                public final void a() {
                                    MApplication.E();
                                }
                            });
                            break;
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        registerActivityLifecycleCallbacks(this);
        f3176p1 = com.join.android.app.common.servcie.j.f();
        new Thread(new e()).start();
        com.constant.a.e(this);
        o2.f49873k1 = false;
        ImageLoader.u(this);
        com.join.android.app.component.optimizetext.a.m(this);
        HomeViewSwich homeViewSwichW = com.join.mgps.pref.h.n(this).w();
        if (homeViewSwichW != null) {
            U = homeViewSwichW;
        }
        LoginCfgsBean loginCfgsBeanJ = com.join.mgps.pref.h.n(this).J();
        if (homeViewSwichW != null) {
            V = loginCfgsBeanJ;
        }
        if (p1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            DownloadService_.Y(getApplicationContext()).a();
        }
        com.join.android.app.common.exception.a.e().j(this);
        g1.c("applicationcreatFinish time =" + System.currentTimeMillis());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.intent.downloadService.destroyed");
        registerReceiver(this.f3187h, intentFilter);
        registerReceiver(this.f3191l, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        try {
            String strC = com.join.mgps.pref.h.n(this).c();
            if (t2.i(strC)) {
                N = strC;
                ((DNSDataResult) JsonMapper.getInstance().fromJson(strC, DNSDataResult.class)).updateRpcConstant();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        ArrayList arrayList = new ArrayList();
        f3179v1 = arrayList;
        arrayList.add("anv9.ctapi");
        f3179v1.add("anv3cjapi");
        f3179v1.add("anv5cjapi");
        f3179v1.add("anv6cjapi");
        f3179v1.add("comment");
        f3179v1.add("anctapi");
        f3179v1.add("ansearchapi");
        f3179v1.add("testsanv9");
        B();
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        if (!this.f3186g) {
            unregisterReceiver(this.f3187h);
            unregisterReceiver(this.f3191l);
        }
        System.exit(0);
    }

    public PrefDef_ p() {
        if (this.f3184e == null) {
            this.f3184e = new PrefDef_(f3182z);
        }
        return this.f3184e;
    }

    public String t() {
        return f3174l1;
    }

    public void u() {
        try {
            c1.j(getApplicationContext(), 1);
            String strI = q.n(f3182z).i();
            A = strI;
            try {
                A = com.join.mgps.Util.a.d(strI, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            B = m.a(f3182z);
            String strY = com.join.mgps.pref.h.n(this).y();
            if (!"".equals(B) && !"0".equals(B) && !WMConstants.TIMER_STAGE_NONE.equals(B) && "".equals(strY)) {
                com.join.mgps.pref.h.n(this).m0(B);
            }
            com.join.mgps.pref.h.n(this).l0(B);
            String strE = q.n(f3182z).e(f3182z);
            J = strE;
            try {
                K = strE;
                J = com.join.mgps.Util.a.d(strE, "");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            String strO = q.n(f3182z).o();
            C = strO;
            try {
                C = com.join.mgps.Util.a.d(strO, "");
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            String strE2 = u0.e();
            D = strE2;
            try {
                D = com.join.mgps.Util.a.d(strE2, "");
                E = com.join.mgps.Util.a.d(Build.MODEL, "");
                F = com.join.mgps.Util.a.d(com.join.mgps.Util.l.a(this, getPackageName()), "");
            } catch (Exception e13) {
                e13.printStackTrace();
            }
            H = Build.VERSION.RELEASE;
            G = com.constant.a.d(f3182z);
            I = q.w();
        } catch (Exception e14) {
            e14.printStackTrace();
        }
    }

    public void w(Context context, String appid, String adid) {
        if (this.f3201v != null || !t2.i(appid)) {
            this.f3201v.d(false);
            return;
        }
        b bVar = new b(context, appid, adid);
        this.f3201v = bVar;
        bVar.a();
    }

    public void x(Context context, String appid, String adid) {
        if (this.f3202w != null || !t2.i(appid)) {
            this.f3202w.d(false);
            return;
        }
        c cVar = new c(context, appid, adid);
        this.f3202w = cVar;
        cVar.a();
    }

    public void y(Context context, String appid, String adid) {
        if (this.f3199t != null || !t2.i(appid)) {
            this.f3199t.d(false);
            return;
        }
        j jVar = new j(context, appid, adid);
        this.f3199t = jVar;
        jVar.a();
    }
}
