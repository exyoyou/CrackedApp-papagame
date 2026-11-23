package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes7.dex */
public class e1<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Executor f5639e = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<y0<T>> f5640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<y0<Throwable>> f5641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f5642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private volatile c1<T> f5643d;

    private class a extends FutureTask<c1<T>> {
        a(Callable<c1<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (isCancelled()) {
                return;
            }
            try {
                e1.this.setResult(get());
            } catch (InterruptedException | ExecutionException e10) {
                e1.this.setResult(new c1(e10));
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public e1(Callable<c1<T>> callable) {
        this(callable, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        c1<T> c1Var = this.f5643d;
        if (c1Var == null) {
            return;
        }
        if (c1Var.b() != null) {
            h(c1Var.b());
        } else {
            f(c1Var.a());
        }
    }

    private synchronized void f(Throwable th) {
        ArrayList arrayList = new ArrayList(this.f5641b);
        if (arrayList.isEmpty()) {
            com.airbnb.lottie.utils.f.f("Lottie encountered an error but no failure listener was added:", th);
            return;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((y0) it2.next()).onResult(th);
        }
    }

    private void g() {
        this.f5642c.post(new Runnable() { // from class: com.airbnb.lottie.d1
            @Override // java.lang.Runnable
            public final void run() {
                this.f5611b.e();
            }
        });
    }

    private synchronized void h(T t10) {
        Iterator it2 = new ArrayList(this.f5640a).iterator();
        while (it2.hasNext()) {
            ((y0) it2.next()).onResult(t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResult(@Nullable c1<T> c1Var) {
        if (this.f5643d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f5643d = c1Var;
        g();
    }

    public synchronized e1<T> c(y0<Throwable> y0Var) {
        c1<T> c1Var = this.f5643d;
        if (c1Var != null && c1Var.a() != null) {
            y0Var.onResult(c1Var.a());
        }
        this.f5641b.add(y0Var);
        return this;
    }

    public synchronized e1<T> d(y0<T> y0Var) {
        c1<T> c1Var = this.f5643d;
        if (c1Var != null && c1Var.b() != null) {
            y0Var.onResult(c1Var.b());
        }
        this.f5640a.add(y0Var);
        return this;
    }

    public synchronized e1<T> i(y0<Throwable> y0Var) {
        this.f5641b.remove(y0Var);
        return this;
    }

    public synchronized e1<T> j(y0<T> y0Var) {
        this.f5640a.remove(y0Var);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    e1(Callable<c1<T>> callable, boolean z10) {
        this.f5640a = new LinkedHashSet(1);
        this.f5641b = new LinkedHashSet(1);
        this.f5642c = new Handler(Looper.getMainLooper());
        this.f5643d = null;
        if (!z10) {
            f5639e.execute(new a(callable));
            return;
        }
        try {
            setResult(callable.call());
        } catch (Throwable th) {
            setResult(new c1<>(th));
        }
    }
}
