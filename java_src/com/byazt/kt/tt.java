package com.byazt.kt;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC0363tt f16440c;
    public final c tt = new c();
    public final List<View> ve = new ArrayList();

    /* JADX INFO: renamed from: com.byazt.kt.tt$tt, reason: collision with other inner class name */
    interface InterfaceC0363tt {
        int c();

        int c(View view);

        void c(int i10);

        void c(View view, int i10);

        void c(View view, int i10, ViewGroup.LayoutParams layoutParams);

        View tt(int i10);

        RecyclerView.gu tt(View view);

        void tt();

        void uj(View view);

        void ve(int i10);

        void ve(View view);
    }

    public tt(InterfaceC0363tt interfaceC0363tt) {
        this.f16440c = interfaceC0363tt;
    }

    private int a(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int iC = this.f16440c.c();
        int i11 = i10;
        while (i11 < iC) {
            int iN = i10 - (i11 - this.tt.n(i11));
            if (iN == 0) {
                while (this.tt.ve(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += iN;
        }
        return -1;
    }

    private void sp(View view) {
        this.ve.add(view);
        this.f16440c.ve(view);
    }

    private boolean x(View view) {
        if (!this.ve.remove(view)) {
            return false;
        }
        this.f16440c.uj(view);
        return true;
    }

    public void c(View view, boolean z10) {
        c(view, -1, z10);
    }

    public void n(int i10) {
        int iA = a(i10);
        this.tt.uj(iA);
        this.f16440c.ve(iA);
    }

    public String toString() {
        return this.tt.toString() + ", hidden list:" + this.ve.size();
    }

    public View tt(int i10) {
        return this.f16440c.tt(a(i10));
    }

    public View uj(int i10) {
        return this.f16440c.tt(i10);
    }

    public View ve(int i10) {
        int size = this.ve.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view = this.ve.get(i11);
            RecyclerView.gu guVarTt = this.f16440c.tt(view);
            if (guVarTt.uj() == i10 && !guVarTt.yp() && !guVarTt.nu()) {
                return view;
            }
        }
        return null;
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 194})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f16441c = 0;
        public c tt;

        private void tt() {
            if (this.tt == null) {
                this.tt = new c();
            }
        }

        public void c(int i10) {
            if (i10 < 64) {
                this.f16441c |= 1 << i10;
            } else {
                tt();
                this.tt.c(i10 - 64);
            }
        }

        public void insert(int i10, boolean z10) {
            if (i10 >= 64) {
                tt();
                this.tt.insert(i10 - 64, z10);
                return;
            }
            long j10 = this.f16441c;
            boolean z11 = (Long.MIN_VALUE & j10) != 0;
            long j11 = (1 << i10) - 1;
            this.f16441c = ((j10 & (~j11)) << 1) | (j10 & j11);
            if (z10) {
                c(i10);
            } else {
                tt(i10);
            }
            if (z11 || this.tt != null) {
                tt();
                this.tt.insert(0, z11);
            }
        }

        public int n(int i10) {
            c cVar = this.tt;
            if (cVar == null) {
                return i10 >= 64 ? Long.bitCount(this.f16441c) : Long.bitCount(this.f16441c & ((1 << i10) - 1));
            }
            return i10 < 64 ? Long.bitCount(this.f16441c & ((1 << i10) - 1)) : cVar.n(i10 - 64) + Long.bitCount(this.f16441c);
        }

        public String toString() {
            if (this.tt == null) {
                return Long.toBinaryString(this.f16441c);
            }
            return this.tt.toString() + "xx" + Long.toBinaryString(this.f16441c);
        }

        public boolean uj(int i10) {
            if (i10 >= 64) {
                tt();
                return this.tt.uj(i10 - 64);
            }
            long j10 = 1 << i10;
            long j11 = this.f16441c;
            boolean z10 = (j11 & j10) != 0;
            long j12 = j11 & (~j10);
            this.f16441c = j12;
            long j13 = j10 - 1;
            this.f16441c = (j12 & j13) | Long.rotateRight((~j13) & j12, 1);
            c cVar = this.tt;
            if (cVar != null) {
                if (cVar.ve(0)) {
                    c(63);
                }
                this.tt.uj(0);
            }
            return z10;
        }

        public boolean ve(int i10) {
            if (i10 < 64) {
                return (this.f16441c & (1 << i10)) != 0;
            }
            tt();
            return this.tt.ve(i10 - 64);
        }

        public void tt(int i10) {
            if (i10 >= 64) {
                c cVar = this.tt;
                if (cVar != null) {
                    cVar.tt(i10 - 64);
                    return;
                }
                return;
            }
            this.f16441c &= ~(1 << i10);
        }

        public void c() {
            this.f16441c = 0L;
            c cVar = this.tt;
            if (cVar != null) {
                cVar.c();
            }
        }
    }

    public void c(View view, int i10, boolean z10) {
        int iC = i10 < 0 ? this.f16440c.c() : a(i10);
        this.tt.insert(iC, z10);
        if (z10) {
            sp(view);
        }
        this.f16440c.c(view, iC);
    }

    public void uj(View view) {
        int iC = this.f16440c.c(view);
        if (iC < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
        }
        this.tt.c(iC);
        sp(view);
    }

    public int tt() {
        return this.f16440c.c() - this.ve.size();
    }

    public boolean a(View view) {
        int iC = this.f16440c.c(view);
        if (iC == -1) {
            x(view);
            return true;
        }
        if (!this.tt.ve(iC)) {
            return false;
        }
        this.tt.uj(iC);
        x(view);
        this.f16440c.c(iC);
        return true;
    }

    public void n(View view) {
        int iC = this.f16440c.c(view);
        if (iC >= 0) {
            if (this.tt.ve(iC)) {
                this.tt.tt(iC);
                x(view);
                return;
            }
            throw new RuntimeException("trying to unhide a view that was not hidden".concat(String.valueOf(view)));
        }
        throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
    }

    public int tt(View view) {
        int iC = this.f16440c.c(view);
        if (iC == -1 || this.tt.ve(iC)) {
            return -1;
        }
        return iC - this.tt.n(iC);
    }

    public int ve() {
        return this.f16440c.c();
    }

    public boolean ve(View view) {
        return this.ve.contains(view);
    }

    public void c(View view) {
        int iC = this.f16440c.c(view);
        if (iC >= 0) {
            if (this.tt.uj(iC)) {
                x(view);
            }
            this.f16440c.c(iC);
        }
    }

    public void c(int i10) {
        int iA = a(i10);
        View viewTt = this.f16440c.tt(iA);
        if (viewTt != null) {
            if (this.tt.uj(iA)) {
                x(viewTt);
            }
            this.f16440c.c(iA);
        }
    }

    public void c() {
        this.tt.c();
        for (int size = this.ve.size() - 1; size >= 0; size--) {
            this.f16440c.uj(this.ve.get(size));
            this.ve.remove(size);
        }
        this.f16440c.tt();
    }

    public void c(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int iA;
        if (i10 < 0) {
            iA = this.f16440c.c();
        } else {
            iA = a(i10);
        }
        this.tt.insert(iA, z10);
        if (z10) {
            sp(view);
        }
        this.f16440c.c(view, iA, layoutParams);
    }
}
