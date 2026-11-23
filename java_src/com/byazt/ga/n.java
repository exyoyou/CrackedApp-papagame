package com.byazt.ga;

import android.content.Context;
import android.os.Trace;
import com.join.mgps.Util.o0;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long[] f14400a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f14401c = false;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static com.byazt.xy.n f14402da = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static com.byazt.xy.a f14403i = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String[] f14404n = null;
    public static volatile com.byazt.xy.x sl = null;
    public static int sp = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile com.byazt.xy.sp f14405t = null;
    public static boolean tt = false;
    public static boolean uj = true;
    public static boolean ve = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f14406x;

    public static void c(String str) {
        if (tt) {
            int i10 = sp;
            if (i10 == 20) {
                f14406x++;
                return;
            }
            f14404n[i10] = str;
            f14400a[i10] = System.nanoTime();
            Trace.beginSection(str);
            sp++;
        }
    }

    public static float tt(String str) {
        int i10 = f14406x;
        if (i10 > 0) {
            f14406x = i10 - 1;
            return 0.0f;
        }
        if (!tt) {
            return 0.0f;
        }
        int i11 = sp - 1;
        sp = i11;
        if (i11 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(f14404n[i11])) {
            Trace.endSection();
            return (System.nanoTime() - f14400a[sp]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + f14404n[sp] + o0.f49827a);
    }

    public static com.byazt.xy.x c(Context context) {
        com.byazt.xy.x xVar = sl;
        if (xVar == null) {
            synchronized (com.byazt.xy.x.class) {
                xVar = sl;
                if (xVar == null) {
                    com.byazt.xy.sp spVarTt = tt(context);
                    com.byazt.xy.a ttVar = f14403i;
                    if (ttVar == null) {
                        ttVar = new com.byazt.xy.tt();
                    }
                    xVar = new com.byazt.xy.x(spVarTt, ttVar);
                    sl = xVar;
                }
            }
        }
        return xVar;
    }

    public static com.byazt.xy.sp tt(Context context) {
        if (!ve) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        com.byazt.xy.sp spVar = f14405t;
        if (spVar == null) {
            synchronized (com.byazt.xy.sp.class) {
                spVar = f14405t;
                if (spVar == null) {
                    com.byazt.xy.n nVar = f14402da;
                    if (nVar == null) {
                        nVar = new com.byazt.xy.n() { // from class: com.byazt.ga.n.1
                            @Override // com.byazt.xy.n
                            public File c() {
                                return new File(com.byazt.nys.tt.tt(applicationContext), "lottie_network_cache");
                            }
                        };
                    }
                    spVar = new com.byazt.xy.sp(nVar);
                    f14405t = spVar;
                }
            }
        }
        return spVar;
    }

    public static boolean c() {
        return uj;
    }
}
