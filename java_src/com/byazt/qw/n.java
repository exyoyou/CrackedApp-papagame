package com.byazt.qw;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 726, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f19276c = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f19277n = 3;
    public static int tt = 0;
    public static int uj = 2;
    public static int ve = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f19278a = f19276c;
    public long sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f19281x = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f19280i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final List<a> f19279da = new ArrayList();

    public void c(long j10) {
        this.f19278a = tt;
        this.sp = j10;
    }

    public void tt(long j10) {
        int i10;
        int i11 = this.f19278a;
        if (i11 == f19276c || i11 == (i10 = f19277n)) {
            return;
        }
        this.f19278a = i10;
        this.f19280i = j10;
    }

    public void uj(long j10) {
        int i10 = this.f19278a;
        if (i10 == f19276c || i10 != uj) {
            return;
        }
        this.f19278a = ve;
        this.f19279da.add(new a(this.f19281x, j10));
        this.f19281x = 0L;
    }

    public void ve(long j10) {
        int i10;
        int i11 = this.f19278a;
        if (i11 == f19276c || i11 == (i10 = uj) || i11 == f19277n) {
            return;
        }
        this.f19278a = i10;
        this.f19281x = j10;
    }

    public long c(long j10, long j11) {
        long j12;
        long j13;
        long jTt;
        long j14 = this.f19280i;
        if (j14 != 0 && j10 > j14) {
            return 0L;
        }
        int i10 = 0;
        for (a aVar : this.f19279da) {
            if (aVar.tt() > j10) {
                if (j10 < aVar.c()) {
                    j13 = i10;
                    jTt = aVar.tt() - aVar.c();
                } else {
                    j13 = i10;
                    jTt = aVar.tt() - j10;
                }
                i10 = (int) (j13 + jTt);
            }
        }
        long j15 = this.sp;
        if (j15 < j10) {
            long j16 = this.f19281x;
            if (j16 == 0) {
                j16 = this.f19280i;
                if (j16 == 0) {
                    j12 = j11 - j10;
                }
            } else if (j16 <= j10) {
                return 0L;
            }
            return (j16 - j10) - ((long) i10);
        }
        long j17 = this.f19281x;
        if (j17 == 0) {
            j17 = this.f19280i;
            if (j17 == 0) {
                j12 = j11 - j15;
            }
        } else if (j17 <= j15) {
            return 0L;
        }
        return (j17 - j15) - ((long) i10);
        return j12 - ((long) i10);
    }

    public int c() {
        return this.f19278a;
    }
}
