package com.byazt.kt;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 15})
public final class uj implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadLocal<uj> f16445c = new ThreadLocal<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Comparator<tt> f16446n = new Comparator<tt>() { // from class: com.byazt.kt.uj.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compare(tt ttVar, tt ttVar2) {
            RecyclerView recyclerView = ttVar.uj;
            if ((recyclerView == null) != (ttVar2.uj == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z10 = ttVar.f16449c;
            if (z10 != ttVar2.f16449c) {
                return z10 ? -1 : 1;
            }
            int i10 = ttVar2.tt - ttVar.tt;
            if (i10 != 0) {
                return i10;
            }
            int i11 = ttVar.ve - ttVar2.ve;
            if (i11 != 0) {
                return i11;
            }
            return 0;
        }
    };
    public long uj;
    public long ve;
    public ArrayList<RecyclerView> tt = new ArrayList<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<tt> f16447a = new ArrayList<>();

    @com.byazt.zqa.c(c = {0, 1, 166, 153})
    static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f16449c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16450n;
        public int tt;
        public RecyclerView uj;
        public int ve;

        public void c() {
            this.f16449c = false;
            this.tt = 0;
            this.ve = 0;
            this.uj = null;
            this.f16450n = 0;
        }
    }

    public void c(RecyclerView recyclerView) {
        this.tt.add(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.byazt.km.c.c("RV Prefetch");
            if (!this.tt.isEmpty()) {
                int size = this.tt.size();
                long jMax = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    RecyclerView recyclerView = this.tt.get(i10);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    c(TimeUnit.MILLISECONDS.toNanos(jMax) + this.uj);
                }
            }
        } finally {
            this.ve = 0L;
            com.byazt.km.c.c();
        }
    }

    public void tt(RecyclerView recyclerView) {
        this.tt.remove(recyclerView);
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 123})
    static class c implements RecyclerView.i.c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16448c;
        public int tt;
        public int uj;
        public int[] ve;

        public void c(int i10, int i11) {
            this.f16448c = i10;
            this.tt = i11;
        }

        @Override // com.byazt.kt.RecyclerView.i.c
        public void tt(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i12 = this.uj * 2;
            int[] iArr = this.ve;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.ve = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i12 >= iArr.length) {
                int[] iArr3 = new int[i12 * 2];
                this.ve = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.ve;
            iArr4[i12] = i10;
            iArr4[i12 + 1] = i11;
            this.uj++;
        }

        public void c(RecyclerView recyclerView, boolean z10) {
            this.uj = 0;
            int[] iArr = this.ve;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.i iVar = recyclerView.yp;
            if (recyclerView.f16344u == null || iVar == null || !iVar.yp()) {
                return;
            }
            if (z10) {
                if (!recyclerView.f16325a.uj()) {
                    iVar.c(recyclerView.f16344u.c(), this);
                }
            } else if (!recyclerView.rl()) {
                iVar.c(this.f16448c, this.tt, recyclerView.f16331h, this);
            }
            int i10 = this.uj;
            if (i10 > iVar.f16385m) {
                iVar.f16385m = i10;
                iVar.nu = z10;
                recyclerView.f16338n.tt();
            }
        }

        public boolean c(int i10) {
            if (this.ve != null) {
                int i11 = this.uj * 2;
                for (int i12 = 0; i12 < i11; i12 += 2) {
                    if (this.ve[i12] == i10) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void c() {
            int[] iArr = this.ve;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.uj = 0;
        }
    }

    private void tt(long j10) {
        for (int i10 = 0; i10 < this.f16447a.size(); i10++) {
            tt ttVar = this.f16447a.get(i10);
            if (ttVar.uj == null) {
                return;
            }
            c(ttVar, j10);
            ttVar.c();
        }
    }

    public void c(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow() && this.ve == 0) {
            this.ve = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.md.c(i10, i11);
    }

    private void c() {
        tt ttVar;
        int size = this.tt.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView = this.tt.get(i11);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.md.c(recyclerView, false);
                i10 += recyclerView.md.uj;
            }
        }
        this.f16447a.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView2 = this.tt.get(i13);
            if (recyclerView2.getWindowVisibility() == 0) {
                c cVar = recyclerView2.md;
                int iAbs = Math.abs(cVar.f16448c) + Math.abs(cVar.tt);
                for (int i14 = 0; i14 < cVar.uj * 2; i14 += 2) {
                    if (i12 >= this.f16447a.size()) {
                        ttVar = new tt();
                        this.f16447a.add(ttVar);
                    } else {
                        ttVar = this.f16447a.get(i12);
                    }
                    int[] iArr = cVar.ve;
                    int i15 = iArr[i14 + 1];
                    ttVar.f16449c = i15 <= iAbs;
                    ttVar.tt = iAbs;
                    ttVar.ve = i15;
                    ttVar.uj = recyclerView2;
                    ttVar.f16450n = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(this.f16447a, f16446n);
    }

    public static boolean c(RecyclerView recyclerView, int i10) {
        int iVe = recyclerView.sp.ve();
        for (int i11 = 0; i11 < iVe; i11++) {
            RecyclerView.gu guVarN = RecyclerView.n(recyclerView.sp.uj(i11));
            if (guVarN.ve == i10 && !guVarN.yp()) {
                return true;
            }
        }
        return false;
    }

    private RecyclerView.gu c(RecyclerView recyclerView, int i10, long j10) {
        if (c(recyclerView, i10)) {
            return null;
        }
        RecyclerView.m mVar = recyclerView.f16338n;
        try {
            recyclerView.t();
            RecyclerView.gu guVarC = mVar.c(i10, false, j10);
            if (guVarC != null) {
                if (guVarC.m() && !guVarC.yp()) {
                    mVar.c(guVarC.f16372c);
                } else {
                    mVar.c(guVarC, false);
                }
            }
            return guVarC;
        } finally {
            recyclerView.tt(false);
        }
    }

    private void c(RecyclerView recyclerView, long j10) {
        if (recyclerView != null) {
            if (recyclerView.gu && recyclerView.sp.ve() != 0) {
                recyclerView.ve();
            }
            c cVar = recyclerView.md;
            cVar.c(recyclerView, true);
            if (cVar.uj != 0) {
                try {
                    com.byazt.km.c.c("RV Nested Prefetch");
                    recyclerView.f16331h.c(recyclerView.f16344u);
                    for (int i10 = 0; i10 < cVar.uj * 2; i10 += 2) {
                        c(recyclerView, cVar.ve[i10], j10);
                    }
                    com.byazt.km.c.c();
                } catch (Throwable th) {
                    com.byazt.km.c.c();
                    throw th;
                }
            }
        }
    }

    private void c(tt ttVar, long j10) {
        RecyclerView.gu guVarC = c(ttVar.uj, ttVar.f16450n, ttVar.f16449c ? Long.MAX_VALUE : j10);
        if (guVarC == null || guVarC.tt == null || !guVarC.m() || guVarC.yp()) {
            return;
        }
        c(guVarC.tt.get(), j10);
    }

    public void c(long j10) {
        c();
        tt(j10);
    }
}
