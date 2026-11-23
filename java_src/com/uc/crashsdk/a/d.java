package com.uc.crashsdk.a;

import android.os.Process;
import com.baidu.oauth.sdkbqt.auth.i;
import com.bykv.vk.component.ttvideo.player.C;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.bm;
import com.umeng.commonsdk.framework.UMModuleRegister;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f84008a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f84009b = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f84011d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f84012e = "hsdk";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f84013f = "alid ";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f84014g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f84016i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f84010c = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object f84015h = new Object();

    public static void a() {
        f.a(0, new e(500), com.uc.crashsdk.b.H() ? 900000L : i.f8197a);
    }

    public static String b() {
        try {
            return "inv" + f84013f + "cras" + f84012e;
        } catch (Throwable th) {
            g.b(th);
            return "";
        }
    }

    public static void c() {
        synchronized (f84015h) {
            f84016i = null;
        }
    }

    static byte[] d() {
        return new byte[]{6, 0, BinaryMemcacheOpcodes.QUITQ, 8};
    }

    public static boolean e() {
        try {
            if (!com.uc.crashsdk.e.F() && !com.uc.crashsdk.b.L()) {
                a(true);
                return f84009b;
            }
            return true;
        } catch (Throwable unused) {
        }
    }

    private static String f() {
        String strA = f84016i;
        if (g.a(strA)) {
            synchronized (f84015h) {
                strA = g.a(com.uc.crashsdk.b.j(), (com.uc.crashsdk.g.R() ? "https://errlogos.umeng.com" : "https://errlog.umeng.com") + "/api/crashsdk/validate", true);
                f84016i = strA;
            }
        }
        return strA;
    }

    private static String g() {
        byte[] bArrA;
        String strF;
        byte[] bArrA2;
        byte[] bArrA3;
        StringBuilder sb2 = new StringBuilder();
        a(sb2, "platform", com.uc.crashsdk.g.e());
        a(sb2, "pkgname", com.uc.crashsdk.a.f83977a);
        a(sb2, UMModuleRegister.PROCESS, com.uc.crashsdk.e.h());
        a(sb2, "version", com.uc.crashsdk.a.a());
        a(sb2, "cver", "3.3.2.2");
        a(sb2, "ctag", "release");
        a(sb2, "inter", com.uc.crashsdk.g.R() ? "true" : "false");
        a(sb2, bm.f84421x, "android");
        String string = sb2.toString();
        byte[] bArr = new byte[16];
        c.a(bArr, 0, h.j());
        c.a(bArr, 4, c.a());
        c.a(bArr, 8, d());
        c.a(bArr, 12, com.uc.crashsdk.a.f());
        try {
            bArrA = c.a(string.getBytes(), bArr, true);
        } catch (Throwable th) {
            g.a(th);
            bArrA = null;
        }
        if (bArrA == null || (strF = f()) == null || (bArrA2 = c.a(strF, bArrA)) == null) {
            return null;
        }
        try {
            bArrA3 = c.a(bArrA2, bArr, false);
        } catch (Throwable th2) {
            g.a(th2);
            bArrA3 = null;
        }
        if (bArrA3 != null) {
            return new String(bArrA3);
        }
        return null;
    }

    public static void a(int i10) {
        if (i10 != 500) {
            if (!f84008a) {
                throw new AssertionError();
            }
            return;
        }
        synchronized (f84010c) {
            f84014g = null;
            a(!com.uc.crashsdk.b.F());
            if (g.b(f84014g)) {
                h.a(f84014g);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004f  */
    private static boolean a(boolean z10) throws Throwable {
        String str;
        long jC;
        int iC;
        boolean z11;
        String str2;
        if (f84011d) {
            return false;
        }
        f84011d = !z10;
        if ((com.uc.crashsdk.a.f83978b.equals("2.0") && com.uc.crashsdk.b.c(C.ENCODING_PCM_A_LAW)) || !com.uc.crashsdk.b.A()) {
            return false;
        }
        String strN = com.uc.crashsdk.b.n();
        String strA = b.a(strN);
        if (g.b(strA)) {
            String[] strArrSplit = strA.split(" ", 4);
            if (strArrSplit.length == 3) {
                str = strArrSplit[0];
                jC = g.c(strArrSplit[1]);
                iC = (int) g.c(strArrSplit[2]);
            } else {
                str = null;
                jC = 0;
                iC = 0;
            }
        } else {
            str = null;
            jC = 0;
            iC = 0;
        }
        f84009b = true;
        if (System.currentTimeMillis() - jC >= 259200000) {
            z11 = true;
        } else {
            if (!"o".equals(str)) {
                if ("2".equals(str)) {
                    f84009b = false;
                } else {
                    if ("1".equals(str)) {
                        f84009b = false;
                    }
                    z11 = true;
                }
            }
            z11 = false;
        }
        if (!z11 || z10) {
            return true;
        }
        if (iC == Process.myPid()) {
            return false;
        }
        f84014g = "per";
        String strG = g();
        if (strG == null || !strG.contains("retcode=")) {
            if (strG == null) {
                f84014g = "ner";
            } else {
                f84014g = "ser";
            }
            return false;
        }
        if (strG.contains("retcode=0")) {
            f84009b = true;
            str2 = "o";
            f84014g = "aus";
        } else {
            f84009b = false;
            if ("1".equals(str)) {
                str2 = "2";
                f84014g = "auf2";
            } else {
                str2 = "1";
                f84014g = "auf1";
            }
        }
        b.a(strN, String.format(Locale.US, "%s %d %d", str2, Long.valueOf(System.currentTimeMillis()), Integer.valueOf(Process.myPid())));
        if (g.b(strG)) {
            for (String str3 : strG.split("`", 30)) {
                String[] strArrSplit2 = str3.split(SimpleComparison.EQUAL_TO_OPERATION, 2);
                if (strArrSplit2.length == 2) {
                    String strTrim = strArrSplit2[0].trim();
                    String strTrim2 = strArrSplit2[1].trim();
                    boolean z12 = g.b(strTrim2) && strTrim2.startsWith("http");
                    if ("logurl".equals(strTrim)) {
                        if (z12) {
                            com.uc.crashsdk.e.b(strTrim2);
                        }
                    } else if ("staturl".equals(strTrim)) {
                        if (z12) {
                            h.b(strTrim2);
                        }
                    } else if ("policyurl".equals(strTrim)) {
                        if (z12) {
                            synchronized (f84015h) {
                                f84016i = strTrim2;
                                b.a(com.uc.crashsdk.b.j(), strTrim2 + "\n");
                            }
                        } else {
                            continue;
                        }
                    } else if ("logpolicy".equals(strTrim)) {
                        com.uc.crashsdk.e.c(strTrim2);
                    }
                }
            }
        }
        return true;
    }

    private static StringBuilder a(StringBuilder sb2, String str, String str2) {
        if (sb2.length() > 0) {
            sb2.append("`");
        }
        sb2.append(str);
        sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
        sb2.append(str2);
        return sb2;
    }
}
