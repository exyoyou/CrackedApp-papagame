package com.join.mgps.base;

import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f64101c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f64102d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f64103e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f64104f = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f64105a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f64106b = false;

    private void k(b holder, boolean visible) {
        int iC = c();
        if (iC != 0) {
            holder.setGone(iC, visible);
        }
    }

    private void l(b holder, boolean visible) {
        holder.setGone(d(), visible);
    }

    private void m(b holder, boolean visible) {
        holder.setGone(f(), visible);
    }

    public void a(b holder) {
        int i10 = this.f64105a;
        if (i10 == 1) {
            m(holder, false);
            l(holder, false);
            k(holder, false);
            return;
        }
        if (i10 == 2) {
            m(holder, true);
            l(holder, false);
            k(holder, false);
        } else if (i10 == 3) {
            m(holder, false);
            l(holder, true);
            k(holder, false);
        } else {
            if (i10 != 4) {
                return;
            }
            m(holder, false);
            l(holder, false);
            k(holder, true);
        }
    }

    @LayoutRes
    public abstract int b();

    @IdRes
    protected abstract int c();

    @IdRes
    protected abstract int d();

    public int e() {
        return this.f64105a;
    }

    @IdRes
    protected abstract int f();

    @Deprecated
    public boolean g() {
        return this.f64106b;
    }

    public final boolean h() {
        if (c() == 0) {
            return true;
        }
        return this.f64106b;
    }

    public final void i(boolean loadMoreEndGone) {
        this.f64106b = loadMoreEndGone;
    }

    public void j(int loadMoreStatus) {
        this.f64105a = loadMoreStatus;
    }
}
