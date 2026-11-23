package com.join.mgps.Util;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

/* JADX INFO: loaded from: classes4.dex */
public final class e2 {
    private static final String A = "ro.build.MiFavor_version";
    private static final String B = "ro.rom.version";
    private static final String C = "ro.build.rom.id";
    private static final String D = "unknown";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f49585u = "ro.build.version.emui";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final String f49586v = "ro.vivo.os.build.display.id";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f49587w = "ro.build.version.incremental";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f49588x = "ro.build.version.opporom";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String f49589y = "ro.letv.release.version";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f49590z = "ro.build.uiversion";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f49565a = {"huawei"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f49566b = {"vivo"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f49567c = {MediationConstant.ADN_XIAOMI};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f49568d = {"oppo"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f49569e = {"leeco", "letv"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f49570f = {"360", "qiku"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f49571g = {"zte"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f49572h = {"oneplus"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String[] f49573i = {"nubia"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String[] f49574j = {"coolpad", "yulong"};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String[] f49575k = {"lg", "lge"};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String[] f49576l = {"google"};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String[] f49577m = {"samsung"};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String[] f49578n = {"meizu"};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String[] f49579o = {"lenovo"};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String[] f49580p = {"smartisan"};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String[] f49581q = {"htc"};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String[] f49582r = {"sony"};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String[] f49583s = {"gionee", "amigo"};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String[] f49584t = {"motorola"};
    private static a E = null;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f49591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f49592b;

        public String d() {
            return this.f49591a;
        }

        public String e() {
            return this.f49592b;
        }

        public String toString() {
            return "RomInfo{name=" + this.f49591a + ", version=" + this.f49592b + "}";
        }
    }

    private e2() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean A() {
        return f49566b[0].equals(c().f49591a);
    }

    public static boolean B() {
        return f49567c[0].equals(c().f49591a);
    }

    public static boolean C() {
        return f49571g[0].equals(c().f49591a);
    }

    private static String a() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String b() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    public static a c() {
        a aVar = E;
        if (aVar != null) {
            return aVar;
        }
        E = new a();
        String strA = a();
        String strB = b();
        String[] strArr = f49565a;
        if (w(strA, strB, strArr)) {
            E.f49591a = strArr[0];
            String strD = d(f49585u);
            String[] strArrSplit = strD.split("_");
            if (strArrSplit.length > 1) {
                E.f49592b = strArrSplit[1];
            } else {
                E.f49592b = strD;
            }
            return E;
        }
        String[] strArr2 = f49566b;
        if (w(strA, strB, strArr2)) {
            E.f49591a = strArr2[0];
            E.f49592b = d(f49586v);
            return E;
        }
        String[] strArr3 = f49567c;
        if (w(strA, strB, strArr3)) {
            E.f49591a = strArr3[0];
            E.f49592b = d(f49587w);
            return E;
        }
        String[] strArr4 = f49568d;
        if (w(strA, strB, strArr4)) {
            E.f49591a = strArr4[0];
            E.f49592b = d(f49588x);
            return E;
        }
        String[] strArr5 = f49569e;
        if (w(strA, strB, strArr5)) {
            E.f49591a = strArr5[0];
            E.f49592b = d(f49589y);
            return E;
        }
        String[] strArr6 = f49570f;
        if (w(strA, strB, strArr6)) {
            E.f49591a = strArr6[0];
            E.f49592b = d(f49590z);
            return E;
        }
        String[] strArr7 = f49571g;
        if (w(strA, strB, strArr7)) {
            E.f49591a = strArr7[0];
            E.f49592b = d(A);
            return E;
        }
        String[] strArr8 = f49572h;
        if (w(strA, strB, strArr8)) {
            E.f49591a = strArr8[0];
            E.f49592b = d(B);
            return E;
        }
        String[] strArr9 = f49573i;
        if (w(strA, strB, strArr9)) {
            E.f49591a = strArr9[0];
            E.f49592b = d(C);
            return E;
        }
        String[] strArr10 = f49574j;
        if (w(strA, strB, strArr10)) {
            E.f49591a = strArr10[0];
        } else {
            String[] strArr11 = f49575k;
            if (w(strA, strB, strArr11)) {
                E.f49591a = strArr11[0];
            } else {
                String[] strArr12 = f49576l;
                if (w(strA, strB, strArr12)) {
                    E.f49591a = strArr12[0];
                } else {
                    String[] strArr13 = f49577m;
                    if (w(strA, strB, strArr13)) {
                        E.f49591a = strArr13[0];
                    } else {
                        String[] strArr14 = f49578n;
                        if (w(strA, strB, strArr14)) {
                            E.f49591a = strArr14[0];
                        } else {
                            String[] strArr15 = f49579o;
                            if (w(strA, strB, strArr15)) {
                                E.f49591a = strArr15[0];
                            } else {
                                String[] strArr16 = f49580p;
                                if (w(strA, strB, strArr16)) {
                                    E.f49591a = strArr16[0];
                                } else {
                                    String[] strArr17 = f49581q;
                                    if (w(strA, strB, strArr17)) {
                                        E.f49591a = strArr17[0];
                                    } else {
                                        String[] strArr18 = f49582r;
                                        if (w(strA, strB, strArr18)) {
                                            E.f49591a = strArr18[0];
                                        } else {
                                            String[] strArr19 = f49583s;
                                            if (w(strA, strB, strArr19)) {
                                                E.f49591a = strArr19[0];
                                            } else {
                                                String[] strArr20 = f49584t;
                                                if (w(strA, strB, strArr20)) {
                                                    E.f49591a = strArr20[0];
                                                } else {
                                                    E.f49591a = strB;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        E.f49592b = d("");
        return E;
    }

    private static String d(final String propertyName) {
        String strE = !TextUtils.isEmpty(propertyName) ? e(propertyName) : "";
        if (TextUtils.isEmpty(strE) || strE.equals("unknown")) {
            try {
                String str = Build.DISPLAY;
                if (!TextUtils.isEmpty(str)) {
                    strE = str.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(strE) ? "unknown" : strE;
    }

    private static String e(final String name) throws Throwable {
        String strG = g(name);
        if (!TextUtils.isEmpty(strG)) {
            return strG;
        }
        String strH = h(name);
        return (TextUtils.isEmpty(strH) && Build.VERSION.SDK_INT < 28) ? f(name) : strH;
    }

    private static String f(String key) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, key, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static String g(final String propName) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + propName).getInputStream()), 1024);
                try {
                    String line = bufferedReader2.readLine();
                    if (line != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused) {
                        }
                        return line;
                    }
                    bufferedReader2.close();
                    return "";
                } catch (IOException unused2) {
                    bufferedReader = bufferedReader2;
                    if (bufferedReader == null) {
                        return "";
                    }
                    bufferedReader.close();
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused4) {
                return "";
            }
        } catch (IOException unused5) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String h(final String key) {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
            return properties.getProperty(key, "");
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean i() {
        return f49570f[0].equals(c().f49591a);
    }

    public static boolean j() {
        return f49574j[0].equals(c().f49591a);
    }

    public static boolean k() {
        return f49583s[0].equals(c().f49591a);
    }

    public static boolean l() {
        return f49576l[0].equals(c().f49591a);
    }

    public static boolean m() {
        return f49581q[0].equals(c().f49591a);
    }

    public static boolean n() {
        return f49565a[0].equals(c().f49591a);
    }

    public static boolean o() {
        return f49569e[0].equals(c().f49591a);
    }

    public static boolean p() {
        return f49579o[0].equals(c().f49591a);
    }

    public static boolean q() {
        return f49575k[0].equals(c().f49591a);
    }

    public static boolean r() {
        return f49578n[0].equals(c().f49591a);
    }

    public static boolean s() {
        return f49584t[0].equals(c().f49591a);
    }

    public static boolean t() {
        return f49573i[0].equals(c().f49591a);
    }

    public static boolean u() {
        return f49572h[0].equals(c().f49591a);
    }

    public static boolean v() {
        return f49568d[0].equals(c().f49591a);
    }

    private static boolean w(final String brand, final String manufacturer, final String... names) {
        for (String str : names) {
            if (brand.contains(str) || manufacturer.contains(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean x() {
        return f49577m[0].equals(c().f49591a);
    }

    public static boolean y() {
        return f49580p[0].equals(c().f49591a);
    }

    public static boolean z() {
        return f49582r[0].equals(c().f49591a);
    }
}
