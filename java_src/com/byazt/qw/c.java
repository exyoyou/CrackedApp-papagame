package com.byazt.qw;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 726, 20})
public class c implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f19266a = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f19267c = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static long f19268m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f19269n = 1;
    public static int nu = 0;
    public static int tt = 2;
    public static int uj = 0;
    public static int ve = 3;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static long f19270z;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f19271da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f19272i;
    public long sl;
    public long sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f19273t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f19274u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f19275x;
    public long yp;

    public static long a() {
        long jX = ve.ve().x();
        long jCurrentTimeMillis = System.currentTimeMillis() - jX;
        if (ve.ve().i() > jX) {
            return 0L;
        }
        return jX == 0 ? System.currentTimeMillis() - ve.ve().c() : jCurrentTimeMillis;
    }

    public static int n() {
        int i10 = nu;
        if (i10 == 0) {
            return 1;
        }
        return i10;
    }

    public static long sp() {
        long jI = ve.ve().i();
        if (ve.ve().x() > jI) {
            return 0L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - jI;
        if (jI == 0) {
            return 0L;
        }
        return jCurrentTimeMillis;
    }

    public static long uj() {
        return f19268m + sp();
    }

    public static long ve() {
        return f19270z + a();
    }

    public long c() {
        return this.sl;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == null) {
            return 1;
        }
        c cVar = (c) obj;
        return (this.sp <= cVar.sp && this.f19272i <= cVar.f19272i && this.f19271da <= cVar.f19271da) ? 0 : 1;
    }

    public long da() {
        return this.f19275x;
    }

    public long i() {
        return this.sp;
    }

    public long sl() {
        return this.f19272i;
    }

    public long t() {
        return this.f19271da;
    }

    public long tt() {
        return this.f19273t;
    }

    public int u() {
        return this.f19274u;
    }

    public long x() {
        return this.yp;
    }

    public void c(long j10) {
        this.sl = j10;
    }

    public void n(long j10) {
        this.f19275x = j10;
    }

    public void tt(long j10) {
        this.f19273t = j10;
    }

    public static void c(int i10) {
        tt ttVar = new tt();
        long jSp = ve.ve().sp();
        List<c> listC = ttVar.c(jSp);
        Collections.sort(listC);
        HashSet hashSet = new HashSet();
        if (listC != null && !listC.isEmpty()) {
            f19270z = 0L;
            f19268m = 0L;
            nu = 0;
            for (c cVar : listC) {
                if (cVar.u() == tt) {
                    f19268m += c(cVar, jSp);
                } else if (cVar.u() == ve) {
                    f19270z += cVar.c();
                } else if (cVar.u() == f19267c && cVar.sp == jSp) {
                    hashSet.add(Long.valueOf(cVar.da()));
                }
            }
        }
        nu = hashSet.size();
        if (i10 == f19269n) {
            nu = 1;
        }
        ttVar.c();
    }

    public void tt(int i10) {
        this.f19274u = i10;
    }

    public void uj(long j10) {
        this.sp = j10;
    }

    public void ve(long j10) {
        this.yp = j10;
    }

    public void sp(long j10) {
        this.f19271da = j10;
    }

    public void a(long j10) {
        this.f19272i = j10;
    }

    private static long c(c cVar, long j10) {
        long j11 = j10 - 518400000;
        long jX = cVar.x();
        if (jX - cVar.tt() >= j11) {
            return cVar.tt();
        }
        long j12 = jX - j11;
        if (j12 < 0) {
            return 0L;
        }
        return j12;
    }

    public static void c(int i10, long j10, long j11) {
        c cVar = new c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = ve.ve().c();
        cVar.uj(ve.ve().sp());
        cVar.n(jC);
        cVar.tt(i10);
        cVar.ve(jCurrentTimeMillis);
        if (i10 == f19267c) {
            cVar.c(0L);
            cVar.tt(0L);
            cVar.sp(0L);
            cVar.a(0L);
        } else if (i10 == tt) {
            cVar.c(0L);
            cVar.tt(j11);
            cVar.sp(0L);
            cVar.a(jCurrentTimeMillis);
        } else if (i10 == ve) {
            cVar.c(j10);
            cVar.tt(0L);
            cVar.sp(jCurrentTimeMillis);
            cVar.a(0L);
        }
        new tt().insert(cVar);
    }
}
