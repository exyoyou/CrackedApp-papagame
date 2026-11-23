package com.tencent.bugly.proguard;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class au {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static au f83379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ac f83380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private aa f83381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private as f83382d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f83383e;

    private au(Context context) {
        at atVarA = at.a();
        if (atVarA == null) {
            return;
        }
        this.f83380b = ac.a();
        this.f83381c = aa.a(context);
        this.f83382d = atVarA.f83360s;
        this.f83383e = context;
        ak.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.au.1
            @Override // java.lang.Runnable
            public final void run() {
                au.a(au.this);
            }
        });
    }

    public static au a(Context context) {
        if (f83379a == null) {
            f83379a = new au(context);
        }
        return f83379a;
    }

    public static void a(final Thread thread, final int i10, final String str, final String str2, final String str3, final Map<String, String> map) {
        ak.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.au.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (au.f83379a == null) {
                        al.e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
                    } else {
                        au.a(au.f83379a, thread, i10, str, str2, str3, map);
                    }
                } catch (Throwable th) {
                    if (!al.b(th)) {
                        th.printStackTrace();
                    }
                    al.e("[ExtraCrashManager] Crash error %s %s %s", str, str2, str3);
                }
            }
        });
    }

    static /* synthetic */ void a(au auVar) {
        al.c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class<?> cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            auVar.f83381c.getClass();
            ap.a(cls, "sdkPackageName", "com.tencent.bugly");
            al.c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable unused) {
            al.a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    static /* synthetic */ void a(au auVar, Thread thread, int i10, String str, String str2, String str3, Map map) {
        String str4;
        String str5;
        Thread threadCurrentThread = thread == null ? Thread.currentThread() : thread;
        if (i10 == 4) {
            str4 = "Unity";
        } else if (i10 == 5 || i10 == 6) {
            str4 = "Cocos";
        } else {
            if (i10 != 8) {
                al.d("[ExtraCrashManager] Unknown extra crash type: %d", Integer.valueOf(i10));
                return;
            }
            str4 = "H5";
        }
        al.e("[ExtraCrashManager] %s Crash Happen", str4);
        try {
            if (!auVar.f83380b.b()) {
                al.d("[ExtraCrashManager] There is no remote strategy, but still store it.", new Object[0]);
            }
            StrategyBean strategyBeanC = auVar.f83380b.c();
            if (!strategyBeanC.f83101f && auVar.f83380b.b()) {
                al.e("[ExtraCrashManager] Crash report was closed by remote. Will not upload to Bugly , print local for helpful!", new Object[0]);
                as.a(str4, ap.a(), auVar.f83381c.f83185e, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, null);
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            if (i10 != 5 && i10 != 6) {
                if (i10 == 8 && !strategyBeanC.f83107l) {
                    al.e("[ExtraCrashManager] %s report is disabled.", str4);
                    al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                    return;
                }
            } else if (!strategyBeanC.f83106k) {
                al.e("[ExtraCrashManager] %s report is disabled.", str4);
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            int i11 = i10 != 8 ? i10 : 5;
            CrashDetailBean crashDetailBean = new CrashDetailBean();
            crashDetailBean.C = ab.j();
            crashDetailBean.D = ab.f();
            crashDetailBean.E = ab.l();
            crashDetailBean.F = auVar.f83381c.n();
            crashDetailBean.G = auVar.f83381c.m();
            crashDetailBean.H = auVar.f83381c.o();
            crashDetailBean.I = ab.b(auVar.f83383e);
            crashDetailBean.J = ab.g();
            crashDetailBean.K = ab.h();
            crashDetailBean.f83121b = i11;
            crashDetailBean.f83124e = auVar.f83381c.j();
            aa aaVar = auVar.f83381c;
            crashDetailBean.f83125f = aaVar.f83195p;
            crashDetailBean.f83126g = aaVar.t();
            crashDetailBean.f83132m = auVar.f83381c.g();
            crashDetailBean.f83133n = String.valueOf(str);
            crashDetailBean.f83134o = String.valueOf(str2);
            String str6 = "";
            if (str3 != null) {
                String[] strArrSplit = str3.split("\n");
                str6 = strArrSplit.length > 0 ? strArrSplit[0] : "";
                str5 = str3;
            } else {
                str5 = "";
            }
            crashDetailBean.f83135p = str6;
            crashDetailBean.f83136q = str5;
            crashDetailBean.f83137r = System.currentTimeMillis();
            crashDetailBean.f83140u = ap.c(crashDetailBean.f83136q.getBytes());
            crashDetailBean.f83145z = ap.a(auVar.f83381c.R, at.f83348h);
            crashDetailBean.A = auVar.f83381c.f83185e;
            crashDetailBean.B = threadCurrentThread.getName() + "(" + threadCurrentThread.getId() + ")";
            crashDetailBean.L = auVar.f83381c.v();
            crashDetailBean.f83127h = auVar.f83381c.s();
            aa aaVar2 = auVar.f83381c;
            crashDetailBean.Q = aaVar2.f83182b;
            crashDetailBean.R = aaVar2.a();
            crashDetailBean.U = auVar.f83381c.C();
            aa aaVar3 = auVar.f83381c;
            crashDetailBean.V = aaVar3.f83204y;
            crashDetailBean.W = aaVar3.w();
            crashDetailBean.X = auVar.f83381c.B();
            crashDetailBean.f83144y = ao.a();
            if (crashDetailBean.S == null) {
                crashDetailBean.S = new LinkedHashMap();
            }
            if (map != null) {
                crashDetailBean.S.putAll(map);
            }
            as.a(str4, ap.a(), auVar.f83381c.f83185e, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, crashDetailBean);
            if (!auVar.f83382d.a(crashDetailBean, !at.a().C)) {
                auVar.f83382d.b(crashDetailBean, false);
            }
            al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
            } catch (Throwable th2) {
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                throw th2;
            }
        }
    }
}
