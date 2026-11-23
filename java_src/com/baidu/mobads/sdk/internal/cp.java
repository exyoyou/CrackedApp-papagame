package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class cp implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f7785a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7786b = "remote";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f7787c = "proxy";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f7788d = "third-mtj";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f7789e = "third-cpu";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f7790f = "third-cpu-cyber";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f7791g = "third-novel";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f7792h = "third-aigc";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f7793i = "third-aigc-virtual";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f7794j = "third-aigc-speech";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f7795k = "third-aigc-image";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static Thread.UncaughtExceptionHandler f7796l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static volatile cp f7797m = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f7798p = "key_crash_source";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f7799q = "key_crash_trace";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f7800r = "key_crash_ad";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f7801n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a f7802o;

    interface a {
        void a(String str);
    }

    private cp(Context context) {
        this.f7801n = context.getApplicationContext();
        f7796l = Thread.getDefaultUncaughtExceptionHandler();
    }

    private List<String> d() {
        IXAdContainerFactory iXAdContainerFactoryC;
        ArrayList arrayList = new ArrayList();
        try {
            aa aaVarA = aa.a();
            if (aaVarA != null && (iXAdContainerFactoryC = aaVarA.c()) != null) {
                Object remoteParam = iXAdContainerFactoryC.getRemoteParam("appCommonConfig", "getCrashPackage");
                if (remoteParam instanceof List) {
                    arrayList.addAll((List) remoteParam);
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    private SharedPreferences e() throws Exception {
        return this.f7801n.getSharedPreferences("baidu_mobads_crash", 0);
    }

    private SharedPreferences.Editor f() throws Exception {
        return e().edit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws Exception {
        SharedPreferences.Editor editorF = f();
        editorF.clear();
        editorF.apply();
    }

    public void c() {
        this.f7802o = null;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            String strA = a(th);
            if (strA != null) {
                a(strA, Log.getStackTraceString(th));
                a aVar = this.f7802o;
                if (aVar != null) {
                    aVar.a(strA);
                }
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = f7796l;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Exception e10) {
            bv.a().c(e10);
        }
    }

    public void b() {
        if (Thread.getDefaultUncaughtExceptionHandler() instanceof cp) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static cp a(Context context) {
        if (f7797m == null) {
            synchronized (cp.class) {
                if (f7797m == null) {
                    f7797m = new cp(context);
                }
            }
        }
        return f7797m;
    }

    public void a() {
        be.a().a((j) new cq(this));
    }

    public void a(a aVar) {
        this.f7802o = aVar;
    }

    private String a(Throwable th) {
        Throwable cause = th.getCause();
        if (cause != null) {
            th = cause;
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace == null || stackTrace.length <= 0) {
            return null;
        }
        List<String> listD = d();
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            if (className.startsWith("junit.framework")) {
                return null;
            }
            if (!className.startsWith(z.au) && !className.startsWith(z.av) && !className.startsWith(z.aw)) {
                if (className.startsWith(z.ax) || className.startsWith(z.ay) || className.startsWith(z.az)) {
                    return f7787c;
                }
                if (className.startsWith(z.aA)) {
                    return f7788d;
                }
                if (className.startsWith(z.aB)) {
                    return f7789e;
                }
                if (className.startsWith(z.aC) || className.startsWith(z.aD)) {
                    return f7790f;
                }
                if (className.startsWith(z.aL)) {
                    return f7794j;
                }
                if (className.startsWith(z.aH) || className.startsWith(z.aI) || className.startsWith(z.aJ) || className.startsWith(z.aK)) {
                    return f7793i;
                }
                if (className.startsWith(z.aG)) {
                    return f7792h;
                }
                if (!className.startsWith(z.aE) && !className.startsWith(z.aF)) {
                    if (!a(className, listD)) {
                        if (className.startsWith(z.aM)) {
                            return f7795k;
                        }
                    }
                } else if (co.f7754g.booleanValue()) {
                    return f7791g;
                }
            }
            return f7786b;
        }
        return null;
    }

    private boolean a(String str, List<String> list) {
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (str.startsWith(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public void a(String str, String str2) throws Exception {
        SharedPreferences.Editor editorF = f();
        String str3 = "crashtime:" + System.currentTimeMillis() + " ";
        editorF.putString(f7798p, str);
        editorF.putString(f7799q, str3 + str2);
        editorF.putString(f7800r, f7785a);
        editorF.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) throws Exception {
        return e().getString(str, "");
    }
}
