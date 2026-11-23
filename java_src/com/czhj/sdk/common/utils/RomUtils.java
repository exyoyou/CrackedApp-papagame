package com.czhj.sdk.common.utils;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Properties;

/* JADX INFO: loaded from: classes9.dex */
public final class RomUtils {
    private static final String A = "ro.build.uiversion";
    private static final String B = "ro.build.MiFavor_version";
    private static final String C = "ro.rom.version";
    private static final String D = "ro.build.rom.id";
    private static final String E = "hw_sc.build.platform.version";
    private static final String G = "unknown";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final String f25691v = "ro.build.version.emui";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f25692w = "ro.vivo.os.build.display.id";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f25693x = "ro.build.version.incremental";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f25695z = "ro.letv.release.version";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f25670a = {"huawei"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f25671b = {"vivo"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f25672c = {MediationConstant.ADN_XIAOMI};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f25673d = {"oppo"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f25674e = {"leeco", "letv"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f25675f = {"360", "qiku"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f25676g = {"zte"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f25677h = {"oneplus"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String[] f25678i = {"nubia"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String[] f25679j = {"coolpad", "yulong"};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String[] f25680k = {"lg", "lge"};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String[] f25681l = {"google"};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String[] f25682m = {"samsung"};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String[] f25683n = {"meizu"};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String[] f25684o = {"lenovo"};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String[] f25685p = {"SmartisanOS", "deltainno"};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String[] f25686q = {"Sense", "htc"};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String[] f25687r = {"sony"};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String[] f25688s = {"amigo", "gionee"};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String[] f25689t = {"motorola"};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String[] f25690u = {"honor"};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String[] f25694y = {"ro.build.version.opporom", "ro.build.version.oplusrom.display"};
    private static final String[] F = {"msc.config.magic.version", "ro.build.version.magic"};
    private static RomInfo H = null;

    public static class RomInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f25696a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f25697b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f25698c;

        public String getName() {
            return this.f25696a;
        }

        public String getOsMarket() {
            return this.f25698c;
        }

        public String getVersion() {
            return this.f25697b;
        }

        public String toString() {
            return "RomInfo{name=" + this.f25696a + ", version=" + this.f25697b + ", osMarket=" + this.f25698c + "}";
        }
    }

    private RomUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    private static String a(String str) {
        String strB = !TextUtils.isEmpty(str) ? b(str) : "";
        if (TextUtils.isEmpty(strB) || strB.equals("unknown")) {
            try {
                String str2 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str2)) {
                    strB = str2.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(strB) ? "unknown" : strB;
    }

    private static String b(String str) {
        String strC = c(str);
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        String strD = d(str);
        return (TextUtils.isEmpty(strD) && Build.VERSION.SDK_INT < 28) ? e(str) : strD;
    }

    private static String c() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String d() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String e(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    public static RomInfo getRomInfo() {
        RomInfo romInfo;
        RomInfo romInfo2;
        String str;
        RomInfo romInfo3;
        String str2;
        RomInfo romInfo4;
        String str3;
        RomInfo romInfo5;
        String str4;
        RomInfo romInfo6;
        String strA;
        RomInfo romInfo7 = H;
        if (romInfo7 != null) {
            return romInfo7;
        }
        H = new RomInfo();
        String strD = d();
        String strC = c();
        if (!isHarmonyOs()) {
            if (a(strD, strC, f25670a)) {
                H.f25696a = "EMUI";
                String strA2 = a(f25691v);
                String[] strArrSplit = strA2.split("_");
                if (strArrSplit.length > 1) {
                    romInfo6 = H;
                    strA = strArrSplit[1];
                } else {
                    H.f25697b = strA2;
                }
                H.f25698c = "com.huawei.appmarket";
            } else {
                int i10 = 0;
                if (a(strD, strC, f25690u)) {
                    H.f25696a = "MagicOS";
                    String[] strArr = F;
                    int length = strArr.length;
                    while (i10 < length) {
                        String str5 = strArr[i10];
                        String strA3 = a(str5);
                        if (!TextUtils.isEmpty(str5)) {
                            H.f25697b = strA3;
                        }
                        i10++;
                    }
                    romInfo4 = H;
                    str3 = "com.hihonor.appmarket";
                } else if (a(strD, strC, f25671b)) {
                    H.f25696a = "OriginOS";
                    H.f25697b = a(f25692w);
                    romInfo4 = H;
                    str3 = "com.bbk.appstore";
                } else if (a(strD, strC, f25672c)) {
                    H.f25696a = "MIUI";
                    H.f25697b = a(f25693x);
                    romInfo4 = H;
                    str3 = "com.xiaomi.market";
                } else {
                    if (a(strD, strC, f25673d)) {
                        H.f25696a = "ColorOS";
                        String[] strArr2 = f25694y;
                        int length2 = strArr2.length;
                        while (i10 < length2) {
                            String str6 = strArr2[i10];
                            String strA4 = a(str6);
                            if (!TextUtils.isEmpty(str6)) {
                                H.f25697b = strA4;
                            }
                            i10++;
                        }
                        if (Build.VERSION.SDK_INT < 29) {
                            romInfo5 = H;
                            str4 = "com.oppo.market";
                        } else {
                            romInfo5 = H;
                            str4 = "com.heytap.market";
                        }
                        romInfo5.f25698c = str4;
                        return H;
                    }
                    if (a(strD, strC, f25674e)) {
                        H.f25696a = "EUI";
                        romInfo3 = H;
                        str2 = f25695z;
                    } else {
                        String[] strArr3 = f25675f;
                        if (a(strD, strC, strArr3)) {
                            H.f25696a = strArr3[0];
                            romInfo3 = H;
                            str2 = A;
                        } else {
                            String[] strArr4 = f25676g;
                            if (a(strD, strC, strArr4)) {
                                H.f25696a = strArr4[0];
                                romInfo3 = H;
                                str2 = B;
                            } else {
                                String[] strArr5 = f25677h;
                                if (a(strD, strC, strArr5)) {
                                    H.f25696a = strArr5[0];
                                    romInfo3 = H;
                                    str2 = C;
                                } else if (a(strD, strC, f25678i)) {
                                    H.f25696a = "NubiaUI";
                                    H.f25697b = a(D);
                                    romInfo4 = H;
                                    str3 = "cn.nubia.neostore";
                                } else {
                                    String[] strArr6 = f25679j;
                                    if (a(strD, strC, strArr6)) {
                                        romInfo = H;
                                        strC = strArr6[0];
                                    } else {
                                        String[] strArr7 = f25680k;
                                        if (a(strD, strC, strArr7)) {
                                            romInfo = H;
                                            strC = strArr7[0];
                                        } else {
                                            String[] strArr8 = f25681l;
                                            if (a(strD, strC, strArr8)) {
                                                romInfo = H;
                                                strC = strArr8[0];
                                            } else {
                                                String[] strArr9 = f25682m;
                                                if (a(strD, strC, strArr9)) {
                                                    romInfo = H;
                                                    strC = strArr9[0];
                                                } else {
                                                    if (a(strD, strC, f25683n)) {
                                                        H.f25696a = "Flyme";
                                                        romInfo2 = H;
                                                        str = "com.meizu.mstore";
                                                    } else {
                                                        String[] strArr10 = f25684o;
                                                        if (a(strD, strC, strArr10)) {
                                                            romInfo = H;
                                                            strC = strArr10[0];
                                                        } else {
                                                            String[] strArr11 = f25685p;
                                                            if (a(strD, strC, strArr11)) {
                                                                H.f25696a = strArr11[0];
                                                                romInfo2 = H;
                                                                str = "com.smartisanos.appstore";
                                                            } else {
                                                                String[] strArr12 = f25686q;
                                                                if (a(strD, strC, strArr12)) {
                                                                    romInfo = H;
                                                                    strC = strArr12[0];
                                                                } else {
                                                                    String[] strArr13 = f25687r;
                                                                    if (a(strD, strC, strArr13)) {
                                                                        romInfo = H;
                                                                        strC = strArr13[0];
                                                                    } else {
                                                                        String[] strArr14 = f25688s;
                                                                        if (a(strD, strC, strArr14)) {
                                                                            romInfo = H;
                                                                            strC = strArr14[0];
                                                                        } else {
                                                                            String[] strArr15 = f25689t;
                                                                            if (a(strD, strC, strArr15)) {
                                                                                romInfo = H;
                                                                                strC = strArr15[0];
                                                                            } else {
                                                                                romInfo = H;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                    romInfo2.f25698c = str;
                                                    romInfo3 = H;
                                                    str2 = "";
                                                }
                                            }
                                        }
                                    }
                                    romInfo.f25696a = strC;
                                    romInfo3 = H;
                                    str2 = "";
                                }
                            }
                        }
                    }
                    romInfo3.f25697b = a(str2);
                }
                romInfo4.f25698c = str3;
            }
            return H;
        }
        H.f25696a = "harmony";
        romInfo6 = H;
        strA = a(E);
        romInfo6.f25697b = strA;
        H.f25698c = "com.huawei.appmarket";
        return H;
    }

    public static boolean isHarmonyOs() {
        if (Build.VERSION.SDK_INT < 29) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            Object objInvoke = cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]);
            if (objInvoke == null) {
                return false;
            }
            return "harmony".equalsIgnoreCase(objInvoke.toString());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isHuawei() {
        return "EMUI".equals(getRomInfo().f25696a) || isHarmonyOs();
    }

    static boolean a() {
        return a(d(), c(), f25690u);
    }

    private static boolean b() {
        return !TextUtils.isEmpty(b(f25691v));
    }

    private static String c(String str) {
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
                try {
                    String line = bufferedReader2.readLine();
                    if (line != null) {
                        try {
                            bufferedReader2.close();
                        } catch (Throwable unused) {
                        }
                        return line;
                    }
                    bufferedReader2.close();
                    return "";
                } catch (Throwable unused2) {
                    bufferedReader = bufferedReader2;
                    if (bufferedReader == null) {
                        return "";
                    }
                    bufferedReader.close();
                }
            } catch (Throwable unused3) {
                return "";
            }
        } catch (Throwable unused4) {
        }
    }

    private static String d(String str) {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
            return properties.getProperty(str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean a(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }
}
