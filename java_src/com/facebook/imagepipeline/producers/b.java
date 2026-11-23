package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class b<T> implements Consumer<T> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28313g = false;

    public static boolean d(int status) {
        return (status & 1) == 1;
    }

    public static boolean e(int status) {
        return !d(status);
    }

    public static int k(boolean z10) {
        return z10 ? 1 : 0;
    }

    public static boolean l(int status, int flag) {
        return (status & flag) != 0;
    }

    public static boolean m(int status, int flag) {
        return (status & flag) == flag;
    }

    public static int n(int status, int flag) {
        return status & (~flag);
    }

    public static int o(int status, int flag) {
        return status | flag;
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void a() {
        if (this.f28313g) {
            return;
        }
        this.f28313g = true;
        try {
            f();
        } catch (Exception e10) {
            j(e10);
        }
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void b(@Nullable T newResult, int status) {
        if (this.f28313g) {
            return;
        }
        this.f28313g = d(status);
        try {
            h(newResult, status);
        } catch (Exception e10) {
            j(e10);
        }
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void c(float progress) {
        if (this.f28313g) {
            return;
        }
        try {
            i(progress);
        } catch (Exception e10) {
            j(e10);
        }
    }

    protected abstract void f();

    protected abstract void g(Throwable t10);

    protected abstract void h(@Nullable T newResult, int status);

    protected void i(float progress) {
    }

    protected void j(Exception e10) {
        i3.a.t0(getClass(), "unhandled exception", e10);
    }

    @Override // com.facebook.imagepipeline.producers.Consumer
    public synchronized void onFailure(Throwable t10) {
        if (this.f28313g) {
            return;
        }
        this.f28313g = true;
        try {
            g(t10);
        } catch (Exception e10) {
            j(e10);
        }
    }
}
