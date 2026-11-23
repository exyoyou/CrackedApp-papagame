package com.byazt.fq;

import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1576, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewParent f14230c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f14231n;
    public ViewParent tt;
    public boolean uj;
    public final View ve;

    public uj(View view) {
        this.ve = view;
    }

    private ViewParent uj(int i10) {
        if (i10 == 0) {
            return this.f14230c;
        }
        if (i10 != 1) {
            return null;
        }
        return this.tt;
    }

    public void c(boolean z10) {
        if (this.uj) {
            sp.da(this.ve);
        }
        this.uj = z10;
    }

    public boolean tt() {
        return c(0);
    }

    public void ve() {
        ve(0);
    }

    public boolean tt(int i10) {
        return c(i10, 0);
    }

    public void ve(int i10) {
        ViewParent viewParentUj = uj(i10);
        if (viewParentUj != null) {
            x.c(viewParentUj, this.ve, i10);
            c(i10, (ViewParent) null);
        }
    }

    public boolean c() {
        return this.uj;
    }

    public boolean c(int i10) {
        return uj(i10) != null;
    }

    public boolean c(int i10, int i11) {
        if (c(i11)) {
            return true;
        }
        if (!c()) {
            return false;
        }
        View view = this.ve;
        for (ViewParent parent = this.ve.getParent(); parent != null; parent = parent.getParent()) {
            if (x.c(parent, view, this.ve, i10, i11)) {
                c(i11, parent);
                x.tt(parent, view, this.ve, i10, i11);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public boolean c(int i10, int i11, int i12, int i13, int[] iArr) {
        return c(i10, i11, i12, i13, iArr, 0);
    }

    public boolean c(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        ViewParent viewParentUj;
        int i15;
        int i16;
        if (!c() || (viewParentUj = uj(i14)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.ve.getLocationInWindow(iArr);
            i15 = iArr[0];
            i16 = iArr[1];
        } else {
            i15 = 0;
            i16 = 0;
        }
        x.c(viewParentUj, this.ve, i10, i11, i12, i13, i14);
        if (iArr != null) {
            this.ve.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i15;
            iArr[1] = iArr[1] - i16;
        }
        return true;
    }

    public boolean c(int i10, int i11, int[] iArr, int[] iArr2) {
        return c(i10, i11, iArr, iArr2, 0);
    }

    public boolean c(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        ViewParent viewParentUj;
        int i13;
        int i14;
        if (!c() || (viewParentUj = uj(i12)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            return false;
        }
        if (iArr2 != null) {
            this.ve.getLocationInWindow(iArr2);
            i13 = iArr2[0];
            i14 = iArr2[1];
        } else {
            i13 = 0;
            i14 = 0;
        }
        if (iArr == null) {
            if (this.f14231n == null) {
                this.f14231n = new int[2];
            }
            iArr = this.f14231n;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        x.c(viewParentUj, this.ve, i10, i11, iArr, i12);
        if (iArr2 != null) {
            this.ve.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i13;
            iArr2[1] = iArr2[1] - i14;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean c(float f10, float f11, boolean z10) {
        ViewParent viewParentUj;
        if (!c() || (viewParentUj = uj(0)) == null) {
            return false;
        }
        return x.c(viewParentUj, this.ve, f10, f11, z10);
    }

    public boolean c(float f10, float f11) {
        ViewParent viewParentUj;
        if (!c() || (viewParentUj = uj(0)) == null) {
            return false;
        }
        return x.c(viewParentUj, this.ve, f10, f11);
    }

    private void c(int i10, ViewParent viewParent) {
        if (i10 == 0) {
            this.f14230c = viewParent;
        } else {
            if (i10 != 1) {
                return;
            }
            this.tt = viewParent;
        }
    }
}
