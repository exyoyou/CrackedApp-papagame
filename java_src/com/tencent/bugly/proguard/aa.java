package com.tencent.bugly.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class aa {
    public boolean E;
    public String F;
    public String G;
    public String H;
    public String I;
    public boolean K;
    public final SharedPreferences P;
    public final SharedPreferences Q;
    private String Y;
    private String Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f83177a;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f83178aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private String f83179ab;
    private String ak;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f83184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f83185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f83186f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f83195p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f83196q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f83197r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f83198s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f83199t;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public List<String> f83202w;
    private static final Map<String, String> X = new HashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static volatile boolean f83176o = true;
    private static volatile boolean am = true;
    private static aa as = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f83187g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f83188h = "com.tencent.bugly";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f83189i = "4.1.9.7";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f83190j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f83191k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f83192l = "unknown";

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private String f83180ac = "unknown";

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private String f83181ad = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f83193m = 0;
    private String ae = null;
    private long af = -1;
    private long ag = -1;
    private long ah = -1;
    private String ai = null;
    private String aj = null;
    private Map<String, PlugInBean> al = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f83194n = false;
    private String an = null;
    private Boolean ao = null;
    private String ap = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f83200u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f83201v = null;
    private Map<String, PlugInBean> aq = null;
    private Map<String, PlugInBean> ar = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f83203x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f83204y = -1;
    private final Map<String, String> at = new HashMap();
    private final Map<String, String> au = new HashMap();
    private final Map<String, String> av = new HashMap();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f83205z = "unknown";
    public long A = 0;
    public long B = 0;
    public long C = 0;
    public long D = 0;
    public boolean J = false;
    public HashMap<String, String> L = new HashMap<>();
    public List<String> M = new ArrayList();
    public boolean N = false;
    public q O = null;
    public boolean R = true;
    public boolean S = true;
    public boolean T = false;
    private final Object aw = new Object();
    public final Object U = new Object();
    private final Object ax = new Object();
    private final Object ay = new Object();
    public final Object V = new Object();
    public final Object W = new Object();
    private final Object az = new Object();
    private final List<Integer> aA = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f83182b = System.currentTimeMillis();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte f83183c = 1;

    private aa(Context context) {
        this.ak = null;
        this.f83195p = null;
        this.f83197r = null;
        this.f83198s = null;
        this.f83199t = null;
        this.f83202w = null;
        this.E = false;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = "";
        this.K = false;
        this.f83177a = ap.a(context);
        PackageInfo packageInfoB = z.b(context);
        if (packageInfoB != null) {
            try {
                String str = packageInfoB.versionName;
                this.f83195p = str;
                this.F = str;
                this.G = Integer.toString(packageInfoB.versionCode);
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        this.f83184d = z.a(context);
        this.f83185e = z.a(Process.myPid());
        this.f83197r = z.c(context);
        Map<String, String> mapD = z.d(context);
        if (mapD != null) {
            try {
                this.f83202w = z.a(mapD);
                String str2 = mapD.get("BUGLY_APPID");
                if (str2 != null) {
                    this.f83198s = str2;
                    b("APP_ID", str2);
                }
                String str3 = mapD.get("BUGLY_APP_VERSION");
                if (str3 != null) {
                    this.f83195p = str3;
                }
                String str4 = mapD.get("BUGLY_APP_CHANNEL");
                if (str4 != null) {
                    this.f83199t = str4;
                }
                String str5 = mapD.get("BUGLY_ENABLE_DEBUG");
                if (str5 != null) {
                    this.E = str5.equalsIgnoreCase("true");
                }
                String str6 = mapD.get("com.tencent.rdm.uuid");
                if (str6 != null) {
                    this.H = str6;
                }
                String str7 = mapD.get("BUGLY_APP_BUILD_NO");
                if (!TextUtils.isEmpty(str7)) {
                    this.f83196q = Integer.parseInt(str7);
                }
                String str8 = mapD.get("BUGLY_AREA");
                if (str8 != null) {
                    this.I = str8;
                }
            } catch (Throwable th2) {
                if (!al.a(th2)) {
                    th2.printStackTrace();
                }
            }
        }
        try {
            if (!context.getDatabasePath("bugly_db_").exists()) {
                this.K = true;
                al.c("App is first time to be installed on the device.", new Object[0]);
            }
        } catch (Throwable th3) {
            if (p.f83617c) {
                th3.printStackTrace();
            }
        }
        this.P = ap.a("BUGLY_COMMON_VALUES", context);
        this.Q = ap.a("BUGLY_RESERVED_VALUES", context);
        this.ak = ab.a(context);
        H();
        al.c("com info create end", new Object[0]);
    }

    public static int E() {
        if (f83176o) {
            return ab.c();
        }
        al.c("not allow collect personal info, api level use default value", new Object[0]);
        return -1;
    }

    @Deprecated
    public static boolean F() {
        al.a("Detect if the emulator is unavailable", new Object[0]);
        return false;
    }

    @Deprecated
    public static boolean G() {
        al.a("Detect if the device hook is unavailable", new Object[0]);
        return false;
    }

    private void H() {
        try {
            for (Map.Entry<String, ?> entry : this.Q.getAll().entrySet()) {
                al.c("put reserved request data from sp, key:%s value:%s", entry.getKey(), entry.getValue());
                a(entry.getKey(), entry.getValue().toString(), false);
            }
            for (Map.Entry<String, String> entry2 : X.entrySet()) {
                al.c("put reserved request data from cache, key:%s value:%s", entry2.getKey(), entry2.getValue());
                a(entry2.getKey(), entry2.getValue(), true);
            }
            X.clear();
        } catch (Throwable th) {
            al.b(th);
        }
    }

    private String I() {
        if (TextUtils.isEmpty(this.ae)) {
            this.ae = ap.d("androidid", null);
        }
        return this.ae;
    }

    private static String J() {
        String string = UUID.randomUUID().toString();
        return !ap.b(string) ? string.replaceAll("-", "") : string;
    }

    public static synchronized aa b() {
        return as;
    }

    public static boolean h() {
        return f83176o;
    }

    public static boolean i() {
        return am;
    }

    @Deprecated
    public static String q() {
        return "";
    }

    public final Map<String, String> A() {
        synchronized (this.az) {
            if (this.au.size() <= 0) {
                return null;
            }
            return new HashMap(this.au);
        }
    }

    public final Map<String, String> B() {
        synchronized (this.ay) {
            if (this.av.size() <= 0) {
                return null;
            }
            return new HashMap(this.av);
        }
    }

    public final int C() {
        int i10;
        synchronized (this.V) {
            i10 = this.f83203x;
        }
        return i10;
    }

    public final synchronized Map<String, PlugInBean> D() {
        Map<String, PlugInBean> map;
        map = this.aq;
        Map<String, PlugInBean> map2 = this.ar;
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }

    public final boolean a() {
        boolean z10 = this.aA.size() > 0;
        al.c("isAppForeground:%s", Boolean.valueOf(z10));
        return z10;
    }

    public final String c() {
        if (!f83176o) {
            al.c("not allow collect personal info, os version use default value", new Object[0]);
            return "unknown";
        }
        if (this.f83178aa == null) {
            this.f83178aa = "Android " + ab.b() + ",level " + ab.c();
        }
        return this.f83178aa;
    }

    public final void d() {
        synchronized (this.aw) {
            this.Y = UUID.randomUUID().toString();
        }
    }

    public final String e() {
        String str;
        synchronized (this.aw) {
            if (this.Y == null) {
                d();
            }
            str = this.Y;
        }
        return str;
    }

    public final String f() {
        return !ap.b(this.f83186f) ? this.f83186f : this.f83198s;
    }

    public final String g() {
        String str;
        synchronized (this.W) {
            str = this.f83192l;
        }
        return str;
    }

    public final String j() {
        String str = this.f83179ab;
        if (str != null) {
            return str;
        }
        String strD = ap.d("deviceId", null);
        this.f83179ab = strD;
        if (strD != null) {
            return strD;
        }
        String strI = I();
        this.f83179ab = strI;
        if (TextUtils.isEmpty(strI)) {
            this.f83179ab = J();
        }
        String str2 = this.f83179ab;
        if (str2 == null) {
            return "";
        }
        ap.c("deviceId", str2);
        return this.f83179ab;
    }

    public final synchronized String k() {
        if (!this.f83194n) {
            al.c("not allow collect privacy info, device model use default value", new Object[0]);
            return "fail";
        }
        if (!f83176o) {
            al.c("not allow collect personal info, device model use default value", new Object[0]);
            return "unknown";
        }
        String str = this.Z;
        if (str != null) {
            return str;
        }
        String strD = ap.d("deviceModel", null);
        this.Z = strD;
        if (strD != null) {
            al.c("collect device model from sp:%s", strD);
            return this.Z;
        }
        String strA = ab.a();
        this.Z = strA;
        al.c("collect device model:%s", strA);
        ap.c("deviceModel", this.Z);
        return this.Z;
    }

    public final synchronized String l() {
        return this.f83181ad;
    }

    public final long m() {
        if (!f83176o) {
            al.c("not allow collect personal info, total rom use default value", new Object[0]);
            return -1L;
        }
        if (this.af <= 0) {
            this.af = ab.e();
        }
        return this.af;
    }

    public final long n() {
        if (!f83176o) {
            al.c("not allow collect personal info, total ram use default value", new Object[0]);
            return -1L;
        }
        if (this.ag <= 0) {
            this.ag = ab.i();
        }
        return this.ag;
    }

    public final long o() {
        if (!f83176o) {
            al.c("not allow collect personal info, total sdcard use default value", new Object[0]);
            return -1L;
        }
        if (this.ah <= 0) {
            this.ah = ab.k();
        }
        return this.ah;
    }

    public final String p() {
        if (!f83176o) {
            al.c("not allow collect personal info, running cpu type use default value", new Object[0]);
            return "unknown";
        }
        if (!TextUtils.isEmpty(this.aj)) {
            al.c("get cpu type from so:%s", this.aj);
            return this.aj;
        }
        if (TextUtils.isEmpty(this.ak)) {
            return "unknown";
        }
        al.c("get cpu type from lib dir:%s", this.ak);
        return this.ak;
    }

    public final String r() {
        try {
            Map<String, ?> all = this.f83177a.getSharedPreferences("BuglySdkInfos", 0).getAll();
            if (!all.isEmpty()) {
                synchronized (this.U) {
                    for (Map.Entry<String, ?> entry : all.entrySet()) {
                        try {
                            this.L.put(entry.getKey(), entry.getValue().toString());
                        } catch (Throwable th) {
                            al.a(th);
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            al.a(th2);
        }
        if (this.L.isEmpty()) {
            al.c("SDK_INFO is empty", new Object[0]);
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry2 : this.L.entrySet()) {
            sb2.append("[");
            sb2.append(entry2.getKey());
            sb2.append(",");
            sb2.append(entry2.getValue());
            sb2.append("] ");
        }
        al.c("SDK_INFO = %s", sb2.toString());
        b("SDK_INFO", sb2.toString());
        return sb2.toString();
    }

    public final synchronized Map<String, PlugInBean> s() {
        Map<String, PlugInBean> map = this.al;
        if (map != null && map.size() > 0) {
            HashMap map2 = new HashMap(this.al.size());
            map2.putAll(this.al);
            return map2;
        }
        return null;
    }

    public final String t() {
        if (this.an == null) {
            this.an = ab.m();
        }
        return this.an;
    }

    public final Boolean u() {
        if (!f83176o) {
            al.c("not allow collect personal info, is rooted use default value", new Object[0]);
            return Boolean.FALSE;
        }
        if (this.ao == null) {
            this.ao = Boolean.valueOf(ab.q());
        }
        return this.ao;
    }

    public final String v() {
        if (!f83176o) {
            al.c("not allow collect personal info, rom id use default value", new Object[0]);
            return "unknown";
        }
        if (this.ap == null) {
            String str = ab.n();
            this.ap = str;
            al.a("ROM ID: %s", str);
        }
        return this.ap;
    }

    public final Map<String, String> w() {
        synchronized (this.ax) {
            if (this.at.size() <= 0) {
                return null;
            }
            return new HashMap(this.at);
        }
    }

    public final void x() {
        synchronized (this.ax) {
            this.at.clear();
        }
    }

    public final int y() {
        int size;
        synchronized (this.ax) {
            size = this.at.size();
        }
        return size;
    }

    public final Set<String> z() {
        Set<String> setKeySet;
        synchronized (this.ax) {
            setKeySet = this.at.keySet();
        }
        return setKeySet;
    }

    public static void b(boolean z10) {
        am = z10;
    }

    public final void a(int i10, boolean z10) {
        al.c("setActivityForeState, hash:%s isFore:%s", Integer.valueOf(i10), Boolean.valueOf(z10));
        if (z10) {
            this.aA.add(Integer.valueOf(i10));
        } else {
            this.aA.remove(Integer.valueOf(i10));
            this.aA.remove((Object) 0);
        }
        q qVar = this.O;
        if (qVar != null) {
            qVar.setNativeIsAppForeground(this.aA.size() > 0);
        }
    }

    public final void b(String str) {
        al.a("change deviceModel，old:%s new:%s", this.Z, str);
        this.Z = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ap.c("deviceModel", str);
    }

    public final synchronized void d(String str) {
        this.f83181ad = String.valueOf(str);
    }

    public final String f(String str) {
        String strRemove;
        if (ap.b(str)) {
            al.d("key should not be empty %s", String.valueOf(str));
            return null;
        }
        synchronized (this.ax) {
            strRemove = this.at.remove(str);
        }
        return strRemove;
    }

    public final String g(String str) {
        String str2;
        if (ap.b(str)) {
            al.d("key should not be empty %s", String.valueOf(str));
            return null;
        }
        synchronized (this.ax) {
            str2 = this.at.get(str);
        }
        return str2;
    }

    public final synchronized void c(String str) {
        this.f83180ac = String.valueOf(str);
    }

    public final void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.aj = str.trim();
    }

    public final void b(String str, String str2) {
        if (ap.b(str) || ap.b(str2)) {
            al.d("server key&value should not be empty %s %s", String.valueOf(str), String.valueOf(str2));
            return;
        }
        synchronized (this.ay) {
            this.av.put(str, str2);
        }
    }

    public static synchronized aa a(Context context) {
        if (as == null) {
            as = new aa(context);
        }
        return as;
    }

    public static void a(boolean z10) {
        f83176o = z10;
    }

    public final void a(String str) {
        this.f83179ab = str;
        if (!TextUtils.isEmpty(str)) {
            ap.c("deviceId", str);
        }
        synchronized (this.az) {
            this.au.put("E8", str);
        }
    }

    public final void a(String str, String str2) {
        if (ap.b(str) || ap.b(str2)) {
            al.d("key&value should not be empty %s %s", String.valueOf(str), String.valueOf(str2));
            return;
        }
        synchronized (this.ax) {
            this.at.put(str, str2);
        }
    }

    private void a(String str, String str2, boolean z10) {
        if (ap.b(str)) {
            al.d("key should not be empty %s", str);
            return;
        }
        al.c("putExtraRequestData key:%s value:%s save:%s", str, str2, Boolean.valueOf(z10));
        synchronized (this.az) {
            if (TextUtils.isEmpty(str2)) {
                this.au.remove(str);
                this.Q.edit().remove(str).apply();
            } else {
                this.au.put(str, str2);
                if (z10) {
                    this.Q.edit().putString(str, str2).apply();
                }
            }
        }
    }
}
