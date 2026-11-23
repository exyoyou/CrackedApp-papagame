package com.tencent.bugly.proguard;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.r.a;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f83635a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static r f83636b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f83637c = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f83638d = 300000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f83639e = 30000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f83640f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f83641g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f83642h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static long f83643i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static long f83644j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Application.ActivityLifecycleCallbacks f83645k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static Class<?> f83646l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f83647m = true;

    static class a implements Application.ActivityLifecycleCallbacks {
        a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            String name = activity.getClass().getName();
            if (s.f83646l == null || s.f83646l.getName().equals(name)) {
                al.c(">>> %s onCreated <<<", name);
                aa aaVarB = aa.b();
                if (aaVarB != null) {
                    aaVarB.M.add(s.a(name, "onCreated"));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            String name = activity.getClass().getName();
            if (s.f83646l == null || s.f83646l.getName().equals(name)) {
                al.c(">>> %s onDestroyed <<<", name);
                aa aaVarB = aa.b();
                if (aaVarB != null) {
                    aaVarB.M.add(s.a(name, "onDestroyed"));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            String name = activity.getClass().getName();
            if (s.f83646l == null || s.f83646l.getName().equals(name)) {
                al.c(">>> %s onPaused <<<", name);
                aa aaVarB = aa.b();
                if (aaVarB == null) {
                    return;
                }
                aaVarB.M.add(s.a(name, "onPaused"));
                long jCurrentTimeMillis = System.currentTimeMillis();
                aaVarB.B = jCurrentTimeMillis;
                aaVarB.C = jCurrentTimeMillis - aaVarB.A;
                long unused = s.f83642h = jCurrentTimeMillis;
                if (aaVarB.C < 0) {
                    aaVarB.C = 0L;
                }
                aaVarB.f83205z = "background";
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            String name = activity.getClass().getName();
            if (s.f83646l == null || s.f83646l.getName().equals(name)) {
                al.c(">>> %s onResumed <<<", name);
                aa aaVarB = aa.b();
                if (aaVarB == null) {
                    return;
                }
                aaVarB.M.add(s.a(name, "onResumed"));
                aaVarB.f83205z = name;
                long jCurrentTimeMillis = System.currentTimeMillis();
                aaVarB.A = jCurrentTimeMillis;
                aaVarB.D = jCurrentTimeMillis - s.f83643i;
                long j10 = aaVarB.A - s.f83642h;
                if (j10 > (s.f83640f > 0 ? s.f83640f : s.f83639e)) {
                    aaVarB.d();
                    s.g();
                    al.a("[session] launch app one times (app in background %d seconds and over %d seconds)", Long.valueOf(j10 / 1000), Long.valueOf(s.f83639e / 1000));
                    if (s.f83641g % s.f83637c == 0) {
                        s.f83636b.a(4, s.f83647m);
                        return;
                    }
                    s.f83636b.a(4, false);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (jCurrentTimeMillis2 - s.f83644j > s.f83638d) {
                        long unused = s.f83644j = jCurrentTimeMillis2;
                        al.a("add a timer to upload hot start user info", new Object[0]);
                        if (s.f83647m) {
                            ak.a().a(s.f83636b.new a(null, true), s.f83638d);
                        }
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            al.c(">>> %s onStart <<<", activity.getClass().getName());
            aa.b().a(activity.hashCode(), true);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            al.c(">>> %s onStop <<<", activity.getClass().getName());
            aa.b().a(activity.hashCode(), false);
        }
    }

    public static void a(final Context context, final BuglyStrategy buglyStrategy) {
        long appReportDelay;
        if (f83635a) {
            return;
        }
        f83647m = aa.a(context).f83187g;
        f83636b = new r(context, f83647m);
        f83635a = true;
        if (buglyStrategy != null) {
            f83646l = buglyStrategy.getUserInfoActivity();
            appReportDelay = buglyStrategy.getAppReportDelay();
        } else {
            appReportDelay = 0;
        }
        if (appReportDelay <= 0) {
            c(context, buglyStrategy);
        } else {
            ak.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.s.1
                @Override // java.lang.Runnable
                public final void run() {
                    s.c(context, buglyStrategy);
                }
            }, appReportDelay);
        }
    }

    static /* synthetic */ int g() {
        int i10 = f83641g;
        f83641g = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, BuglyStrategy buglyStrategy) {
        boolean zIsEnableUserInfo;
        boolean zRecordUserInfoOnceADay;
        boolean z10;
        if (buglyStrategy != null) {
            zRecordUserInfoOnceADay = buglyStrategy.recordUserInfoOnceADay();
            zIsEnableUserInfo = buglyStrategy.isEnableUserInfo();
        } else {
            zIsEnableUserInfo = true;
            zRecordUserInfoOnceADay = false;
        }
        if (zRecordUserInfoOnceADay) {
            aa aaVarA = aa.a(context);
            List<UserInfoBean> listA = r.a(aaVarA.f83185e);
            if (listA == null) {
                z10 = true;
                break;
            }
            int i10 = 0;
            while (true) {
                if (i10 < listA.size()) {
                    UserInfoBean userInfoBean = listA.get(i10);
                    if (userInfoBean.f83087n.equals(aaVarA.f83195p) && userInfoBean.f83075b == 1) {
                        long jB = ap.b();
                        if (jB > 0) {
                            if (userInfoBean.f83078e >= jB) {
                                if (userInfoBean.f83079f <= 0) {
                                    f83636b.b();
                                }
                                z10 = false;
                                break;
                            }
                        }
                    }
                    i10++;
                }
                z10 = true;
                break;
            }
            if (!z10) {
                return;
            } else {
                zIsEnableUserInfo = false;
            }
        }
        aa aaVarB = aa.b();
        if (aaVarB != null && z.a()) {
            aaVarB.a(0, true);
        }
        if (zIsEnableUserInfo) {
            Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
            if (application != null) {
                try {
                    if (f83645k == null) {
                        f83645k = new a();
                    }
                    application.registerActivityLifecycleCallbacks(f83645k);
                } catch (Exception e10) {
                    if (!al.a(e10)) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        if (f83647m) {
            f83643i = System.currentTimeMillis();
            f83636b.a(1, false);
            al.a("[session] launch app, new start", new Object[0]);
            f83636b.a();
            f83636b.a(21600000L);
        }
    }

    public static void a(long j10) {
        if (j10 < 0) {
            j10 = ac.a().c().f83111p;
        }
        f83640f = j10;
    }

    public static void a(StrategyBean strategyBean, boolean z10) {
        r rVar = f83636b;
        if (rVar != null && !z10) {
            rVar.b();
        }
        if (strategyBean == null) {
            return;
        }
        long j10 = strategyBean.f83111p;
        if (j10 > 0) {
            f83639e = j10;
        }
        int i10 = strategyBean.f83116u;
        if (i10 > 0) {
            f83637c = i10;
        }
        long j11 = strategyBean.f83117v;
        if (j11 > 0) {
            f83638d = j11;
        }
    }

    public static void a() {
        r rVar = f83636b;
        if (rVar != null) {
            rVar.a(2, false);
        }
    }

    public static void a(Context context) {
        if (!f83635a || context == null) {
            return;
        }
        Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
        if (application != null) {
            try {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = f83645k;
                if (activityLifecycleCallbacks != null) {
                    application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
                }
            } catch (Exception e10) {
                if (!al.a(e10)) {
                    e10.printStackTrace();
                }
            }
        }
        f83635a = false;
    }

    static /* synthetic */ String a(String str, String str2) {
        return ap.a() + "  " + str + "  " + str2 + "\n";
    }
}
