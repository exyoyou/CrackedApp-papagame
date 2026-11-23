package cn.fly.tools.c;

import android.content.Intent;
import android.os.Looper;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.CSCenter;
import cn.fly.commons.a.m;
import cn.fly.commons.ae;
import cn.fly.commons.c;
import cn.fly.tools.FlyLog;
import cn.fly.tools.b.d;
import cn.fly.tools.b.h;
import com.join.mgps.Util.o0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ThreadLocal<Boolean> f2023a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ThreadLocal<Boolean> f2024b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ThreadLocal<Boolean> f2025c = new ThreadLocal<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile String f2027e = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<String> f2026d = Arrays.asList("bgmdl", "bgmdlfly", "gmnft", "gmnftfly", "gbrd", "gbrdfly", "govsit", "govsitfly", "govsnm", "govsnmfly", "golgu", "gocnty", "galgu", "gtmne", "gsnmd", "gpgnm", "gpnmmt", "gpvsnm", "gpvsme", "cinmnps", "ckpmsi", "gaplcn", "gpgif", "gpgiffist", "gcrtpcnm", "gscpt", "cird", "cknavbl", "ipgist", "ckua", "ubenbl", "dvenbl", "vnmt", "iwpxy", "cx", "degb", "gdtlnktpfs", "gpgiffcin", "gpgifstrg", "gtaif", "gtaifprm", "rsaciy", "gsnmdfp", "gcrie", "gcriefce", "gcriefcestr", "gdvk", "gdvkfc", "godhm", "godm", "gmpfis");

    @b
    public static Object a(String str, ArrayList<Object> arrayList) {
        try {
            return b(str, arrayList);
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    private static Object b(String str, ArrayList<Object> arrayList) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        cn.fly.tools.b.a aVarA = a(str);
        if ("gmpfis".equals(str)) {
            if (arrayList != null && arrayList.size() == 4) {
                return aVarA.b(((Boolean) arrayList.get(0)).booleanValue(), ((Integer) arrayList.get(1)).intValue(), (String) arrayList.get(2), ((Integer) arrayList.get(3)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("cird".equals(str)) {
            return Boolean.valueOf(aVarA.a());
        }
        if ("cx".equals(str)) {
            return Boolean.valueOf(aVarA.b());
        }
        if ("ckpd".equals(str)) {
            return Boolean.valueOf(aVarA.c());
        }
        if ("degb".equals(str)) {
            return Boolean.valueOf(aVarA.d());
        }
        if ("vnmt".equals(str)) {
            return Boolean.valueOf(aVarA.e());
        }
        if ("ckua".equals(str)) {
            return Boolean.valueOf(aVarA.f());
        }
        if ("dvenbl".equals(str)) {
            return Boolean.valueOf(aVarA.g());
        }
        if ("ubenbl".equals(str)) {
            return Boolean.valueOf(aVarA.h());
        }
        if ("iwpxy".equals(str)) {
            return Boolean.valueOf(aVarA.i());
        }
        if ("gavti".equals(str)) {
            return aVarA.j();
        }
        if ("gsimt".equals(str)) {
            return aVarA.a(false);
        }
        if ("gsimtfce".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.a(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gbsi".equals(str)) {
            return aVarA.b(false);
        }
        if ("gbsifce".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.b(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gcrie".equals(str)) {
            return aVarA.c(false);
        }
        if ("gcriefce".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.c(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gcriefcestr".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.d(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gcrnmfce".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.e(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gcrnmfcestr".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.f(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gcrnm".equals(str)) {
            return aVarA.e(false);
        }
        if ("gmivsn".equals(str)) {
            return aVarA.k();
        }
        if ("gmivsnfly".equals(str)) {
            return aVarA.l();
        }
        if ("bgmdl".equals(str)) {
            return aVarA.m();
        }
        if ("bgmdlfly".equals(str)) {
            return aVarA.n();
        }
        if ("gmnft".equals(str)) {
            return aVarA.o();
        }
        if ("gmnftfly".equals(str)) {
            return aVarA.p();
        }
        if ("gbrd".equals(str)) {
            return aVarA.q();
        }
        if ("gbrdfly".equals(str)) {
            return aVarA.r();
        }
        if ("gdvtp".equals(str)) {
            return aVarA.s();
        }
        if ("gtecloc".equals(str)) {
            return aVarA.t();
        }
        if ("gnbclin".equals(str)) {
            return aVarA.u();
        }
        if ("wmcwi".equals(str)) {
            return aVarA.g(false);
        }
        if ("wmcwifce".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.g(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("govsit".equals(str)) {
            return Integer.valueOf(aVarA.w());
        }
        if ("govsitfly".equals(str)) {
            return Integer.valueOf(aVarA.x());
        }
        if ("govsnm".equals(str)) {
            return aVarA.y();
        }
        if ("govsnmfly".equals(str)) {
            return aVarA.z();
        }
        if ("golgu".equals(str)) {
            return aVarA.A();
        }
        if ("gocnty".equals(str)) {
            return aVarA.B();
        }
        if ("gcuin".equals(str)) {
            return aVarA.C();
        }
        if ("gabis".equals(str)) {
            return aVarA.D();
        }
        if ("gtydvin".equals(str)) {
            return aVarA.E();
        }
        if ("gqmkn".equals(str)) {
            return aVarA.F();
        }
        if ("gszin".equals(str)) {
            return aVarA.G();
        }
        if ("gmrin".equals(str)) {
            return aVarA.H();
        }
        if ("galgu".equals(str)) {
            return aVarA.I();
        }
        if ("gscsz".equals(str)) {
            return aVarA.J();
        }
        if ("gneyp".equals(str)) {
            return aVarA.h(false);
        }
        if ("gneypnw".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.i(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gneypfce".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.h(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gnktpfs".equals(str)) {
            return aVarA.K();
        }
        if ("gdtlnktpfs".equals(str)) {
            return aVarA.L();
        }
        if ("cknavbl".equals(str)) {
            return Boolean.valueOf(aVarA.j(false));
        }
        if ("cknavblfc".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return Boolean.valueOf(aVarA.j(((Boolean) arrayList.get(0)).booleanValue()));
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gdntp".equals(str)) {
            return Integer.valueOf(aVarA.M());
        }
        if ("gdntpstr".equals(str)) {
            return Integer.valueOf(aVarA.N());
        }
        if ("gtmne".equals(str)) {
            return aVarA.O();
        }
        if ("gflv".equals(str)) {
            return aVarA.P();
        }
        if ("gbsbd".equals(str)) {
            return aVarA.Q();
        }
        if ("gbfspy".equals(str)) {
            return aVarA.R();
        }
        if ("gbplfo".equals(str)) {
            return aVarA.S();
        }
        if ("giads".equals(str)) {
            return aVarA.T();
        }
        if ("giadsstr".equals(str)) {
            return aVarA.U();
        }
        if ("gia".equals(str)) {
            if (!c.a(m.a("003ehh")) || ae.b().h() == 42) {
                return new ArrayList();
            }
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.a(((Boolean) arrayList.get(0)).booleanValue(), false);
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("giafce".equals(str)) {
            if (!c.a(m.a("003ehh")) || ae.b().h() == 42) {
                return new ArrayList();
            }
            if (arrayList != null && arrayList.size() == 2) {
                return aVarA.a(((Boolean) arrayList.get(0)).booleanValue(), ((Boolean) arrayList.get(1)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gal".equals(str)) {
            return (!c.a(m.a("003ehh")) || ae.b().h() == 42) ? new ArrayList() : aVarA.V();
        }
        if ("gsl".equals(str)) {
            return (!c.a(m.a("003ehh")) || ae.b().h() == 42) ? new ArrayList() : aVarA.W();
        }
        if ("glctn".equals(str)) {
            if (arrayList != null && arrayList.size() == 3) {
                return aVarA.a(((Integer) arrayList.get(0)).intValue(), ((Integer) arrayList.get(1)).intValue(), ((Boolean) arrayList.get(2)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gstmpts".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.a((String) arrayList.get(0));
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gdvk".equals(str)) {
            return aVarA.X();
        }
        if ("gdvkfc".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.l(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("ipgist".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return Boolean.valueOf(aVarA.b((String) arrayList.get(0)));
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gscpt".equals(str)) {
            return aVarA.Y();
        }
        if ("gsnmd".equals(str)) {
            return aVarA.Z();
        }
        if ("gsnmdfp".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.c((String) arrayList.get(0));
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gpgnm".equals(str)) {
            return aVarA.aa();
        }
        if ("gpnmmt".equals(str)) {
            return aVarA.ab();
        }
        if ("gpnmfp".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.d((String) arrayList.get(0));
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gpvsnm".equals(str)) {
            return Integer.valueOf(aVarA.ac());
        }
        if ("gpvsme".equals(str)) {
            return aVarA.ad();
        }
        if ("cinmnps".equals(str)) {
            return Boolean.valueOf(aVarA.ae());
        }
        if ("gcrtpcnm".equals(str)) {
            return aVarA.af();
        }
        if ("ciafgd".equals(str)) {
            return Boolean.valueOf(aVarA.ag());
        }
        if ("ckpmsi".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return Boolean.valueOf(aVarA.e((String) arrayList.get(0)));
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gaplcn".equals(str)) {
            return aVarA.ah();
        }
        if ("qritsvc".equals(str)) {
            if (arrayList != null && arrayList.size() == 2) {
                return aVarA.a((Intent) arrayList.get(0), ((Integer) arrayList.get(1)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("rsaciy".equals(str)) {
            if (arrayList != null && arrayList.size() == 2) {
                return aVarA.b((Intent) arrayList.get(0), ((Integer) arrayList.get(1)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gpgif".equals(str)) {
            if (arrayList != null && arrayList.size() == 2) {
                return aVarA.a(false, 0, (String) arrayList.get(0), ((Integer) arrayList.get(1)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gpgiffcin".equals(str)) {
            if (arrayList != null && arrayList.size() == 3) {
                return aVarA.a(((Boolean) arrayList.get(0)).booleanValue(), 0, (String) arrayList.get(1), ((Integer) arrayList.get(2)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gpgifstrg".equals(str)) {
            if (arrayList != null && arrayList.size() == 3) {
                return aVarA.a(false, ((Integer) arrayList.get(0)).intValue(), (String) arrayList.get(1), ((Integer) arrayList.get(2)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gpgiffist".equals(str)) {
            if (arrayList != null && arrayList.size() == 4) {
                return aVarA.a(((Boolean) arrayList.get(0)).booleanValue(), ((Integer) arrayList.get(1)).intValue(), (String) arrayList.get(2), ((Integer) arrayList.get(3)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gdvda".equals(str)) {
            return aVarA.ai();
        }
        if ("gdvdtnas".equals(str)) {
            return aVarA.aj();
        }
        if ("galtut".equals(str)) {
            return Long.valueOf(aVarA.ak());
        }
        if ("gdvme".equals(str)) {
            return aVarA.al();
        }
        if ("gcrup".equals(str)) {
            return aVarA.am();
        }
        if ("gcifm".equals(str)) {
            return aVarA.an();
        }
        if ("godm".equals(str)) {
            String strAo = aVarA.ao();
            if (TextUtils.isEmpty(f2027e)) {
                f2027e = ae.b().b("key_ched_od", (String) null);
            }
            if (TextUtils.isEmpty(strAo) || CSCenter.getInstance().invocationRecord().a()) {
                return TextUtils.isEmpty(f2027e) ? strAo : f2027e;
            }
            if (TextUtils.equals(f2027e, strAo)) {
                return strAo;
            }
            f2027e = strAo;
            ae.b().a("key_ched_od", strAo);
            return strAo;
        }
        if ("godhm".equals(str)) {
            return aVarA.ap();
        }
        if ("galdm".equals(str)) {
            return aVarA.aq();
        }
        if ("gtaif".equals(str)) {
            return aVarA.ar();
        }
        if ("gtaifok".equals(str)) {
            return aVarA.as();
        }
        if ("gtaifprm".equals(str)) {
            if (arrayList != null && arrayList.size() == 2) {
                return aVarA.a((String) arrayList.get(0), ((Integer) arrayList.get(1)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gtaifprmfce".equals(str)) {
            if (arrayList != null && arrayList.size() == 3) {
                return aVarA.a(((Boolean) arrayList.get(0)).booleanValue(), (String) arrayList.get(1), ((Integer) arrayList.get(2)).intValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gtdrd".equals(str)) {
            return aVarA.at();
        }
        if ("gtbdt".equals(str)) {
            return Long.valueOf(aVarA.au());
        }
        if ("gtscnin".equals(str)) {
            return Double.valueOf(aVarA.av());
        }
        if ("gtscnppi".equals(str)) {
            return Integer.valueOf(aVarA.aw());
        }
        if ("ishmos".equals(str)) {
            return Boolean.valueOf(aVarA.ax());
        }
        if ("gthmosv".equals(str)) {
            return aVarA.ay();
        }
        if ("gthmosdtlv".equals(str)) {
            return aVarA.az();
        }
        if ("gthmpmst".equals(str)) {
            return Integer.valueOf(aVarA.aA());
        }
        if ("gthmepmst".equals(str)) {
            return Integer.valueOf(aVarA.aB());
        }
        if ("gtinnerlangmt".equals(str)) {
            return aVarA.aC();
        }
        if ("gtgramgendt".equals(str)) {
            return Integer.valueOf(aVarA.aD());
        }
        if ("ctedebbing".equals(str)) {
            return Boolean.valueOf(aVarA.aE());
        }
        if ("gtelcmefce".equals(str)) {
            if (arrayList != null && arrayList.size() == 4) {
                return aVarA.a(((Integer) arrayList.get(0)).intValue(), ((Integer) arrayList.get(1)).intValue(), ((Boolean) arrayList.get(2)).booleanValue(), ((Boolean) arrayList.get(3)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gteacifo".equals(str)) {
            return aVarA.aF();
        }
        if ("gtdm".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.m(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gtlstactme".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return Long.valueOf(aVarA.f((String) arrayList.get(0)));
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gpsavlb".equals(str)) {
            return Boolean.valueOf(aVarA.aG());
        }
        if ("isaut".equals(str)) {
            return Boolean.valueOf(aVarA.aH());
        }
        if ("gtscrpch".equals(str)) {
            return aVarA.aI();
        }
        if ("gtrtmey".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.n(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gppl".equals(str)) {
            if (arrayList != null && arrayList.size() == 1) {
                return aVarA.k(((Boolean) arrayList.get(0)).booleanValue());
            }
            throw new Throwable("array illegal: " + arrayList);
        }
        if ("gtrddi".equals(str)) {
            return aVarA.aJ();
        }
        FlyLog.getInstance().d("Not found: " + str, new Object[0]);
        return null;
    }

    private static cn.fly.tools.b.a a(String str) {
        CountDownLatch countDownLatchD;
        CountDownLatch countDownLatchD2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            FlyLog.getInstance().w("WARNING: Call in main: key = " + str);
            b();
        }
        if (!(f2023a.get() == null ? false : f2023a.get().booleanValue())) {
            if (!f2026d.contains(str) && !d.c() && (countDownLatchD2 = d.a(FlySDK.getContext()).d()) != null) {
                try {
                    FlyLog.getInstance().d("dhs_ivkr k: " + str + ", cdl: " + countDownLatchD2, new Object[0]);
                    countDownLatchD2.await(3500L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
        } else {
            boolean zBooleanValue = f2024b.get() == null ? false : f2024b.get().booleanValue();
            boolean zBooleanValue2 = f2025c.get() == null ? false : f2025c.get().booleanValue();
            if (zBooleanValue) {
                FlyLog.getInstance().d("isGCFThread true", new Object[0]);
            }
            if (!zBooleanValue && !zBooleanValue2 && !d.c() && (countDownLatchD = d.a(FlySDK.getContext()).d()) != null) {
                try {
                    FlyLog.getInstance().d("dhs_ivkr_new k: " + str + ", cdl: " + countDownLatchD, new Object[0]);
                    countDownLatchD.await(3500L, TimeUnit.MILLISECONDS);
                } catch (Throwable th2) {
                    FlyLog.getInstance().d(th2);
                }
            }
        }
        return a();
    }

    private static cn.fly.tools.b.a a() {
        cn.fly.tools.b.a aVarC;
        if (d.c()) {
            aVarC = cn.fly.tools.b.c.a(FlySDK.getContext()).e();
        } else {
            aVarC = cn.fly.tools.b.c.a(FlySDK.getContext()).c();
        }
        return h.a(aVarC);
    }

    private static void b() {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace != null) {
                String str = "";
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (stackTraceElement != null) {
                        str = str + stackTraceElement.getClassName() + o0.f49827a + stackTraceElement.getMethodName() + "(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")\n";
                    }
                }
                FlyLog.getInstance().d(str, new Object[0]);
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }
}
