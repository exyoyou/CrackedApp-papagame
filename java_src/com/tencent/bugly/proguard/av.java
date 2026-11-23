package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class av implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f83391h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Object f83392i = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f83393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final as f83394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final ac f83395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final aa f83396d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Thread.UncaughtExceptionHandler f83397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Thread.UncaughtExceptionHandler f83398f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f83399g = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f83400j;

    public av(Context context, as asVar, ac acVar, aa aaVar) {
        this.f83393a = context;
        this.f83394b = asVar;
        this.f83395c = acVar;
        this.f83396d = aaVar;
    }

    private static void c() {
        al.e("current process die", new Object[0]);
        Process.killProcess(Process.myPid());
        System.exit(1);
    }

    public final synchronized void a() {
        if (this.f83400j >= 10) {
            al.a("java crash handler over %d, no need set.", 10);
            return;
        }
        this.f83399g = true;
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            if (av.class.getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                return;
            }
            if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                al.a("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f83398f = defaultUncaughtExceptionHandler;
                this.f83397e = defaultUncaughtExceptionHandler;
            } else {
                al.a("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f83397e = defaultUncaughtExceptionHandler;
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f83400j++;
        al.a("registered java monitor: %s", toString());
    }

    public final synchronized void b() {
        this.f83399g = false;
        al.a("close java monitor!", new Object[0]);
        if ("bugly".equals(Thread.getDefaultUncaughtExceptionHandler().getClass().getName())) {
            al.a("Java monitor to unregister: %s", toString());
            Thread.setDefaultUncaughtExceptionHandler(this.f83397e);
            this.f83400j--;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (f83392i) {
            a(thread, th, true, null, null, this.f83396d.R);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0104  */
    /* JADX WARN: Code duplicated, block: B:31:0x010c  */
    /* JADX WARN: Code duplicated, block: B:33:0x010f A[Catch: all -> 0x013c, TryCatch #0 {all -> 0x013c, blocks: (B:23:0x00fc, B:28:0x0107, B:33:0x010f, B:35:0x011d, B:36:0x011f), top: B:41:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:35:0x011d A[Catch: all -> 0x013c, TryCatch #0 {all -> 0x013c, blocks: (B:23:0x00fc, B:28:0x0107, B:33:0x010f, B:35:0x011d, B:36:0x011f), top: B:41:0x00fc }] */
    private CrashDetailBean b(Thread thread, Throwable th, boolean z10, String str, byte[] bArr, boolean z11) {
        boolean z12;
        boolean z13;
        if (th == null) {
            al.d("We can do nothing with a null throwable.", new Object[0]);
            return null;
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.f83137r = System.currentTimeMillis();
        crashDetailBean.C = ab.j();
        crashDetailBean.D = ab.f();
        crashDetailBean.E = ab.l();
        crashDetailBean.F = this.f83396d.n();
        crashDetailBean.G = this.f83396d.m();
        crashDetailBean.H = this.f83396d.o();
        if (!z10 && aa.E() >= 31) {
            crashDetailBean.I = 0L;
        } else {
            crashDetailBean.I = ab.b(this.f83393a);
        }
        crashDetailBean.J = ab.g();
        crashDetailBean.K = ab.h();
        byte[] bArrA = ao.a();
        crashDetailBean.f83144y = bArrA;
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(bArrA == null ? 0 : bArrA.length);
        al.a("user log size:%d", objArr);
        crashDetailBean.f83121b = z10 ? 0 : 2;
        crashDetailBean.f83124e = this.f83396d.j();
        aa aaVar = this.f83396d;
        crashDetailBean.f83125f = aaVar.f83195p;
        crashDetailBean.f83126g = aaVar.t();
        crashDetailBean.f83132m = this.f83396d.g();
        crashDetailBean.f83145z = ap.a(z11, at.f83348h);
        crashDetailBean.A = this.f83396d.f83185e;
        crashDetailBean.B = thread.getName() + "(" + thread.getId() + ")";
        crashDetailBean.L = this.f83396d.v();
        crashDetailBean.f83127h = this.f83396d.s();
        crashDetailBean.f83128i = this.f83396d.D();
        aa aaVar2 = this.f83396d;
        crashDetailBean.Q = aaVar2.f83182b;
        crashDetailBean.R = aaVar2.a();
        a(crashDetailBean, th, z10);
        if (!z10) {
            if (str != null) {
                try {
                    if (str.length() > 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (bArr != null || bArr.length <= 0) {
                        z13 = false;
                    } else {
                        z13 = true;
                    }
                    if (z12) {
                        HashMap map = new HashMap(1);
                        crashDetailBean.S = map;
                        map.put("UserData", str);
                    }
                    if (z13) {
                        crashDetailBean.Y = bArr;
                    }
                } catch (Throwable th2) {
                    al.e("handle crash error %s", th2.toString());
                }
            } else {
                z12 = false;
                if (bArr != null) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                if (z12) {
                    HashMap map2 = new HashMap(1);
                    crashDetailBean.S = map2;
                    map2.put("UserData", str);
                }
                if (z13) {
                    crashDetailBean.Y = bArr;
                }
            }
            return crashDetailBean;
        }
        crashDetailBean.U = this.f83396d.C();
        aa aaVar3 = this.f83396d;
        crashDetailBean.V = aaVar3.f83204y;
        crashDetailBean.W = aaVar3.w();
        crashDetailBean.X = this.f83396d.B();
        return crashDetailBean;
    }

    private static void a(CrashDetailBean crashDetailBean, Throwable th, boolean z10) {
        String strA;
        String name = th.getClass().getName();
        String strA2 = a(th);
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(th.getStackTrace().length);
        objArr[1] = Boolean.valueOf(th.getCause() != null);
        al.e("stack frame :%d, has cause %b", objArr);
        String str = "";
        String string = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
        Throwable cause = th;
        while (cause != null && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause != null && cause != th) {
            crashDetailBean.f83133n = cause.getClass().getName();
            crashDetailBean.f83134o = a(cause);
            if (cause.getStackTrace().length > 0) {
                crashDetailBean.f83135p = cause.getStackTrace()[0].toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(name);
            sb2.append(":");
            sb2.append(strA2);
            sb2.append("\n");
            sb2.append(string);
            sb2.append("\n......");
            sb2.append("\nCaused by:\n");
            sb2.append(crashDetailBean.f83133n);
            sb2.append(":");
            sb2.append(crashDetailBean.f83134o);
            sb2.append("\n");
            strA = a(cause, at.f83348h);
            sb2.append(strA);
            crashDetailBean.f83136q = sb2.toString();
        } else {
            crashDetailBean.f83133n = name;
            if (at.a().i() && z10) {
                al.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
                str = " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]";
            }
            crashDetailBean.f83134o = strA2 + str;
            crashDetailBean.f83135p = string;
            strA = a(th, at.f83348h);
            crashDetailBean.f83136q = strA;
        }
        crashDetailBean.f83140u = ap.c(crashDetailBean.f83136q.getBytes());
        crashDetailBean.f83145z.put(crashDetailBean.B, strA);
    }

    private static boolean a(Thread thread) {
        synchronized (f83392i) {
            if (f83391h != null && thread.getName().equals(f83391h)) {
                return true;
            }
            f83391h = thread.getName();
            return false;
        }
    }

    public final void a(Thread thread, Throwable th, boolean z10, String str, byte[] bArr, boolean z11) {
        if (z10) {
            al.e("Java Crash Happen cause by %s(%d)", thread.getName(), Long.valueOf(thread.getId()));
            if (a(thread)) {
                al.a("this class has handled this exception", new Object[0]);
                if (this.f83398f != null) {
                    al.a("call system handler", new Object[0]);
                    this.f83398f.uncaughtException(thread, th);
                } else {
                    c();
                }
            }
        } else {
            al.e("Java Catch Happen", new Object[0]);
        }
        try {
            if (!this.f83399g) {
                al.c("Java crash handler is disable. Just return.", new Object[0]);
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f83397e;
                    if (uncaughtExceptionHandler != null && a(uncaughtExceptionHandler)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f83397e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f83398f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f83398f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            if (!this.f83395c.b()) {
                al.d("no remote but still store!", new Object[0]);
            }
            if (!this.f83395c.c().f83101f && this.f83395c.b()) {
                al.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                as.a(z10 ? "JAVA_CRASH" : "JAVA_CATCH", ap.a(), this.f83396d.f83185e, thread.getName(), ap.a(th), null);
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f83397e;
                    if (uncaughtExceptionHandler2 != null && a(uncaughtExceptionHandler2)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f83397e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f83398f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f83398f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            CrashDetailBean crashDetailBeanB = b(thread, th, z10, str, bArr, z11);
            if (crashDetailBeanB == null) {
                al.e("pkg crash datas fail!", new Object[0]);
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f83397e;
                    if (uncaughtExceptionHandler3 != null && a(uncaughtExceptionHandler3)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f83397e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f83398f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f83398f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            as.a(z10 ? "JAVA_CRASH" : "JAVA_CATCH", ap.a(), this.f83396d.f83185e, thread.getName(), ap.a(th), crashDetailBeanB);
            if (!this.f83394b.a(crashDetailBeanB, z10)) {
                this.f83394b.b(crashDetailBeanB, z10);
            }
            if (z10) {
                this.f83394b.a(crashDetailBeanB);
            }
            if (z10) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler4 = this.f83397e;
                if (uncaughtExceptionHandler4 != null && a(uncaughtExceptionHandler4)) {
                    al.e("sys default last handle start!", new Object[0]);
                    this.f83397e.uncaughtException(thread, th);
                    al.e("sys default last handle end!", new Object[0]);
                } else if (this.f83398f != null) {
                    al.e("system handle start!", new Object[0]);
                    this.f83398f.uncaughtException(thread, th);
                    al.e("system handle end!", new Object[0]);
                } else {
                    al.e("crashreport last handle start!", new Object[0]);
                    c();
                    al.e("crashreport last handle end!", new Object[0]);
                }
            }
        } catch (Throwable th2) {
            try {
                if (!al.a(th2)) {
                    th2.printStackTrace();
                }
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler5 = this.f83397e;
                    if (uncaughtExceptionHandler5 != null && a(uncaughtExceptionHandler5)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f83397e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                    } else if (this.f83398f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f83398f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                    }
                }
            } catch (Throwable th3) {
                if (z10) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler6 = this.f83397e;
                    if (uncaughtExceptionHandler6 != null && a(uncaughtExceptionHandler6)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f83397e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                    } else if (this.f83398f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f83398f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                    }
                }
                throw th3;
            }
        }
    }

    private static boolean a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        String name = uncaughtExceptionHandler.getClass().getName();
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && "uncaughtException".equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    public final synchronized void a(StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z10 = strategyBean.f83101f;
            if (z10 != this.f83399g) {
                al.a("java changed to %b", Boolean.valueOf(z10));
                if (strategyBean.f83101f) {
                    a();
                    return;
                }
                b();
            }
        }
    }

    private static String a(Throwable th, int i10) {
        if (th == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            if (th.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (i10 > 0 && sb2.length() >= i10) {
                        sb2.append("\n[Stack over limit size :" + i10 + " , has been cutted !]");
                        return sb2.toString();
                    }
                    sb2.append(stackTraceElement.toString());
                    sb2.append("\n");
                }
            }
        } catch (Throwable th2) {
            al.e("gen stack error %s", th2.toString());
        }
        return sb2.toString();
    }

    private static String a(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            return "";
        }
        if (message.length() <= 1000) {
            return message;
        }
        return message.substring(0, 1000) + "\n[Message over limit size:1000, has been cutted!]";
    }
}
