package cn.fly.commons.c;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static h f1138a;

    /* JADX INFO: renamed from: cn.fly.commons.c.e$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1141a;

        static {
            int[] iArr = new int[a.values().length];
            f1141a = iArr;
            try {
                iArr[a.XIAOMI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1141a[a.REDMI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1141a[a.MEITU.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1141a[a.BLACKSHARK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1141a[a.IQOO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1141a[a.VIVO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1141a[a.PTAC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1141a[a.WIKO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f1141a[a.TIANYI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f1141a[a.CMDC.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f1141a[a.TDTECH.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f1141a[a.LIANTONG.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f1141a[a.HUA_WEI.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f1141a[a.HORNOR.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f1141a[a.OPPO.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f1141a[a.REALME.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f1141a[a.ONEPLUS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f1141a[a.MOTO.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f1141a[a.ZUK.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f1141a[a.LENOVO.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f1141a[a.ASUS.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f1141a[a.SAMSUNG.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f1141a[a.MEIZU.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f1141a[a.MBLU.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f1141a[a.ALPS.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f1141a[a.NUBIA.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f1141a[a.ZTE.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f1141a[a.FERRMEOS.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f1141a[a.SSUI.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f1141a[a.COOLPAD.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f1141a[a.QIKU.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f1141a[a.COOSEA.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
        }
    }

    public static synchronized void a(Context context) {
        if (f1138a != null) {
            return;
        }
        a aVarA = a(context, Build.MANUFACTURER, Build.BRAND);
        if (aVarA == a.UNSUPPORT) {
            return;
        }
        switch (AnonymousClass2.f1141a[aVarA.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                f1138a = new q(context);
                break;
            case 5:
            case 6:
                f1138a = new p(context);
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                f1138a = new g(context);
                break;
            case 14:
                f1138a = new f(context);
                break;
            case 15:
            case 16:
                f1138a = new m(context);
                break;
            case 17:
                f1138a = new l(context);
                break;
            case 18:
            case 19:
            case 20:
                f1138a = new j(context);
                break;
            case 21:
                f1138a = new cn.fly.commons.c.a(context);
                break;
            case 22:
                f1138a = new o(context);
                break;
            case 23:
            case 24:
            case 25:
                f1138a = new i(context);
                break;
            case 26:
                f1138a = new k(context);
                break;
            case 27:
            case 28:
            case 29:
                f1138a = new r(context);
                break;
            case 30:
                f1138a = new b(context);
                break;
            case 31:
                f1138a = new n(context);
                break;
            case 32:
                f1138a = new c(context);
                break;
        }
    }

    public static String b(Context context) {
        a(context);
        h hVar = f1138a;
        if (hVar == null) {
            return null;
        }
        if (hVar instanceof f) {
            String strD = hVar.d();
            if (!TextUtils.isEmpty(strD) && !Pattern.compile("^[0fF\\-]+").matcher(strD).matches()) {
                return strD;
            }
            f1138a = new g(context);
        } else if (hVar instanceof l) {
            String strD2 = hVar.d();
            if (!TextUtils.isEmpty(strD2) && !Pattern.compile("^[0fF\\-]+").matcher(strD2).matches()) {
                return strD2;
            }
            f1138a = new m(context);
        }
        return f1138a.d();
    }

    private static boolean c(Context context) {
        try {
            final Object[] objArr = new Object[1];
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            DH.requester(context).getMpfo(cn.fly.commons.a.m.a("027d,elegemQd:elel)hke7edemed:gPeeej9dgDejedgjehXkk9elekHj"), 0).request(new DH.DHResponder() { // from class: cn.fly.commons.c.e.1
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                    objArr[0] = dHResponse.getMpfo(new int[0]);
                    countDownLatch.countDown();
                }
            });
            countDownLatch.await(3L, TimeUnit.SECONDS);
            return objArr[0] != null;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return false;
        }
    }

    enum a {
        UNSUPPORT(-1, cn.fly.commons.a.m.a("009WehJf=gjeh,kk_elekEj")),
        HUA_WEI(0, cn.fly.commons.a.m.a("006!glflgehghjff"), cn.fly.commons.a.m.a("021,ekelemggehej;h.edemee(g2ekgjejelCf1em*g3egehej")),
        XIAOMI(1, cn.fly.commons.a.m.a("006'hhej[eKelegej"), cn.fly.commons.a.m.a("023Fekelemegejehejemehejemee)g2ekgjejel<fXem$fe@eg;g")),
        VIVO(2, cn.fly.commons.a.m.a("004?eeejeeel"), cn.fly.commons.a.m.a("018,ekelemeeejeeelemelgjemeeWg@ekgjejel)f")),
        OPPO(3, cn.fly.commons.a.m.a("004Nel=kk:el"), cn.fly.commons.a.m.a("024Eekelemggehej hUedemeeLg;ekgjejelYfMemel[kkMelekeleg")),
        MOTO(4, cn.fly.commons.a.m.a("008^egel.jYelekelJhe")),
        LENOVO(5, cn.fly.commons.a.m.a("006hgfBeleeel")),
        ASUS(6, cn.fly.commons.a.m.a("004eMgjehgj")),
        SAMSUNG(7, cn.fly.commons.a.m.a("007TgjUeKeggjeh)f<fk")),
        MEIZU(8, cn.fly.commons.a.m.a("005>eg<gBejheeh")),
        ALPS(9, cn.fly.commons.a.m.a("004ehk'gj")),
        NUBIA(10, cn.fly.commons.a.m.a("005f=ehggej@e")),
        ONEPLUS(11, cn.fly.commons.a.m.a("007'el.fgkhLehgj")),
        BLACKSHARK(12, cn.fly.commons.a.m.a("010Kgg9hed3figj1ie>ekfi")),
        ZTE(13, cn.fly.commons.a.m.a("003=heTjg")),
        FERRMEOS(14, cn.fly.commons.a.m.a("008DfgekYggAegVg;elgj")),
        SSUI(15, cn.fly.commons.a.m.a("004:gjgjehej")),
        HORNOR(16, "HONOR"),
        REALME(17, "REALME"),
        REDMI(18, "REDMI"),
        MEITU(19, "MEITU"),
        ZUK(20, "ZUK"),
        MBLU(21, "MBLU"),
        COOLPAD(22, "COOLPAD"),
        COOSEA(23, "COOSEA"),
        QIKU(24, "360OS", cn.fly.commons.a.m.a("0188ekelemggehejPh;edemehejee?g8ekgjejel:f")),
        IQOO(25, "iqoo"),
        PTAC(26, "PTAC"),
        WIKO(27, "WIKO"),
        TIANYI(28, "TIANYI"),
        CMDC(29, "CMDC"),
        TDTECH(30, "TDTECH"),
        LIANTONG(31, "LIANTONG");

        private final int H;
        private String I;
        private String J;

        a(int i10, String str) {
            this.H = i10;
            this.I = str;
        }

        a(int i10, String str, String str2) {
            this.H = i10;
            this.I = str;
            this.J = str2;
        }
    }

    private static boolean c() {
        return "PRIZE".equalsIgnoreCase(DH.SyncMtd.getSystemProperties("ro.odm.manufacturer"));
    }

    private static boolean b() {
        String systemProperties = DH.SyncMtd.getSystemProperties(cn.fly.commons.a.m.a("015Eekelemgjgjehejem@kLekeledehXdj"));
        return (TextUtils.isEmpty(systemProperties) || systemProperties.equalsIgnoreCase(cn.fly.commons.a.m.a("007Meh1fOfiWf:elgh^f"))) ? false : true;
    }

    public static a a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            for (a aVar : a.values()) {
                if (aVar.I.equalsIgnoreCase(str) || aVar.I.equalsIgnoreCase(str2) || !(TextUtils.isEmpty(aVar.J) || TextUtils.isEmpty(DH.SyncMtd.getSystemProperties(aVar.J)))) {
                    return aVar;
                }
            }
        }
        if (!a() && !b()) {
            if (cn.fly.commons.c.a() && c(context)) {
                return a.COOLPAD;
            }
            if (c()) {
                return a.COOSEA;
            }
            return a.UNSUPPORT;
        }
        return a.ZTE;
    }

    private static boolean a() {
        String systemProperties = DH.SyncMtd.getSystemProperties(cn.fly.commons.a.m.a("021!ekelemggehejKh3edemfgek>ggIeg]g0emBhe6gg*gh"));
        return !TextUtils.isEmpty(systemProperties) && systemProperties.equalsIgnoreCase(cn.fly.commons.a.m.a("008$hdhkhjhjidhjhifm"));
    }
}
