package com.byazt.aas;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.provider.Settings;
import android.view.accessibility.AccessibilityManager;
import com.haima.hmcp.utils.VolumeUtils;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 2453})
public class DeviceUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile long f11374a = -1;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static volatile BroadcastReceiver f11376da = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile long f11378n = 0;
    public static volatile com.byazt.cb.c sl = null;
    public static volatile int uj = -1;
    public static volatile int ve = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicLong f11375c = new AtomicLong();
    public static volatile int sp = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile boolean f11381x = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile boolean f11377i = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f11379t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static String f11380u = "";
    public static int tt = -1;
    public static long yp = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static long f11382z = 0;

    @com.byazt.zqa.c(c = {0, 1, 131, 2397})
    public static class DeviceStatusBroadCastReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            if (intent == null) {
                return;
            }
            com.byazt.nr.da.ve().post(new Runnable() { // from class: com.byazt.aas.DeviceUtils.DeviceStatusBroadCastReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    DeviceStatusBroadCastReceiver.this.c(intent);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(Intent intent) {
            int intExtra = -1;
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("present", false);
                if (booleanExtra) {
                    int intExtra2 = intent.getIntExtra("status", -1);
                    if (intExtra2 == -1) {
                        c.f11385c = intExtra2;
                    } else if (intExtra2 == 2) {
                        c.f11385c = 1;
                    } else {
                        c.f11385c = 0;
                    }
                } else {
                    c.f11385c = 2;
                }
                c.tt = (intent.getIntExtra("level", -1) * 100) / intent.getIntExtra("scale", -1);
                if (!com.byazt.omf.x.m().d()) {
                    com.byazt.hef.tt.c(booleanExtra);
                }
            }
            try {
                intExtra = intent.getIntExtra(VolumeUtils.EXTRA_VOLUME_STREAM_TYPE, -1);
            } catch (Exception unused) {
            }
            if (VolumeUtils.VOLUME_CHANGED_ACTION.equals(intent.getAction()) && intExtra == 3) {
                com.byazt.nr.da.c().post(new com.byazt.bwm.sp("tt_vol") { // from class: com.byazt.aas.DeviceUtils.DeviceStatusBroadCastReceiver.2
                    @Override // java.lang.Runnable
                    public void run() {
                        int i10;
                        try {
                            AudioManager audioManager = (AudioManager) com.byazt.omf.gt.getContext().getSystemService("audio");
                            if (audioManager == null) {
                                return;
                            }
                            int streamVolume = audioManager.getStreamVolume(3);
                            if (streamVolume != DeviceUtils.sp) {
                                com.byazt.qqc.ve.c().c(streamVolume);
                            }
                            if (DeviceUtils.sp != -1) {
                                if (streamVolume == 0) {
                                    i10 = 0;
                                } else {
                                    i10 = streamVolume - DeviceUtils.sp > 0 ? 2 : 1;
                                }
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                if (jCurrentTimeMillis - DeviceUtils.f11382z > 1000) {
                                    com.byazt.ukr.yp.c(i10, -1);
                                }
                                long unused2 = DeviceUtils.f11382z = jCurrentTimeMillis;
                            }
                            int unused3 = DeviceUtils.sp = streamVolume;
                        } catch (Exception unused4) {
                        }
                    }
                });
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 131, 885})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static int f11385c = -1;
        public static float tt;

        public static int c(Context context) {
            com.byazt.hef.tt.c(context);
            return f11385c;
        }

        public static float tt(Context context) {
            com.byazt.hef.tt.tt(context);
            return tt;
        }
    }

    public static int a() {
        if (uj != -1 && !c(f11378n, 60000L)) {
            return uj;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) com.byazt.omf.gt.getContext().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        uj = accessibilityManager.isEnabled() ? 1 : 0;
        f11378n = System.currentTimeMillis();
        return uj;
    }

    public static boolean c() {
        return ((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).isScreenOn();
    }

    public static int da() {
        if (sp >= 0) {
            return sp;
        }
        try {
            AudioManager audioManager = (AudioManager) com.byazt.omf.gt.getContext().getSystemService("audio");
            if (audioManager == null) {
                return 0;
            }
            int streamVolume = audioManager.getStreamVolume(3);
            com.byazt.qqc.ve.c().tt(streamVolume);
            sp = streamVolume;
            return sp;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static long i() {
        return f11374a != -1 ? f11374a : com.byazt.by.uj.c().tt("dev19", -1L);
    }

    public static float n() {
        return ((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getScreenBright();
    }

    public static void sl() {
        try {
            if (f11381x && f11376da != null) {
                com.byazt.omf.gt.getContext().getApplicationContext().unregisterReceiver(f11376da);
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public static void sp() {
        if (com.byazt.omf.gt.getContext() != null) {
            int iU = nb.u();
            com.byazt.by.uj.c().c("cpu_cnt", iU);
            nb.f11446c = iU;
            int iVe = nb.ve(nb.u());
            com.byazt.by.uj.c().c("cpu_max_freq", iVe);
            nb.tt = iVe;
            int iUj = nb.uj(nb.u());
            com.byazt.by.uj.c().c("cpu_min_freq", iUj);
            nb.ve = iUj;
            String strI = nb.i("MemTotal");
            if (strI != null) {
                com.byazt.by.uj.c().c("total_memory", strI);
                nb.uj = strI;
            }
            long jRh = nb.rh();
            com.byazt.by.uj.c().c("internal_storage", jRh);
            nb.f11450n = jRh;
            long jC = com.byazt.nr.nu.c();
            com.byazt.by.uj.c().c("free_storage", jC);
            nb.f11445a = jC;
            long jRl = nb.rl();
            com.byazt.by.uj.c().c("sdcard_storage", jRl);
            nb.sp = jRl;
            boolean zGu = nb.gu();
            com.byazt.by.uj.c().c("is_root", zGu ? 1 : 0);
            nb.f11453x = zGu ? 1 : 0;
        }
    }

    public static void t() {
        if (f11377i && sl != null) {
            sl.tt();
        }
    }

    public static int uj() {
        int iTt = com.byazt.nr.rh.tt(com.byazt.omf.gt.getContext());
        ve = iTt;
        return iTt;
    }

    public static int x() {
        return (int) (com.byazt.omf.gt.getContext().getResources().getConfiguration().fontScale * 16.0f);
    }

    public static String c(Boolean bool) {
        String imei = ((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getImei(bool);
        String str = f11380u;
        if (str == null || !str.equals(imei)) {
            f11380u = imei;
            com.byazt.zlb.ve.tt(6, imei);
        }
        return imei;
    }

    public static void ve() {
        uj();
        n();
        a();
        c(0);
        c(1);
        ((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getNewIpAddrs(false);
        my.tt((String) null);
    }

    public static String tt() {
        String androidId = ((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getAndroidId();
        String str = f11379t;
        if (str == null || !str.equals(androidId)) {
            f11379t = androidId;
            com.byazt.zlb.ve.tt(9, androidId);
        }
        return androidId;
    }

    public static void uj(Context context) {
        if (!f11381x) {
            try {
                f11376da = new DeviceStatusBroadCastReceiver();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
                intentFilter.addAction(VolumeUtils.VOLUME_CHANGED_ACTION);
                context.getApplicationContext().registerReceiver(f11376da, intentFilter);
                f11381x = true;
            } catch (Throwable unused) {
            }
        }
        if (f11377i) {
            return;
        }
        com.byazt.cb.c cVar = new com.byazt.cb.c(com.byazt.omf.gt.getContext(), com.byazt.nr.da.tt(), new com.byazt.cb.c.InterfaceC0279c() { // from class: com.byazt.aas.DeviceUtils.1
            @Override // com.byazt.cb.c.InterfaceC0279c
            public void c(int i10) {
                boolean zVe = DeviceUtils.ve(com.byazt.omf.gt.getContext());
                int i11 = DeviceUtils.tt;
                if (i11 == -1) {
                    DeviceUtils.tt = i10;
                    return;
                }
                int i12 = i11 - i10;
                DeviceUtils.tt = i10;
                if (!zVe) {
                    if (i10 != -1) {
                        com.byazt.ukr.yp.c(-1, i12 > 0 ? 1 : 2);
                    }
                    com.byazt.qqc.ve.c().c(true);
                } else if (Math.abs(i12) > 20) {
                    int i13 = i12 > 0 ? 1 : 2;
                    com.byazt.qqc.ve.c().c(true);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - DeviceUtils.yp > 1000) {
                        com.byazt.ukr.yp.c(-1, i13);
                    }
                    long unused2 = DeviceUtils.yp = jCurrentTimeMillis;
                }
            }
        });
        sl = cVar;
        cVar.c();
        f11377i = true;
    }

    public static boolean c(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void c(JSONObject jSONObject) throws JSONException {
        if (sl.tt()) {
            jSONObject.putOpt("os_new", "harmony");
            jSONObject.putOpt("harmonyos_api", sl.n());
            jSONObject.putOpt("harmonyos_version", sl.a());
            jSONObject.putOpt("harmonyos_release_type", sl.sp());
            jSONObject.putOpt("harmonyos_build_version", sl.x());
            jSONObject.putOpt("pure_mode", Integer.valueOf(sl.c(com.byazt.omf.gt.getContext()) ? 1 : 2));
        } else {
            jSONObject.putOpt("os_new", "android");
        }
        jSONObject.putOpt("rom_name", Build.BRAND);
    }

    public static boolean tt(Context context) {
        try {
            return (context.getResources().getConfiguration().uiMode & 15) == 4;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static void tt(JSONObject jSONObject) {
        try {
            jSONObject.put("package_name", nb.x());
            jSONObject.put("version_code", nb.i());
            jSONObject.put("version", nb.da());
        } catch (Exception unused) {
        }
    }

    public static boolean ve(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness_mode") == 1;
        } catch (Settings.SettingNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static String c(int i10) {
        return ((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getNetworkSignalType(i10);
    }

    public static boolean c(long j10, long j11) {
        return System.currentTimeMillis() - j10 > j11;
    }

    public static JSONObject c(int i10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", com.byazt.omf.x.m().rl());
            jSONObject.put("name", com.byazt.omf.x.m().qy());
            tt(jSONObject);
            com.byazt.qh.tt.tt(jSONObject);
            jSONObject.put("is_paid_app", com.byazt.omf.x.m().gu());
            if (!com.byazt.by.uj.c().sp(i10)) {
                jSONObject.put("network_speed", com.byazt.hy.c.c());
            }
            jSONObject.put("apk_sign", com.byazt.fh.c.sl());
            jSONObject.put("useful_open_sdk", com.byazt.wdw.uj.ve().tt());
            jSONObject.put("real_app_name", com.byazt.fh.c.da());
            jSONObject.put("app_cold_startup_time", com.byazt.qw.ve.ve().c());
            jSONObject.put("sdk_init_timestamp", com.byazt.qw.ve.ve().tt());
            if (z10) {
                jSONObject.put("session_ad_index", f11375c.addAndGet(1L));
                if (com.byazt.omf.gt.tt().ri()) {
                    long jVe = com.byazt.qw.c.ve();
                    jSONObject.put("app_total_7_duration", com.byazt.qw.c.uj() + jVe);
                    jSONObject.put("app_use_7_duration", jVe);
                    jSONObject.put("start_session", com.byazt.qw.c.n());
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void c(long j10) {
        if (j10 == -1 || f11374a == j10) {
            return;
        }
        f11374a = j10;
        com.byazt.by.uj.c().c("dev19", j10);
    }
}
