package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class at {
    private static at D = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f83342a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f83343b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f83344d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f83345e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f83346f = 20480;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f83347g = 3000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f83348h = 20480;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static long f83349i = 209715200;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static long f83350j = 604800000;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f83351k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f83352l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f83353m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f83354n = 5000;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static boolean f83355o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static boolean f83356p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static String f83357q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static String f83358r;
    public Boolean A;
    public int B = 31;
    public boolean C = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f83359c;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final as f83360s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final av f83361t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final NativeCrashHandler f83362u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final ac f83363v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ak f83364w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ay f83365x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public BuglyStrategy.a f83366y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public aw f83367z;

    private at(Context context, ak akVar, boolean z10, BuglyStrategy.a aVar) {
        f83342a = 1004;
        Context contextA = ap.a(context);
        this.f83359c = contextA;
        ac acVarA = ac.a();
        this.f83363v = acVarA;
        this.f83364w = akVar;
        this.f83366y = aVar;
        this.f83367z = null;
        as asVar = new as(contextA, ai.a(), w.a(), acVarA, aVar);
        this.f83360s = asVar;
        aa aaVarA = aa.a(contextA);
        this.f83361t = new av(contextA, asVar, acVarA, aaVarA);
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance(contextA, aaVarA, asVar, acVarA, akVar, z10, null);
        this.f83362u = nativeCrashHandler;
        aaVarA.O = nativeCrashHandler;
        if (ay.f83408f == null) {
            ay.f83408f = new ay(contextA, acVarA, aaVarA, akVar, asVar);
        }
        this.f83365x = ay.f83408f;
    }

    public final synchronized void c() {
        this.f83361t.b();
        d();
        g();
    }

    public final void d() {
        this.f83362u.setUserOpened(false);
    }

    public final void e() {
        this.f83362u.setUserOpened(true);
    }

    public final void f() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.bugly.proguard.at.1
            @Override // java.lang.Runnable
            public final void run() {
                NativeCrashHandler.getInstance().unBlockSigquit(true);
            }
        });
        this.f83365x.b(true);
    }

    public final void g() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.bugly.proguard.at.2
            @Override // java.lang.Runnable
            public final void run() {
                NativeCrashHandler.getInstance().unBlockSigquit(false);
            }
        });
        this.f83365x.b(false);
    }

    public final synchronized void h() {
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (i10 < 30) {
                try {
                    al.a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", Integer.valueOf(i11));
                    ap.b(5000L);
                    i10 = i11;
                } catch (Throwable th) {
                    if (al.a(th)) {
                        return;
                    }
                    th.printStackTrace();
                    return;
                }
            }
        }
    }

    public final boolean i() {
        return this.f83365x.f83409a.get();
    }

    public final boolean j() {
        return (this.B & 16) > 0;
    }

    public final boolean k() {
        return (this.B & 8) > 0;
    }

    public static synchronized at a(Context context, boolean z10, BuglyStrategy.a aVar) {
        if (D == null) {
            D = new at(context, ak.a(), z10, aVar);
        }
        return D;
    }

    public final synchronized void b() {
        this.f83361t.a();
        e();
        f();
    }

    public static synchronized at a() {
        return D;
    }

    public final synchronized void a(boolean z10, boolean z11, boolean z12) {
        this.f83362u.testNativeCrash(z10, z11, z12);
    }

    public final void a(CrashDetailBean crashDetailBean) {
        this.f83360s.b(crashDetailBean);
    }

    public final void a(long j10) {
        ak.a().a(new Thread() { // from class: com.tencent.bugly.proguard.at.4
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                List<CrashDetailBean> list;
                if (!ap.a(at.this.f83359c, "local_crash_lock")) {
                    al.c("Failed to lock file for uploading local crash.", new Object[0]);
                    return;
                }
                ag agVar = ag.a.f83226a;
                List<ag.b> listA = ag.a();
                if (listA == null || listA.isEmpty()) {
                    al.c("sla local data is null", new Object[0]);
                } else {
                    al.c("sla load local data list size:%s", Integer.valueOf(listA.size()));
                    Iterator<ag.b> it2 = listA.iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it2.hasNext()) {
                        ag.b next = it2.next();
                        if (next.f83228b < ap.b() - com.baidu.mobads.sdk.internal.bn.f7592d) {
                            al.c("sla local data is expired:%s", next.f83229c);
                            arrayList.add(next);
                            it2.remove();
                        }
                    }
                    ag.d(arrayList);
                    agVar.b(listA);
                }
                List<CrashDetailBean> listA2 = as.a();
                if (listA2 == null || listA2.size() <= 0) {
                    al.c("no crash need to be uploaded at this start", new Object[0]);
                } else {
                    al.c("Size of crash list: %s", Integer.valueOf(listA2.size()));
                    int size = listA2.size();
                    if (size > 20) {
                        ArrayList arrayList2 = new ArrayList();
                        Collections.sort(listA2);
                        for (int i10 = 0; i10 < 20; i10++) {
                            arrayList2.add(listA2.get((size - 1) - i10));
                        }
                        list = arrayList2;
                    } else {
                        list = listA2;
                    }
                    at.this.f83360s.a(list, 0L, false, false, false);
                }
                ap.b(at.this.f83359c, "local_crash_lock");
            }
        }, j10);
    }
}
