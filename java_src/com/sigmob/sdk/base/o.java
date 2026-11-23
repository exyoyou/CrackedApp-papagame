package com.sigmob.sdk.base;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.VolleyError;
import com.czhj.wire.Wire;
import com.sigmob.sdk.base.models.config.SigmobAndroid;
import com.sigmob.sdk.base.models.config.SigmobAntiFraudLogConfig;
import com.sigmob.sdk.base.models.config.SigmobCommon;
import com.sigmob.sdk.base.models.config.SigmobCommonEndpointsConfig;
import com.sigmob.sdk.base.models.config.SigmobDialogSetting;
import com.sigmob.sdk.base.models.config.SigmobMotionConfig;
import com.sigmob.sdk.base.models.config.SigmobNativeConfig;
import com.sigmob.sdk.base.models.config.SigmobRvConfig;
import com.sigmob.sdk.base.models.config.SigmobSdkConfig;
import com.sigmob.sdk.base.models.config.SigmobSdkConfigResponse;
import com.sigmob.sdk.base.models.config.SigmobSplashConfig;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.sdk.base.utils.z;
import com.sigmob.windad.WindAds;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Boolean f79658a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f79659b = "o";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f79660c = "sdkConfigVer";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static o f79661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f79662e = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f79663n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f79664o;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private a f79672m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f79667h = n.f79584k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f79669j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private SigmobSdkConfig f79670k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private SigmobSdkConfig f79671l = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Handler f79665f = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f79666g = new Runnable() { // from class: com.sigmob.sdk.base.r
        @Override // java.lang.Runnable
        public final void run() {
            this.f79677b.al();
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f79668i = true;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.o$1, reason: invalid class name */
    class AnonymousClass1 implements com.sigmob.sdk.base.network.g.a {
        AnonymousClass1() {
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError error) {
            String unused = o.f79663n = o.this.ao();
            if (o.f79664o) {
                o.this.as();
            } else {
                boolean unused2 = o.f79664o = true;
                o.this.f79665f.post(o.this.f79666g);
            }
            SigmobLog.e(error.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(SigmobSdkConfig sigmobSdkConfig) {
            o.this.a(sigmobSdkConfig, true);
        }

        @Override // com.sigmob.sdk.base.network.g.a
        public void a(SigmobSdkConfigResponse sdkConfigResponse) throws Throwable {
            boolean unused = o.f79664o = false;
            SigmobLog.d(sdkConfigResponse.toString());
            final SigmobSdkConfig sigmobSdkConfig = sdkConfigResponse.config;
            if (sigmobSdkConfig == null) {
                SigmobLog.e(sdkConfigResponse.error_message);
            } else {
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f79678b.a(sigmobSdkConfig);
                    }
                });
                o.this.a(sigmobSdkConfig);
            }
            o.this.as();
        }
    }

    public interface a {
        void onUpdate(boolean isOnline);
    }

    private o() {
        ak();
    }

    public static synchronized o a() {
        if (f79661d == null) {
            f79661d = new o();
        }
        return f79661d;
    }

    private void ak() {
        if (this.f79670k == null) {
            SigmobSdkConfig.Builder builder = new SigmobSdkConfig.Builder();
            SigmobCommon.Builder builder2 = new SigmobCommon.Builder();
            SigmobAndroid.Builder builder3 = new SigmobAndroid.Builder();
            SigmobCommonEndpointsConfig.Builder builder4 = new SigmobCommonEndpointsConfig.Builder();
            builder4.native_ad(a(false));
            builder2.endpoints(builder4.build());
            SigmobRvConfig.Builder builder5 = new SigmobRvConfig.Builder();
            builder5.cacheTop(4);
            builder2.rv_config(builder5.build());
            builder2.configRefresh(1000);
            Boolean bool = Boolean.FALSE;
            builder2.disable_up_location(bool);
            builder2.is_gdpr_region(bool);
            builder2.enable_debug_level(bool);
            Boolean bool2 = Boolean.TRUE;
            builder3.disable_boot_mark(bool2);
            builder3.disableUpAppInfo(bool2);
            builder3.oaid_api_is_disable(bool2);
            builder3.enable_permission(bool);
            builder3.enable_report_crash(bool);
            builder.common_config(builder2.build());
            builder.android_config(builder3.build());
            this.f79670k = builder.build();
        }
        SigmobLog.d("Default config: " + this.f79670k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void al() {
        if (com.sigmob.sdk.b.e() == null) {
            return;
        }
        if (ClientMetadata.getInstance().isNetworkConnected(c()) && i.a().i()) {
            an();
        } else {
            SigmobLog.d("Can't load an ad because there is no network connectivity.");
            as();
        }
    }

    private boolean am() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonR.log_enc, Boolean.FALSE)).booleanValue();
    }

    private void an() {
        SigmobRequestQueue sigRequestQueue = Networking.getSigRequestQueue();
        com.sigmob.sdk.base.network.g gVar = new com.sigmob.sdk.base.network.g(c(), new AnonymousClass1());
        if (sigRequestQueue == null) {
            SigmobLog.e("queue is null");
            as();
        } else {
            sigRequestQueue.add(gVar);
            SigmobLog.i("update sdk config");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String ao() {
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        SigmobCommon sigmobCommonR = r();
        return (sigmobCommonR == null || (sigmobCommonEndpointsConfig = sigmobCommonR.endpoints) == null) ? "" : (String) Wire.get(sigmobCommonEndpointsConfig.config, "https://c.etoolads.cn/s/config");
    }

    private int ap() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobCommonR.network_timeout, 0)).intValue();
    }

    private boolean aq() {
        if (!w.b((Object) f79658a)) {
            SigmobCommon sigmobCommonR = r();
            if (sigmobCommonR == null) {
                return false;
            }
            f79658a = (Boolean) Wire.get(sigmobCommonR.noncompliance_mark, Boolean.FALSE);
            com.sigmob.sdk.base.utils.k.c(f79659b, "noncomplianceMark(config) = " + f79658a, new Object[0]);
        }
        return f79658a.booleanValue();
    }

    private void ar() {
        this.f79665f.removeCallbacks(this.f79666g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void as() {
        ar();
        if (this.f79668i) {
            this.f79665f.postDelayed(this.f79666g, Math.max(30000L, this.f79669j));
        }
    }

    private SigmobSplashConfig at() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return null;
        }
        return sigmobCommonR.splash_config;
    }

    private SigmobNativeConfig au() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return null;
        }
        return sigmobCommonR.native_config;
    }

    public static boolean p() {
        return false;
    }

    public long A() {
        SigmobSplashConfig sigmobSplashConfigAt = at();
        int iIntValue = sigmobSplashConfigAt != null ? ((Integer) Wire.get(sigmobSplashConfigAt.material_expired_time, 2)).intValue() : 2;
        return iIntValue < 0 ? iIntValue : ((long) iIntValue) * 24 * 60 * 60 * 1000;
    }

    public int B() {
        SigmobNativeConfig sigmobNativeConfigAu = au();
        if (sigmobNativeConfigAu == null) {
            return 50;
        }
        return ((Integer) Wire.get(sigmobNativeConfigAu.cacheTop, 50)).intValue();
    }

    public long C() {
        SigmobNativeConfig sigmobNativeConfigAu = au();
        if (sigmobNativeConfigAu == null) {
            return 45000L;
        }
        int iIntValue = ((Integer) Wire.get(sigmobNativeConfigAu.ad_load_timeout, 45)).intValue();
        if (iIntValue < 10) {
            iIntValue = 10;
        }
        return ((long) iIntValue) * 1000;
    }

    public boolean D() {
        SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig;
        SigmobCommon sigmobCommonR = r();
        return (sigmobCommonR == null || (sigmobAntiFraudLogConfig = sigmobCommonR.anti_fraud_log) == null || sigmobAntiFraudLogConfig.events == null) ? false : true;
    }

    public int E() {
        SigmobMotionConfig sigmobMotionConfig;
        SigmobCommon sigmobCommonR = r();
        if (!D() || (sigmobMotionConfig = sigmobCommonR.anti_fraud_log.motion_config) == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobMotionConfig.interval, 0)).intValue();
    }

    public int F() {
        if (!D() || r().anti_fraud_log.motion_config == null) {
            return 0;
        }
        return ((Integer) Wire.get(r().anti_fraud_log.motion_config.count, 0)).intValue();
    }

    public int G() {
        if (!D() || r().anti_fraud_log.motion_config == null) {
            return 0;
        }
        return r().anti_fraud_log.motion_config.queue_max.intValue() + (-50) < r().anti_fraud_log.motion_config.count.intValue() * 2 ? (((Integer) Wire.get(r().anti_fraud_log.motion_config.count, 0)).intValue() * 2) + 50 : ((Integer) Wire.get(r().anti_fraud_log.motion_config.queue_max, 0)).intValue();
    }

    public long H() {
        long jIntValue = r() != null ? ((Integer) Wire.get(r().tracking_expiration_time, 86400)).intValue() : 86400L;
        if (jIntValue < 180) {
            return 180L;
        }
        return jIntValue;
    }

    public int I() {
        int iIntValue = r() != null ? ((Integer) Wire.get(r().tracking_retry_interval, 180)).intValue() : 180;
        if (iIntValue < 10) {
            return 10;
        }
        return iIntValue;
    }

    public int J() {
        Integer num = SigmobCommon.DEFAULT_MAX_SEND_LOG_RECORDS;
        int iIntValue = num.intValue();
        if (r() != null) {
            iIntValue = ((Integer) Wire.get(r().max_send_log_records, num)).intValue();
        }
        return iIntValue < 10 ? num.intValue() : iIntValue;
    }

    public int K() {
        int iIntValue;
        if (r() == null || (iIntValue = ((Integer) Wire.get(r().send_log_interval, 3)).intValue()) < 3) {
            return 3;
        }
        return iIntValue;
    }

    public boolean L() {
        SigmobAndroid sigmobAndroidS;
        if (j() || (sigmobAndroidS = s()) == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.enable_open_pkg_list, Boolean.FALSE)).booleanValue();
    }

    public boolean M() {
        SigmobAndroid sigmobAndroidS;
        if (j() || (sigmobAndroidS = s()) == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.enable_open_pkg_dir_list, Boolean.FALSE)).booleanValue();
    }

    public Boolean N() {
        o oVarA = a();
        return Boolean.valueOf(oVarA.L() || oVarA.M());
    }

    public List<Integer> O() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return null;
        }
        return sigmobCommonR.dclog_blacklist;
    }

    public boolean P() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonR.enable_debug_level, Boolean.FALSE)).booleanValue();
    }

    public long Q() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return 0L;
        }
        long jIntValue = ((Integer) Wire.get(sigmobCommonR.load_interval, 0)).intValue();
        if (jIntValue < 1) {
            return 0L;
        }
        return jIntValue * 1000;
    }

    public boolean R() {
        SigmobCommon sigmobCommonR;
        if (j() || (sigmobCommonR = r()) == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobCommonR.disable_up_location, Boolean.FALSE)).booleanValue();
    }

    public boolean S() {
        SigmobAndroid sigmobAndroidS;
        if (j() || (sigmobAndroidS = s()) == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.disableUpAppInfo, Boolean.FALSE)).booleanValue();
    }

    public int T() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidS.report_log, 0)).intValue();
    }

    public List<String> U() {
        SigmobAndroid sigmobAndroidS = s();
        return sigmobAndroidS == null ? new ArrayList() : sigmobAndroidS.open_pkg_list;
    }

    public boolean V() {
        SigmobAndroid sigmobAndroidS = s();
        return sigmobAndroidS != null && ((Integer) Wire.get(sigmobAndroidS.up_wifi_list_interval, 0)).intValue() >= 60;
    }

    public int W() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidS.disable_up_oaid, 0)).intValue();
    }

    public boolean X() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.enable_permission, Boolean.FALSE)).booleanValue();
    }

    public int Y() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidS.apk_expired_time, 0)).intValue();
    }

    public boolean Z() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.enable_report_crash, Boolean.FALSE)).booleanValue();
    }

    public boolean aa() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.oaid_api_is_disable, Boolean.FALSE)).booleanValue();
    }

    public boolean ab() {
        return false;
    }

    public boolean ac() {
        SigmobAndroid sigmobAndroidS;
        if (j() || (sigmobAndroidS = s()) == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.disable_install_monitor, Boolean.FALSE)).booleanValue();
    }

    public int ad() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidS.enable_app_list, 0)).intValue();
    }

    public boolean ae() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.disable_boot_mark, Boolean.FALSE)).booleanValue();
    }

    public boolean af() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.use_web_source_cache, Boolean.FALSE)).booleanValue();
    }

    public boolean ag() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonR.enable_extra_dclog, Boolean.FALSE)).booleanValue();
    }

    public int ah() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return 0;
        }
        return ((Integer) Wire.get(sigmobAndroidS.web_source_cache_expiration_time, 0)).intValue();
    }

    public int ai() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return 500;
        }
        return ((Integer) Wire.get(sigmobAndroidS.s2s_token_timeout, 500)).intValue();
    }

    public Boolean b(String packageName) {
        boolean zB;
        if (t.a((CharSequence) packageName)) {
            return Boolean.FALSE;
        }
        Context contextE = com.sigmob.sdk.b.e();
        boolean zL = L();
        boolean zM = M();
        if (zL) {
            zB = com.sigmob.sdk.base.utils.g.a(contextE, packageName);
        } else {
            if (!zM) {
                return Boolean.FALSE;
            }
            zB = com.sigmob.sdk.base.utils.g.b(contextE, packageName);
        }
        return Boolean.valueOf(zB);
    }

    public void f() {
        ar();
        this.f79665f.post(this.f79666g);
    }

    public boolean g() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonR.feedback_debug, Boolean.FALSE)).booleanValue();
    }

    public boolean h() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.lock_play, Boolean.FALSE)).booleanValue();
    }

    public boolean i() {
        SigmobAndroid sigmobAndroidS = s();
        if (sigmobAndroidS == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobAndroidS.screen_keep, Boolean.FALSE)).booleanValue();
    }

    public boolean j() {
        return !aq();
    }

    public int k() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return 0;
        }
        int iIntValue = ((Integer) Wire.get(sigmobCommonR.expire_monitor_interval, 0)).intValue();
        SigmobLog.d("expireMonitorInterval = " + iIntValue);
        return iIntValue;
    }

    public boolean l() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return false;
        }
        return ((Boolean) Wire.get(sigmobCommonR.enable_active_expire, Boolean.FALSE)).booleanValue();
    }

    public int m() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return 0;
        }
        Integer num = (Integer) Wire.get(sigmobCommonR.sniffing_type, 0);
        SigmobLog.d("sniffingType = " + num);
        return num.intValue();
    }

    public boolean n() {
        SigmobCommon sigmobCommonR;
        if (j() || (sigmobCommonR = r()) == null) {
            return true;
        }
        return ((Boolean) Wire.get(sigmobCommonR.disable_srm, Boolean.FALSE)).booleanValue();
    }

    public int o() {
        int iIntValue = SigmobCommon.DEFAULT_IPV6_INTERVAL.intValue();
        SigmobCommon sigmobCommonR = r();
        return sigmobCommonR == null ? iIntValue : ((Integer) Wire.get(sigmobCommonR.ipv6_interval, Integer.valueOf(iIntValue))).intValue();
    }

    public SigmobSdkConfig q() {
        SigmobSdkConfig sigmobSdkConfig = this.f79671l;
        return sigmobSdkConfig == null ? this.f79670k : sigmobSdkConfig;
    }

    public SigmobCommon r() {
        SigmobSdkConfig sigmobSdkConfigQ = q();
        if (sigmobSdkConfigQ == null) {
            return null;
        }
        return sigmobSdkConfigQ.sigmobCommon_config;
    }

    public SigmobAndroid s() {
        SigmobSdkConfig sigmobSdkConfigQ = q();
        if (sigmobSdkConfigQ == null) {
            return null;
        }
        return sigmobSdkConfigQ.sigmobAndroid_config;
    }

    public String t() {
        StringBuilder sb2;
        String str;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        SigmobCommon sigmobCommonR = r();
        String str2 = (sigmobCommonR == null || (sigmobCommonEndpointsConfig = sigmobCommonR.endpoints) == null) ? "" : sigmobCommonEndpointsConfig.log;
        if (!t.b(str2)) {
            str2 = "https://dc.sigmob.cn/log";
        }
        if (str2.indexOf(63) == -1) {
            sb2 = new StringBuilder();
            sb2.append(str2);
            str = "?";
        } else {
            sb2 = new StringBuilder();
            sb2.append(str2);
            str = x.a.f97576d;
        }
        sb2.append(str);
        sb2.append(b());
        return sb2.toString();
    }

    public String u() {
        StringBuilder sb2;
        String str;
        String str2 = (String) Wire.get(r().endpoints.feedback, "https://adxtool.sigmob.cn/debug/feedback");
        if (t.a((CharSequence) str2)) {
            return str2;
        }
        if (str2.indexOf(63) == -1) {
            sb2 = new StringBuilder();
            sb2.append(str2);
            str = "?";
        } else {
            sb2 = new StringBuilder();
            sb2.append(str2);
            str = x.a.f97576d;
        }
        sb2.append(str);
        sb2.append(b());
        return sb2.toString();
    }

    public SigmobRvConfig v() {
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null) {
            return null;
        }
        return sigmobCommonR.rv_config;
    }

    public int w() {
        SigmobRvConfig sigmobRvConfigV = v();
        if (sigmobRvConfigV == null) {
            return 5;
        }
        return ((Integer) Wire.get(sigmobRvConfigV.cacheTop, 5)).intValue();
    }

    public long x() {
        SigmobRvConfig sigmobRvConfigV = v();
        if (sigmobRvConfigV == null) {
            return 45000L;
        }
        int iIntValue = ((Integer) Wire.get(sigmobRvConfigV.ad_load_timeout, 45)).intValue();
        if (iIntValue < 10) {
            iIntValue = 10;
        }
        return ((long) iIntValue) * 1000;
    }

    public SigmobDialogSetting y() {
        SigmobRvConfig sigmobRvConfigV = v();
        if (sigmobRvConfigV == null) {
            return null;
        }
        return sigmobRvConfigV.close_dialog_setting;
    }

    public int z() {
        SigmobSplashConfig sigmobSplashConfigAt = at();
        if (sigmobSplashConfigAt == null) {
            return 50;
        }
        return ((Integer) Wire.get(sigmobSplashConfigAt.cacheTop, 50)).intValue();
    }

    public static String b() {
        return "appId=" + WindAds.sharedAds().getAppId() + x.a.f97576d + "sdkVersion=4.25.21";
    }

    public static String c() {
        if (!t.b(f79663n)) {
            if (!t.b("https://adservice.sigmob.cn/s/config")) {
                return "https://adservice.sigmob.cn/s/config?" + b();
            }
            return "https://adservice.sigmob.cn/s/config?" + b();
        }
        if (f79663n.indexOf(63) == -1) {
            return f79663n + "?" + b();
        }
        return f79663n + x.a.f97576d + b();
    }

    public static String d() {
        return "https://adservice.sigmob.cn/extconfig?" + b();
    }

    public o a(a onSDKUpdateListener) {
        this.f79672m = onSDKUpdateListener;
        return f79661d;
    }

    public void e() {
        ObjectInputStream objectInputStream = null;
        String strA = z.a(com.sigmob.sdk.b.e(), (String) null, f79660c, (String) null);
        File file = new File(com.sigmob.sdk.base.utils.o.a() + "/config");
        if (n.f79584k.equals(strA)) {
            try {
                if (file.exists()) {
                    try {
                        ObjectInputStream objectInputStream2 = new ObjectInputStream(new FileInputStream(file));
                        try {
                            a(SigmobSdkConfig.ADAPTER.decode(objectInputStream2), false);
                            objectInputStream2.close();
                        } catch (Throwable th) {
                            th = th;
                            objectInputStream = objectInputStream2;
                            try {
                                a(this.f79670k, false);
                                SigmobLog.e(th.getMessage());
                                if (objectInputStream == null) {
                                    return;
                                } else {
                                    objectInputStream.close();
                                }
                            } catch (Throwable th2) {
                                if (objectInputStream != null) {
                                    try {
                                        objectInputStream.close();
                                    } catch (Throwable th3) {
                                        SigmobLog.e(th3.getMessage());
                                    }
                                }
                                throw th2;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                    return;
                }
            } catch (Throwable th5) {
                SigmobLog.e(th5.getMessage());
                return;
            }
        }
        a(this.f79670k, false);
    }

    public String a(boolean saasAdx) {
        String str;
        StringBuilder sb2;
        String str2;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("https://");
        sb3.append(saasAdx ? n.W : n.T);
        String string = sb3.toString();
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null || (sigmobCommonEndpointsConfig = sigmobCommonR.endpoints) == null) {
            str = "";
        } else {
            str = saasAdx ? sigmobCommonEndpointsConfig.saas_ads : sigmobCommonEndpointsConfig.ads;
        }
        if (t.b(str)) {
            string = str;
        }
        if (string.indexOf(63) == -1) {
            sb2 = new StringBuilder();
            sb2.append(string);
            str2 = "?";
        } else {
            sb2 = new StringBuilder();
            sb2.append(string);
            str2 = x.a.f97576d;
        }
        sb2.append(str2);
        sb2.append(b());
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0061 -> B:32:0x0068). Please report as a decompilation issue!!! */
    public void a(SigmobSdkConfig sigmobSdkConfig) throws Throwable {
        if (sigmobSdkConfig == null) {
            return;
        }
        File file = new File(com.sigmob.sdk.base.utils.o.a() + "/config");
        if (file.exists()) {
            file.delete();
        }
        file.getParentFile().mkdirs();
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                try {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(file));
                    try {
                        sigmobSdkConfig.encode(objectOutputStream2);
                        z.b(com.sigmob.sdk.b.e(), (String) null, f79660c, n.f79584k);
                        objectOutputStream2.close();
                    } catch (IOException e10) {
                        e = e10;
                        objectOutputStream = objectOutputStream2;
                        SigmobLog.e(e.getMessage());
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream = objectOutputStream2;
                        if (objectOutputStream != null) {
                            try {
                                objectOutputStream.close();
                            } catch (IOException e11) {
                                SigmobLog.e(e11.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e12) {
                e = e12;
            }
        } catch (IOException e13) {
            SigmobLog.e(e13.getMessage());
        }
    }

    public String b(boolean saasAdx) {
        String str;
        StringBuilder sb2;
        String str2;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("https://");
        sb3.append(saasAdx ? n.X : n.U);
        String string = sb3.toString();
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null || (sigmobCommonEndpointsConfig = sigmobCommonR.endpoints) == null) {
            str = "";
        } else {
            str = saasAdx ? sigmobCommonEndpointsConfig.saas_hb_ads : sigmobCommonEndpointsConfig.hb_ads;
        }
        if (t.b(str)) {
            string = str;
        }
        if (string.indexOf(63) == -1) {
            sb2 = new StringBuilder();
            sb2.append(string);
            str2 = "?";
        } else {
            sb2 = new StringBuilder();
            sb2.append(string);
            str2 = x.a.f97576d;
        }
        sb2.append(str2);
        sb2.append(b());
        return sb2.toString();
    }

    public String c(boolean saasAdx) {
        String str;
        StringBuilder sb2;
        String str2;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("https://");
        sb3.append(saasAdx ? n.W : n.T);
        String string = sb3.toString();
        SigmobCommon sigmobCommonR = r();
        if (sigmobCommonR == null || (sigmobCommonEndpointsConfig = sigmobCommonR.endpoints) == null) {
            str = "";
        } else {
            str = saasAdx ? sigmobCommonEndpointsConfig.saas_native_ad : sigmobCommonEndpointsConfig.native_ad;
        }
        if (t.b(str)) {
            string = str;
        }
        if (string.indexOf(63) == -1) {
            sb2 = new StringBuilder();
            sb2.append(string);
            str2 = "?";
        } else {
            sb2 = new StringBuilder();
            sb2.append(string);
            str2 = x.a.f97576d;
        }
        sb2.append(str2);
        sb2.append(b());
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SigmobSdkConfig config, boolean isOnline) {
        SigmobCommon sigmobCommon;
        if (config == null || (sigmobCommon = config.sigmobCommon_config) == null) {
            return;
        }
        Boolean bool = sigmobCommon.noncompliance_mark;
        if (w.b((Object) bool)) {
            f79658a = bool;
        }
        this.f79671l = config;
        this.f79669j = ((Integer) Wire.get(config.sigmobCommon_config.configRefresh, 1800)).intValue() * 1000;
        int iK = k();
        if (iK <= 0) {
            com.sigmob.sdk.manager.d.a().c();
        } else {
            com.sigmob.sdk.manager.d.a().a(iK);
        }
        SigmobLog.d("config: " + config);
        if (w.b(this.f79672m)) {
            this.f79672m.onUpdate(isOnline);
        }
        Config.sharedInstance().setEnable_okhttp3(ab());
        Config.sharedInstance().setNetworkTimeout(ap());
        Config.sharedInstance().update(false, ae(), aa(), W(), t(), K(), J(), am());
        TrackManager.getInstance().setRetryInterval(I());
        TrackManager.getInstance().setRetryExpiredTime(H());
    }

    public boolean a(String key) {
        List<String> list;
        SigmobCommon sigmobCommonR = r();
        if (!D() || (list = sigmobCommonR.anti_fraud_log.events) == null) {
            return false;
        }
        return list.contains(key);
    }
}
