package com.byazt.aas;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import com.byazt.bv.BaseConstants;
import com.byazt.ete.dz;
import com.byazt.ete.hq;
import com.byazt.ete.ic;
import com.byazt.ete.ma;
import com.byazt.ete.pu;
import com.byazt.ete.xd;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.tencent.stat.DeviceInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM})
public class nb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile long f11445a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile int f11446c = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile long f11450n = 0;
    public static long sl = -1;
    public static volatile long sp = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile boolean f11451t = false;
    public static volatile int tt = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static volatile int f11452u = 0;
    public static volatile String uj = null;
    public static volatile int ve = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile int f11453x = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static String f11454z;
    public static final AtomicBoolean yp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile String f11449m = null;
    public static volatile String nu = null;
    public static volatile String rh = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f11448i = null;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static String f11447da = null;

    /* JADX INFO: renamed from: com.byazt.aas.nb$2, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 131, 2492})
    static class AnonymousClass2 implements FilenameFilter {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Pattern f11455c = Pattern.compile("^cpu[0-9]+$");

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.f11455c.matcher(str).matches();
        }
    }

    public static boolean a(ic icVar) {
        int iSl = sl(icVar);
        return iSl == 3 || iSl == 4 || iSl == 9 || iSl == 7 || iSl == 8;
    }

    public static String c(int i10) {
        switch (i10) {
            case 1:
                return "embeded_ad_landingpage";
            case 2:
                return "banner_ad_landingpage";
            case 3:
                return "interaction_landingpage";
            case 4:
                return "splash_ad_landingpage";
            case 5:
                return "fullscreen_interstitial_ad_landingpage";
            case 6:
                return "draw_ad_landingpage";
            case 7:
                return "rewarded_video_landingpage";
            default:
                return null;
        }
    }

    public static String da(ic icVar) {
        com.byazt.ete.nu nuVarYp;
        if (icVar == null || (nuVarYp = icVar.yp()) == null) {
            return null;
        }
        return nuVarYp.tt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void eo() {
        List<String> listEn;
        com.byazt.ogz.sl slVarTt = com.byazt.omf.gt.tt();
        if (com.byazt.omf.x.m().lo()) {
            com.byazt.omf.x.m().i(false);
            return;
        }
        if (slVarTt.k() || (listEn = slVarTt.en()) == null) {
            return;
        }
        int iIy = slVarTt.iy();
        for (int i10 = 0; i10 < iIy && i10 < listEn.size(); i10++) {
            Uri uri = Uri.parse(listEn.get(i10));
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            c(intent, true);
        }
    }

    public static boolean gr(ic icVar) {
        if (icVar == null) {
            return true;
        }
        int iA = com.byazt.omf.gt.tt().a(t(icVar));
        if (iA == 1) {
            return com.byazt.nr.rh.uj(com.byazt.omf.gt.getContext());
        }
        if (iA == 2) {
            return com.byazt.nr.rh.n(com.byazt.omf.gt.getContext()) || com.byazt.nr.rh.uj(com.byazt.omf.gt.getContext()) || com.byazt.nr.rh.a(com.byazt.omf.gt.getContext());
        }
        if (iA != 3) {
            return iA != 5 || com.byazt.nr.rh.uj(com.byazt.omf.gt.getContext()) || com.byazt.nr.rh.a(com.byazt.omf.gt.getContext());
        }
        return false;
    }

    public static String gt(ic icVar) {
        if (icVar.z() != null && !TextUtils.isEmpty(icVar.z().ve())) {
            return icVar.z().ve();
        }
        if (TextUtils.isEmpty(icVar.an())) {
            return !TextUtils.isEmpty(icVar.v_()) ? icVar.v_() : "";
        }
        return icVar.an();
    }

    public static boolean gu() {
        try {
            return new File("/system/bin/su").exists() || new File("/system/xbin/su").exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void h() {
        String strEy = com.byazt.omf.gt.tt().ey();
        try {
            Matcher matcher = Pattern.compile("\\|\\|([a-zA-Z0-9.-]+)\\^").matcher(strEy);
            while (matcher.find()) {
                String strGroup = matcher.group(1);
                if (!TextUtils.isEmpty(strGroup)) {
                    com.byazt.ete.cu.f13601c.add(strGroup);
                }
            }
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(strEy)) {
            return;
        }
        Set<String> set = com.byazt.ete.cu.f13601c;
        if (set.isEmpty()) {
            set.add("empty");
        }
    }

    public static boolean i(ic icVar) {
        JSONObject jSONObjectQ_;
        if (icVar == null || (jSONObjectQ_ = icVar.q_()) == null) {
            return false;
        }
        try {
            int iOptInt = new JSONObject(jSONObjectQ_.optString("compliance_data")).optJSONObject("ad").optInt("pricing_type");
            return iOptInt == 3 || iOptInt == 6;
        } catch (Exception e10) {
            com.byazt.nr.m.uj("ToolUtils", "error:" + e10.getMessage());
            return false;
        }
    }

    public static String m(ic icVar) {
        JSONObject jSONObjectQ_ = icVar.q_();
        return jSONObjectQ_ != null ? jSONObjectQ_.optString("req_id", "") : "";
    }

    public static String md(ic icVar) {
        if (icVar == null) {
            return null;
        }
        JSONObject jSONObjectUr = icVar.ur();
        String strOptString = jSONObjectUr != null ? jSONObjectUr.optString("pkg") : null;
        return TextUtils.isEmpty(strOptString) ? p(icVar) : strOptString;
    }

    public static String my(ic icVar) {
        if (icVar == null) {
            return "";
        }
        com.byazt.ete.n nVarZ = icVar.z();
        String strTt = nVarZ != null ? nVarZ.tt() : null;
        return TextUtils.isEmpty(strTt) ? icVar.l() : strTt;
    }

    public static int n(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return (i10 == 3 || i10 == 4 || i10 == 7 || i10 == 8) ? 5 : 3;
        }
        return 4;
    }

    public static int nu(ic icVar) {
        JSONObject jSONObjectQ_ = icVar.q_();
        if (jSONObjectQ_ != null) {
            return jSONObjectQ_.optInt("pricing", 0);
        }
        return 0;
    }

    public static String p(ic icVar) {
        Object obj;
        if (icVar == null) {
            return "";
        }
        com.byazt.ete.a aVarRh = icVar.rh();
        String strU = aVarRh != null ? aVarRh.u() : "";
        if (!TextUtils.isEmpty(strU)) {
            return strU;
        }
        com.byazt.ete.n nVarZ = icVar.z();
        if (nVarZ != null) {
            strU = nVarZ.uj();
        }
        if (!TextUtils.isEmpty(strU)) {
            return strU;
        }
        Map<String, Object> mapYt = icVar.yt();
        if (mapYt != null && (obj = mapYt.get("ad_package_name")) != null) {
            strU = obj.toString();
        }
        return !TextUtils.isEmpty(strU) ? strU : icVar.ls();
    }

    public static int qy() {
        if (f11453x >= 0) {
            return f11453x;
        }
        int iTt = com.byazt.by.uj.c().tt("is_root", -1);
        f11453x = iTt;
        return iTt;
    }

    public static int rh(ic icVar) {
        JSONObject jSONObjectQ_ = icVar.q_();
        if (jSONObjectQ_ != null) {
            return jSONObjectQ_.optInt("price", 0);
        }
        return 0;
    }

    public static String rl(ic icVar) {
        if (TextUtils.isEmpty(icVar.v_())) {
            return !TextUtils.isEmpty(icVar.op()) ? icVar.op() : "";
        }
        return icVar.v_();
    }

    public static int sl(ic icVar) {
        JSONObject jSONObjectQ_;
        if (icVar == null || (jSONObjectQ_ = icVar.q_()) == null) {
            return 0;
        }
        return jSONObjectQ_.optInt("ad_slot_type", 0);
    }

    public static boolean sp(ic icVar) {
        if (icVar == null) {
            return false;
        }
        int iSl = sl(icVar);
        return iSl == 5 || iSl == 1 || iSl == 2;
    }

    public static int t(ic icVar) {
        JSONObject jSONObjectQ_;
        if (icVar == null || (jSONObjectQ_ = icVar.q_()) == null) {
            return 0;
        }
        return jSONObjectQ_.optInt("rit", 0);
    }

    public static String tt(int i10) {
        switch (i10) {
            case 1:
                return com.byazt.dyf.tt.AD_TAG_BANNER;
            case 2:
                return "interaction";
            case 3:
            case 4:
                return "splash_ad";
            case 5:
            default:
                return com.byazt.dyf.tt.AD_TAG_FEED;
            case 6:
                return "stream";
            case 7:
                return "rewarded_video";
            case 8:
                return "fullscreen_interstitial_ad";
            case 9:
                return "draw_ad";
        }
    }

    public static String u(ic icVar) {
        JSONObject jSONObjectQ_ = icVar.q_();
        return jSONObjectQ_ != null ? jSONObjectQ_.optString("origin_req_id", "") : "";
    }

    private static boolean uj(Intent intent) {
        try {
            List<ResolveInfo> listC = x.c(intent, 65536);
            return listC != null && listC.size() > 0;
        } catch (Throwable unused) {
        }
    }

    public static boolean ve(String str) {
        String[] strArr = {"data", "media", "obb"};
        for (int i10 = 0; i10 < 3; i10++) {
            if (c(strArr[i10], str).exists()) {
                return true;
            }
        }
        return false;
    }

    public static boolean x(ic icVar) {
        if (icVar == null) {
            return false;
        }
        int iSl = sl(icVar);
        return iSl == 3 || iSl == 4;
    }

    public static String yp(ic icVar) {
        JSONObject jSONObjectQ_ = icVar.q_();
        return jSONObjectQ_ != null ? jSONObjectQ_.optString("customer_id", "") : "";
    }

    public static boolean yv(ic icVar) {
        return icVar != null && TextUtils.equals(icVar.gu(), icVar.uj()) && icVar.i() == 3 && !TextUtils.isEmpty(p(icVar));
    }

    public static double z(ic icVar) {
        return ve(icVar.q_());
    }

    private static boolean zb() {
        try {
            return "mounted".equals(com.byazt.bzd.uj.c());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String zm() {
        return qp.tt(String.format("https://%s", "applog.bytedance.net/service/2/app_log_test/"));
    }

    public static long a(String str) {
        return c(n(str));
    }

    public static boolean c(Context context, String str) {
        Intent intentTt;
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                if (yv()) {
                    if (!tt(str) || (intentTt = tt(context, str)) == null) {
                        return false;
                    }
                    intentTt.putExtra("START_ONLY_FOR_ANDROID", true);
                    com.byazt.nr.tt.c(context, intentTt, null);
                    return true;
                }
                Intent intentTt2 = tt(context, str);
                if (intentTt2 == null) {
                    return false;
                }
                intentTt2.putExtra("START_ONLY_FOR_ANDROID", true);
                context.startActivity(intentTt2);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static boolean gu(ic icVar) {
        if (icVar == null || com.byazt.ete.my.uj(icVar)) {
            return false;
        }
        int iPu = icVar.pu();
        return iPu == 5 || iPu == 4;
    }

    public static JSONObject n(String str) {
        if (TextUtils.isEmpty(str) || str == null || str.isEmpty()) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    public static int sp(String str) {
        return tt(n(str));
    }

    public static Intent tt(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 33 && !launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(C.ENCODING_PCM_MU_LAW);
        return launchIntentForPackage;
    }

    public static double x(String str) {
        return ve(n(str));
    }

    public static int z() {
        if (tt > 0) {
            return tt;
        }
        int iTt = com.byazt.by.uj.c().tt("cpu_max_freq", 0);
        tt = iTt;
        return iTt;
    }

    public static String da() {
        if (TextUtils.isEmpty(nu) && com.byazt.omf.gt.getContext() != null) {
            try {
                PackageInfo packageInfo = com.byazt.omf.gt.getContext().getPackageManager().getPackageInfo(x(), 0);
                f11449m = String.valueOf(packageInfo.versionCode);
                nu = packageInfo.versionName;
            } catch (Throwable th) {
                com.byazt.nr.m.ve("ToolUtils", "ToolUtils getVersionName throws exception :", th);
            }
        }
        return nu;
    }

    public static int m() {
        if (ve > 0) {
            return ve;
        }
        int iTt = com.byazt.by.uj.c().tt("cpu_min_freq", 0);
        ve = iTt;
        return iTt;
    }

    public static long nu() {
        if (f11450n > 0) {
            return f11450n;
        }
        long jTt = com.byazt.by.uj.c().tt("internal_storage", 0L);
        f11450n = jTt;
        return jTt;
    }

    public static long rh() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String sl() {
        if (!TextUtils.isEmpty(uj) && !uj.equals("0")) {
            return uj;
        }
        String strTt = com.byazt.by.uj.c().tt("total_memory", "0");
        uj = strTt;
        return strTt;
    }

    public static String t() {
        return String.valueOf(Long.parseLong(sl()) * 1024);
    }

    public static int u() {
        return Math.max(Runtime.getRuntime().availableProcessors(), 0);
    }

    public static boolean uj() {
        return (com.byazt.omf.x.m() == null || com.byazt.omf.x.m().c()) ? false : true;
    }

    public static int yp() {
        if (f11446c > 0) {
            return f11446c;
        }
        int iTt = com.byazt.by.uj.c().tt("cpu_cnt", 0);
        f11446c = iTt;
        return iTt;
    }

    public static boolean zm(ic icVar) {
        return icVar != null && icVar.ab() == 1;
    }

    public static void a() {
        if (com.byazt.omf.p.uj()) {
            ((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getWebViewUA(true);
        }
    }

    public static String sp() {
        return UUID.randomUUID().toString();
    }

    public static String u(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("KLLK")) {
            return str.replace("KLLK", BaseConstants.ROM_OPPO_UPPER_CONSTANT);
        }
        return str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }

    public static int uj(String str) {
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return 2;
            case "rewarded_video":
                return 7;
            case "fullscreen_interstitial_ad":
                return 5;
            case "splash_ad":
            case "cache_splash_ad":
                return 4;
            case "interaction":
                return 3;
            case "draw_ad":
                return 6;
            default:
                return 1;
        }
    }

    @HungeonFlag
    public static String x() {
        if (!TextUtils.isEmpty(rh)) {
            return rh;
        }
        if (com.byazt.omf.gt.getContext() != null) {
            try {
                rh = com.byazt.omf.gt.getContext().getPackageName();
            } catch (Throwable th) {
                com.byazt.nr.m.ve("ToolUtils", "ToolUtils getPackageName throws exception :", th);
            }
        }
        return rh;
    }

    public static void md() {
        if (f11451t && f11452u == com.byazt.ppf.ve.c()) {
            return;
        }
        f11451t = true;
        f11452u = com.byazt.ppf.ve.c();
        com.byazt.sxv.c cVarC = com.byazt.sxv.c.c();
        if (com.byazt.ppf.ve.tt()) {
            cVarC.c("open_live_saas", new com.byazt.ny.ve());
            cVarC.c("open_miniapp", new com.byazt.ny.uj());
            cVarC.c("open_landing_page", new com.byazt.ny.tt());
            cVarC.c("download", new com.byazt.ny.c());
            cVarC.c("open_scheme", new com.byazt.ny.n());
        } else {
            cVarC.c("open_sass_live", new com.byazt.cj.sl());
            cVarC.c("open_miniapp", new com.byazt.cj.t());
            cVarC.c("open_landing_page", new com.byazt.cj.da());
            cVarC.c("download", new com.byazt.cj.sp());
            cVarC.c("open_scheme", new com.byazt.cj.u());
        }
        cVarC.c("open_policy", new com.byazt.cj.yp());
        cVarC.c("end_card", new com.byazt.cj.i());
        cVarC.c("common_popup", new com.byazt.cj.c());
        cVarC.c("desc_popup", new com.byazt.cj.tt());
        cVarC.c("permission_popup", new com.byazt.cj.ve());
        cVarC.c("privacy_popup", new com.byazt.cj.uj());
        cVarC.c("registration_pop", new com.byazt.cj.n());
        cVarC.c("dislike_popup", new com.byazt.cj.a());
        cVarC.c("download_popup", new com.byazt.cj.x());
        cVarC.c("reward_again", new com.byazt.cj.rh());
        cVarC.c("reward_continue", new com.byazt.cj.rh());
        cVarC.c("close_reward", new com.byazt.cj.nu());
        cVarC.c("report_event", new com.byazt.cj.z());
        cVarC.c("report_stats", new com.byazt.cj.m());
    }

    public static long my() {
        if (f11445a > 0) {
            return f11445a;
        }
        long jTt = com.byazt.by.uj.c().tt("free_storage", 0L);
        f11445a = jTt;
        return jTt;
    }

    public static JSONObject qy(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.q_();
    }

    public static long rl() {
        try {
            if (!zb()) {
                return 0L;
            }
            StatFs statFs = new StatFs(com.byazt.nr.sp.ve(com.byazt.omf.gt.getContext(), false, null).getPath());
            return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            com.byazt.nr.m.uj("ToolUtils", th.getMessage());
            return 0L;
        }
    }

    public static String t(String str) {
        return c(str, false, 1);
    }

    public static boolean uj(ic icVar) {
        if (icVar != null) {
            boolean z10 = sl(icVar) == 5;
            if (pu.tt(icVar) == 7 && z10) {
                return true;
            }
        }
        return false;
    }

    public static void ve() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.aas.nb.1
                @Override // java.lang.Runnable
                public void run() {
                    nb.eo();
                }
            });
        } else {
            eo();
        }
    }

    public static boolean n(ic icVar) {
        int iSl = sl(icVar);
        return (iSl == 9 || iSl == 8 || iSl == 7) && !TextUtils.isEmpty(xd.c(icVar));
    }

    public static boolean yv() {
        Context context = com.byazt.omf.gt.getContext();
        if (context == null) {
            com.byazt.nr.m.ve("params context is null");
            return false;
        }
        boolean z10 = context.getApplicationInfo().targetSdkVersion >= 30 && Build.VERSION.SDK_INT >= 30 && context.checkSelfPermission("android.permission.QUERY_ALL_PACKAGES") != 0;
        StringBuilder sb2 = new StringBuilder("can query all package = ");
        sb2.append(!z10);
        com.byazt.nr.m.c("ToolUtils", sb2.toString());
        return !z10;
    }

    public static boolean z(String str) {
        long jM = m(str);
        return jM != 0 && System.currentTimeMillis() - (jM * 1000) > 0;
    }

    public static long gt() {
        if (sp > 0) {
            return sp;
        }
        long jTt = com.byazt.by.uj.c().tt("sdcard_storage", 0L);
        sp = jTt;
        return jTt;
    }

    public static String i() {
        if (TextUtils.isEmpty(f11449m) && com.byazt.omf.gt.getContext() != null) {
            try {
                PackageInfo packageInfo = com.byazt.omf.gt.getContext().getPackageManager().getPackageInfo(x(), 0);
                f11449m = String.valueOf(packageInfo.versionCode);
                nu = packageInfo.versionName;
            } catch (Throwable th) {
                com.byazt.nr.m.ve("ToolUtils", "ToolUtils getVersionCode throws exception :", th);
            }
        }
        return f11449m;
    }

    public static long m(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        Matcher matcher = Pattern.compile("/([^/]+)/video/tos/cn").matcher(str);
        if (matcher.find()) {
            String strGroup = matcher.group(1);
            if (TextUtils.isEmpty(strGroup)) {
                return 0L;
            }
            try {
                long j10 = Long.parseLong(strGroup, 16);
                return str.contains("v3-be-pack") ? j10 + 10800 : j10;
            } catch (Exception unused) {
            }
        }
        return 0L;
    }

    private static String nu(String str) {
        if (TextUtils.isEmpty(str)) {
            f11448i = "empty";
            return "api-access.pangolin-sdk-toutiao1.com";
        }
        if (!str.contains("api-access")) {
            f11448i = str;
            return "api-access.pangolin-sdk-toutiao1.com";
        }
        f11448i = null;
        return str;
    }

    private static String rh(String str) {
        if (TextUtils.isEmpty(str)) {
            f11447da = "empty";
            return "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/";
        }
        if (!str.contains("service/2/app_log")) {
            f11447da = str;
            return "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/";
        }
        f11447da = null;
        return str;
    }

    public static String sl(String str) {
        return c(str, false, 0);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005f A[Catch: Exception -> 0x005b, TRY_LEAVE, TryCatch #3 {Exception -> 0x005b, blocks: (B:24:0x0057, B:27:0x005f), top: B:43:0x0057 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x006c A[Catch: Exception -> 0x006f, TRY_LEAVE, TryCatch #0 {Exception -> 0x006f, blocks: (B:31:0x0067, B:33:0x006c), top: B:37:0x0067 }] */
    public static int uj(int i10) {
        BufferedReader bufferedReader;
        Throwable th;
        int i11 = 0;
        FileReader fileReader = null;
        BufferedReader bufferedReader2 = null;
        while (true) {
            i10--;
            if (i10 < 0) {
                return i11;
            }
            try {
                FileReader fileReader2 = new FileReader("/sys/devices/system/cpu/cpu" + i10 + "/cpufreq/cpuinfo_min_freq");
                try {
                    BufferedReader bufferedReader3 = new BufferedReader(fileReader2);
                    try {
                        int i12 = Integer.parseInt(bufferedReader3.readLine());
                        if (i12 < i11 || i11 == 0) {
                            i11 = i12;
                        }
                        try {
                            bufferedReader3.close();
                            fileReader2.close();
                        } catch (Exception unused) {
                        }
                        bufferedReader2 = bufferedReader3;
                        fileReader = fileReader2;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader3;
                        fileReader = fileReader2;
                        try {
                            com.byazt.nr.m.uj("ToolUtils", th.getMessage());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                    if (fileReader != null) {
                                        fileReader.close();
                                    }
                                } catch (Exception unused2) {
                                    bufferedReader2 = bufferedReader;
                                }
                            } else if (fileReader != null) {
                                fileReader.close();
                            }
                            bufferedReader2 = bufferedReader;
                        } catch (Throwable th3) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                    if (fileReader != null) {
                                        fileReader.close();
                                    }
                                } catch (Exception unused3) {
                                    throw th3;
                                }
                            } else if (fileReader != null) {
                                fileReader.close();
                            }
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    BufferedReader bufferedReader4 = bufferedReader2;
                    th = th4;
                    fileReader = fileReader2;
                    bufferedReader = bufferedReader4;
                }
            } catch (Throwable th5) {
                bufferedReader = bufferedReader2;
                th = th5;
            }
        }
    }

    public static int[] yp(String str) {
        if (TextUtils.isEmpty(str)) {
            return new int[0];
        }
        String[] strArrSplit = str.split(",");
        int[] iArr = new int[strArrSplit.length];
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            try {
                iArr[i10] = Integer.parseInt(strArrSplit[i10]);
            } catch (Exception unused) {
            }
        }
        return iArr;
    }

    public static boolean tt(String str) {
        Context context = com.byazt.omf.gt.getContext();
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if (yv()) {
            try {
                return context.getPackageManager().getPackageInfo(str, 0) != null;
            } catch (Throwable unused) {
                return false;
            }
        }
        if (com.byazt.omf.gt.tt().em()) {
            return ve(str);
        }
        return false;
    }

    public static boolean ve(ic icVar) {
        return icVar != null && sl(icVar) == 9;
    }

    public static String gr() {
        return qp.tt(Uri.parse(String.format("https://%s", rh(com.byazt.omf.gt.tt().eo()))).buildUpon().appendQueryParameter("datetime", new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date(new Long(System.currentTimeMillis()).longValue()))).toString());
    }

    private static String my(String str) {
        try {
            return Uri.parse(str).buildUpon().appendQueryParameter(DeviceInfo.TAG_ANDROID_ID, "1371").appendQueryParameter("device_platform", "android").appendQueryParameter("version_code", i()).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static long n() {
        return sl;
    }

    private static double ve(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optDouble("pack_time", 0.0d);
        }
        return 0.0d;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005c A[Catch: Exception -> 0x0058, TRY_LEAVE, TryCatch #3 {Exception -> 0x0058, blocks: (B:22:0x0054, B:25:0x005c), top: B:41:0x0054 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0069 A[Catch: Exception -> 0x006c, TRY_LEAVE, TryCatch #1 {Exception -> 0x006c, blocks: (B:29:0x0064, B:31:0x0069), top: B:37:0x0064 }] */
    public static int ve(int i10) {
        BufferedReader bufferedReader;
        Throwable th;
        int i11 = 0;
        FileReader fileReader = null;
        BufferedReader bufferedReader2 = null;
        while (true) {
            i10--;
            if (i10 < 0) {
                return i11;
            }
            try {
                FileReader fileReader2 = new FileReader("/sys/devices/system/cpu/cpu" + i10 + "/cpufreq/cpuinfo_max_freq");
                try {
                    BufferedReader bufferedReader3 = new BufferedReader(fileReader2);
                    try {
                        int i12 = Integer.parseInt(bufferedReader3.readLine());
                        if (i12 > i11) {
                            i11 = i12;
                        }
                        try {
                            bufferedReader3.close();
                            fileReader2.close();
                        } catch (Exception unused) {
                        }
                        bufferedReader2 = bufferedReader3;
                        fileReader = fileReader2;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader3;
                        fileReader = fileReader2;
                        try {
                            com.byazt.nr.m.uj("ToolUtils", th.getMessage());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                    if (fileReader != null) {
                                        fileReader.close();
                                    }
                                } catch (Exception unused2) {
                                    bufferedReader2 = bufferedReader;
                                }
                            } else if (fileReader != null) {
                                fileReader.close();
                            }
                            bufferedReader2 = bufferedReader;
                        } catch (Throwable th3) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                    if (fileReader != null) {
                                        fileReader.close();
                                    }
                                } catch (Exception unused3) {
                                    throw th3;
                                }
                            } else if (fileReader != null) {
                                fileReader.close();
                            }
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    BufferedReader bufferedReader4 = bufferedReader2;
                    th = th4;
                    fileReader = fileReader2;
                    bufferedReader = bufferedReader4;
                }
            } catch (Throwable th5) {
                bufferedReader = bufferedReader2;
                th = th5;
            }
        }
    }

    public static String c(String str) {
        Uri uri;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null) {
            return "";
        }
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) ? "" : scheme.toLowerCase(Locale.US);
    }

    public static boolean da(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String p() {
        return x() + ".openadsdk.permission.TT_PANGOLIN";
    }

    public static boolean tt(Intent intent, boolean z10) {
        Boolean boolC;
        Uri data = intent.getData();
        if (data == null) {
            return false;
        }
        String strC = yv.c(data);
        if (z10 && (boolC = yv.c(strC, 86400000L)) != null) {
            return boolC.booleanValue();
        }
        boolean zUj = uj(intent);
        yv.c(strC, Boolean.valueOf(zUj));
        return zUj;
    }

    private static File c(String str, String str2) {
        if (f11454z == null) {
            String str3 = System.getenv("EXTERNAL_STORAGE");
            f11454z = str3;
            if (str3 == null) {
                f11454z = "/sdcard";
            }
        }
        return new File(f11454z, "Android/" + str + e.F0 + str2);
    }

    public static String i(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String line;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 4096);
                do {
                    try {
                        line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            com.byazt.nr.m.c(th);
                            return null;
                        } finally {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception unused2) {
                                }
                            }
                        }
                    }
                } while (!line.contains(str));
                if (line == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                    try {
                        fileReader.close();
                    } catch (Exception unused4) {
                    }
                    return null;
                }
                String str2 = line.split("\\s+")[1];
                try {
                    bufferedReader.close();
                } catch (Exception unused5) {
                }
                try {
                    fileReader.close();
                } catch (Exception unused6) {
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
            bufferedReader = null;
        }
    }

    public static String uj(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean c(Intent intent, boolean z10) {
        if (intent != null && yv()) {
            return tt(intent, z10);
        }
        return false;
    }

    public static boolean tt() {
        try {
            PackageInfo packageInfo = com.byazt.omf.gt.getContext().getPackageManager().getPackageInfo(com.byazt.omf.gt.getContext().getPackageName(), 0);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ROOT);
            return simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())).compareTo(simpleDateFormat.format(Long.valueOf(packageInfo.firstInstallTime))) > 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static long ve(Context context) {
        int i10 = -1;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                i10 = context.getApplicationInfo().minSdkVersion;
                com.byazt.nr.m.c("ToolUtils", "minSdkVersion = ", Integer.valueOf(i10));
            }
        } catch (Throwable unused) {
        }
        return i10;
    }

    public static boolean c(Intent intent) {
        if (intent != null && yv()) {
            return tt(intent, false);
        }
        return false;
    }

    public static List<String> c() {
        ArrayList arrayList = new ArrayList();
        if (com.byazt.omf.gt.tt().nc() && com.byazt.omf.x.m().nu().alist()) {
            Intent intent = new Intent("android.intent.action.MAIN");
            if (Build.VERSION.SDK_INT >= 23) {
                Iterator<ResolveInfo> it2 = x.c(intent, 131072).iterator();
                while (it2.hasNext()) {
                    ActivityInfo activityInfo = it2.next().activityInfo;
                    if (activityInfo != null) {
                        String str = activityInfo.packageName;
                        if (!TextUtils.isEmpty(str) && !arrayList.contains(str)) {
                            arrayList.add(str);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static void ve(Intent intent) {
        if (intent == null) {
            return;
        }
        Uri data = intent.getData();
        if (data == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        } else if (com.byazt.omf.gt.tt().rh(data.getScheme())) {
            intent.addFlags(805339136);
        } else {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
    }

    public static String tt(ic icVar) {
        if (icVar == null) {
            return null;
        }
        try {
            return tt(sl(icVar));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static int tt(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optInt("ut", 0);
        }
        return 0;
    }

    public static Map<String, Object> tt(boolean z10, ic icVar, long j10, long j11, String str) {
        HashMap map = new HashMap();
        map.put("creative_id", icVar.uj());
        map.put(com.baidu.mobads.sdk.internal.d.f7829b, Long.valueOf(j10));
        if (!z10) {
            map.put("error_code", Long.valueOf(j11));
            if (TextUtils.isEmpty(str)) {
                str = "unknown";
            }
            map.put("error_message", str);
        }
        return map;
    }

    public static String tt(long j10, long j11) {
        return String.valueOf(((int) (Math.abs(j11 - j10) / 86400000)) + 1);
    }

    public static int c(ic icVar) {
        int iGr = com.byazt.omf.gt.tt().gr();
        int iIntValue = 0;
        if (iGr != -1) {
            return (iGr == 0 || iGr != 1) ? 0 : 1;
        }
        try {
            ma maVarSp = pu.sp(icVar);
            dz dzVarA = pu.a(icVar);
            if (maVarSp != null) {
                String strA = maVarSp.a();
                if (!TextUtils.isEmpty(strA)) {
                    iIntValue = Integer.valueOf(strA).intValue();
                }
            } else if (dzVarA != null) {
                String strT = dzVarA.t();
                if (!TextUtils.isEmpty(strT)) {
                    iIntValue = Integer.valueOf(strT).intValue();
                }
            }
            return iIntValue;
        } catch (Exception e10) {
            com.byazt.nr.m.uj("tl", e10.getMessage());
            return iIntValue;
        }
    }

    public static int tt(com.byazt.dj.tt ttVar) {
        if (ttVar == null) {
            return 0;
        }
        try {
            return Integer.parseInt(ttVar.uj());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static long tt(Context context) {
        int i10;
        try {
            i10 = context.getApplicationInfo().targetSdkVersion;
            try {
                com.byazt.nr.m.c("ToolUtils", "targetSdkVersion = ", Integer.valueOf(i10));
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            i10 = -1;
        }
        return i10;
    }

    public static ic tt(Intent intent) {
        ic icVarC;
        if (intent == null) {
            return null;
        }
        try {
            String stringExtra = intent.getStringExtra("multi_process_materialmeta");
            if (!TextUtils.isEmpty(stringExtra) && (icVarC = com.byazt.omf.c.c(new JSONObject(stringExtra))) != null) {
                return icVarC;
            }
        } catch (Exception e10) {
            com.byazt.nr.m.ve("ToolUtils", "getMaterialMeta from intent failed", e10);
        }
        String stringExtra2 = intent.getStringExtra("multi_process_materialmeta_key");
        ic icVar = (ic) com.byazt.omf.rl.tt(stringExtra2, ic.class);
        if (icVar != null) {
            return icVar;
        }
        com.byazt.it.ve veVarC = com.byazt.vif.uj.c(com.byazt.vxy.c.uj(), "sp_meta");
        String strVe = com.byazt.nr.c.ve(veVarC.get(stringExtra2, ""));
        try {
            if (TextUtils.isEmpty(strVe)) {
                com.byazt.nr.m.uj("ToolUtils", "getMaterialMeta from keva failed , md5" + stringExtra2);
                return null;
            }
            return com.byazt.omf.c.c(new JSONObject(strVe));
        } catch (Exception e11) {
            com.byazt.nr.m.c(e11);
            com.byazt.nr.m.ve("ToolUtils", "getMaterialMeta from keva failed", e11);
            return null;
        } finally {
            veVarC.remove(stringExtra2);
        }
    }

    private static long c(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optLong("uid", 0L);
        }
        return 0L;
    }

    public static String c(ic icVar, String str) {
        JSONObject jSONObjectQ_ = icVar.q_();
        return jSONObjectQ_ != null ? jSONObjectQ_.optString("rit", str) : str;
    }

    public static String c(com.byazt.dj.tt ttVar) {
        String strDecryptWithCBC;
        try {
            JSONObject jSONObject = new JSONObject(ttVar.rl());
            int iOptInt = jSONObject.optInt("cypher");
            String strOptString = jSONObject.optString("message");
            if (iOptInt == 3) {
                strDecryptWithCBC = com.byazt.nr.c.ve(strOptString);
            } else if (iOptInt == 4) {
                com.byazt.dna.n nVarTt = gr.tt();
                strDecryptWithCBC = nVarTt == null ? "" : nVarTt.decryptWithCBC(strOptString);
                if (strDecryptWithCBC == null) {
                    strDecryptWithCBC = "";
                }
            } else {
                strDecryptWithCBC = null;
            }
            JSONArray jSONArrayOptJSONArray = new JSONObject(strDecryptWithCBC).optJSONArray("creatives");
            StringBuilder sb2 = new StringBuilder();
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    String strOptString2 = ((JSONObject) jSONArrayOptJSONArray.get(i10)).optString("material_key");
                    if (i10 != 0) {
                        sb2.append("," + strOptString2);
                    } else {
                        sb2.append(strOptString2);
                    }
                }
            }
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String tt(ic icVar, String str) {
        hq hqVarA_;
        if (icVar == null || (hqVarA_ = icVar.A_()) == null || hqVarA_.tt() != 1 || TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str);
        if (str.indexOf("?") != -1) {
            sb2.append(x.a.f97576d);
        } else {
            sb2.append("?");
        }
        sb2.append("open_method=");
        if (!com.byazt.wdw.uj.ve().c()) {
            sb2.append(2);
            return sb2.toString();
        }
        sb2.append(hqVarA_.a());
        return sb2.toString();
    }

    public static Map<String, Object> c(long j10, ic icVar, com.byazt.fk.sp spVar) {
        HashMap map = new HashMap();
        map.put("video_start_duration", Long.valueOf(j10));
        if (icVar != null) {
            if (!TextUtils.isEmpty(icVar.uj())) {
                map.put("creative_id", icVar.uj());
            }
            com.byazt.jzl.uj ujVarZ = xd.z(icVar);
            if (ujVarZ != null) {
                map.put("video_resolution", ujVarZ.getResolution());
                map.put("video_size", Long.valueOf(ujVarZ.getSize()));
            }
        }
        c(map, spVar);
        return map;
    }

    public static Map<String, Object> c(boolean z10, ic icVar, long j10, long j11, String str) {
        HashMap map = new HashMap();
        map.put("creative_id", icVar.uj());
        map.put(com.baidu.mobads.sdk.internal.d.f7829b, Long.valueOf(j10));
        com.byazt.jzl.uj ujVarZ = xd.z(icVar);
        if (ujVarZ != null) {
            map.put("video_size", Long.valueOf(ujVarZ.getSize()));
            map.put("video_resolution", ujVarZ.getResolution());
            map.put("video_preload_size", Long.valueOf(Build.VERSION.SDK_INT >= 23 ? ujVarZ.getVideoPreloadSize() : ujVarZ.getSize()));
        }
        if (!z10) {
            map.put("error_code", Long.valueOf(j11));
            if (TextUtils.isEmpty(str)) {
                str = "unknown";
            }
            map.put("error_message", str);
        }
        return map;
    }

    public static Map<String, Object> c(ic icVar, long j10, com.byazt.fk.sp spVar) {
        HashMap map = new HashMap();
        map.put("creative_id", icVar.uj());
        map.put("buffers_time", Long.valueOf(j10));
        com.byazt.jzl.uj ujVarZ = xd.z(icVar);
        if (ujVarZ != null) {
            map.put("video_size", Long.valueOf(ujVarZ.getSize()));
            map.put("video_resolution", ujVarZ.getResolution());
        }
        c(map, spVar);
        return map;
    }

    private static void c(Map<String, Object> map, com.byazt.fk.sp spVar) {
        if (map.containsKey("video_resolution") || spVar == null) {
            return;
        }
        try {
            map.put("video_resolution", String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(spVar.getVideoWidth()), Integer.valueOf(spVar.getVideoHeight())));
        } catch (Throwable unused) {
        }
    }

    public static String c(Context context) {
        Locale locale;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                locale = context.getResources().getConfiguration().getLocales().get(0);
            } else {
                locale = Locale.getDefault();
            }
            return locale.getLanguage();
        } catch (Exception e10) {
            com.byazt.nr.m.uj("ToolUtils", e10.toString());
            return "";
        }
    }

    public static boolean c(boolean z10, ic icVar, String str, boolean z11) {
        if (z10 || icVar == null) {
            return false;
        }
        try {
            com.byazt.ete.nu nuVarYp = icVar.yp();
            if (!(icVar.x_() || (nuVarYp != null && nuVarYp.ve() == 2 && !nuVarYp.c() && com.byazt.omf.tt.c().get("dpl_reject_by_dialog", false)))) {
                return false;
            }
            String strX = icVar.x();
            if (TextUtils.isEmpty(strX) && nuVarYp != null && nuVarYp.n() == 1 && !TextUtils.isEmpty(nuVarYp.uj())) {
                strX = nuVarYp.uj();
            }
            if (!TextUtils.isEmpty(strX)) {
                com.byazt.omf.or.c(strX, icVar, str, z11);
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String c(String str, boolean z10) {
        return c(str, z10, 0);
    }

    private static String c(String str, boolean z10, int i10) {
        String strMy = i10 == 0 ? com.byazt.omf.gt.tt().my() : nu(com.byazt.omf.gt.tt().p());
        String str2 = "/ad_union_qa/sdk/get_ads";
        if (com.byazt.zlb.ve.c() && com.byazt.omf.x.m().tx() && TextUtils.equals(str, "/api/ad/union/sdk/get_ads/")) {
            strMy = com.byazt.omf.x.m().v();
            str = "/ad_union_qa/sdk/get_ads";
        }
        if (com.byazt.omf.x.m().iu() != null && x().equals("com.pangolin_demo.toutiao") && TextUtils.equals(str, "/api/ad/union/sdk/get_ads/")) {
            strMy = com.byazt.omf.x.m().v();
        } else {
            str2 = str;
        }
        String strC = String.format("https://%s%s", strMy, str2);
        if (qp.c()) {
            if (!z10) {
                strC = qp.tt(strC);
            }
            String strC2 = qp.c("testIp.txt");
            if (strC2 != null) {
                strC = qp.c(strC, strC2);
            }
        }
        return z10 ? my(strC) : strC;
    }

    public static boolean c(long j10, long j11) {
        long j12 = j11 - j10;
        return j12 < 86400000 && j12 > -86400000 && c(j10) == c(j11);
    }

    public static long c(long j10) {
        return (j10 + ((long) TimeZone.getDefault().getOffset(j10))) / 86400000;
    }

    public static void c(ic icVar, JSONObject jSONObject) {
        Uri uri;
        int i10;
        try {
            String strDa = da(icVar);
            int i11 = 3;
            if (TextUtils.isEmpty(strDa)) {
                uri = null;
                i10 = 3;
            } else {
                uri = Uri.parse(strDa);
                i10 = 0;
            }
            boolean zYv = yv();
            if (zYv && uri != null) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                i10 = tt(intent, false) ? 1 : 2;
            }
            jSONObject.putOpt("scheme_status", Integer.valueOf(i10));
            String strMd = md(icVar);
            if (!TextUtils.isEmpty(strMd)) {
                i11 = ve(strMd) ? 1 : 2;
            }
            jSONObject.put("hit_status", i11);
            jSONObject.putOpt("alist", Boolean.valueOf(com.byazt.omf.x.m().nu().alist()));
            jSONObject.putOpt("query_auth", Integer.valueOf(zYv ? 1 : 0));
            jSONObject.putOpt("scheme", uri != null ? yv.c(uri) : null);
            jSONObject.putOpt("hit_pkg", strMd);
        } catch (Throwable th) {
            com.byazt.nr.m.ve("ToolUtils", th);
        }
    }

    public static Bundle c(int i10, Bundle bundle) {
        int i11 = bundle.getInt("callback_extra_key_reward_amount");
        String string = bundle.getString("callback_extra_key_reward_name");
        int i12 = bundle.getInt("callback_extra_key_error_code");
        String string2 = bundle.getString("callback_extra_key_error_msg");
        float f10 = bundle.getFloat("callback_extra_key_reward_propose");
        boolean z10 = bundle.getBoolean("callback_extra_key_video_complete_reward");
        boolean z11 = bundle.getBoolean("callback_extra_key_is_server_verify");
        Bundle bundle2 = new Bundle();
        bundle2.putInt("reward_extra_key_error_code", i12);
        bundle2.putString("reward_extra_key_error_msg", string2);
        bundle2.putString("reward_extra_key_reward_name", string);
        bundle2.putInt("reward_extra_key_reward_amount", i11);
        bundle2.putFloat("reward_extra_key_reward_propose", f10);
        bundle2.putBoolean("reward_extra_key_is_server_verify", z11);
        if (i10 == 0) {
            bundle2.putBoolean("reward_extra_key_has_video_complete_reward", z10);
        }
        return bundle2;
    }

    public static String c(int[] iArr) {
        if (iArr == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (i10 < iArr.length - 1) {
                sb2.append(iArr[i10] + ",");
            } else {
                sb2.append(iArr[i10]);
            }
        }
        return sb2.toString();
    }

    public static void c(Intent intent, ic icVar) {
        if (icVar == null) {
            return;
        }
        if (!com.byazt.omf.gt.tt().xw()) {
            intent.putExtra("multi_process_materialmeta", icVar.yg().toString());
            return;
        }
        String strRl = icVar.rl();
        intent.putExtra("multi_process_materialmeta_key", strRl);
        if (com.byazt.nr.gt.c(com.byazt.omf.gt.getContext()) && !com.byazt.omf.p.uj()) {
            com.byazt.omf.rl.c(strRl, icVar, ic.class);
        } else {
            com.byazt.vif.uj.c(com.byazt.vxy.c.uj(), "sp_meta").put(strRl, com.byazt.nr.c.tt(icVar.yg().toString()));
        }
    }

    public static void c(Map<String, Object> map, JSONObject jSONObject, String str) {
        if (jSONObject == null || map == null) {
            return;
        }
        if (!com.byazt.omf.gt.tt().xw()) {
            map.put("multi_process_materialmeta", jSONObject.toString());
            return;
        }
        map.put("multi_process_materialmeta_key", str);
        if (com.byazt.nr.gt.c(com.byazt.omf.gt.getContext())) {
            com.byazt.omf.rl.c(str, com.byazt.omf.c.c(jSONObject), ic.class);
        } else {
            eo.c("sp_meta").put(str, com.byazt.nr.c.tt(jSONObject.toString()));
        }
    }

    public static void c(Map<String, Object> map, ic icVar) {
        if (icVar == null || map == null) {
            return;
        }
        if (!com.byazt.omf.gt.tt().xw()) {
            map.put("multi_process_materialmeta", icVar.yg().toString());
            return;
        }
        String strRl = icVar.rl();
        map.put("multi_process_materialmeta_key", strRl);
        if (com.byazt.nr.gt.c(com.byazt.omf.gt.getContext()) && !com.byazt.omf.p.uj()) {
            com.byazt.omf.rl.c(strRl, icVar, ic.class);
        } else {
            com.byazt.vif.uj.c(com.byazt.vxy.c.uj(), "sp_meta").put(strRl, com.byazt.nr.c.tt(icVar.yg().toString()));
        }
    }

    public static boolean c(String str, ic icVar, Context context) {
        if (TextUtils.isEmpty(str) || icVar == null || context == null) {
            return false;
        }
        HashMap map = new HashMap();
        map.put("material_meta", icVar);
        map.put("context", context);
        com.byazt.ppf.ve.c(str, icVar.yg(), map);
        return true;
    }

    public static boolean c(String str, AtomicInteger atomicInteger) {
        if (TextUtils.isEmpty(str) || atomicInteger == null) {
            return true;
        }
        if (atomicInteger.get() == 1) {
            return false;
        }
        if (str.startsWith("bytedance") || str.startsWith("nativeapp")) {
            return true;
        }
        if (!(str.startsWith("https:") || str.startsWith("http:"))) {
            return true;
        }
        Set<String> set = com.byazt.ete.cu.f13601c;
        if (set.isEmpty()) {
            h();
        }
        String host = Uri.parse(str).getHost();
        if (TextUtils.isEmpty(host) || set.isEmpty()) {
            return true;
        }
        for (String str2 : set) {
            if (!TextUtils.isEmpty(str2) && host.contains(str2)) {
                return true;
            }
        }
        return false;
    }
}
