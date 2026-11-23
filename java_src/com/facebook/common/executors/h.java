package com.facebook.common.executors;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class h<T> implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final int f26867c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final int f26868d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final int f26869e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final int f26870f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected static final int f26871g = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final AtomicInteger f26872b = new AtomicInteger(0);

    public void a() {
        if (this.f26872b.compareAndSet(0, 2)) {
            d();
        }
    }

    protected void b(@Nullable T result) {
    }

    @Nullable
    protected abstract T c() throws Exception;

    protected void d() {
    }

    protected void e(Exception e10) {
    }

    protected void g(@Nullable T result) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f26872b.compareAndSet(0, 1)) {
            try {
                T tC = c();
                this.f26872b.set(3);
                try {
                    g(tC);
                } finally {
                    b(tC);
                }
            } catch (Exception e10) {
                this.f26872b.set(4);
                e(e10);
            }
        }
    }
}
