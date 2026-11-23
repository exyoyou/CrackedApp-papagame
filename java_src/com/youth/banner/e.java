package com.youth.banner;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes8.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler.Callback f90291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f90292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Lock f90293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    final a f90294d;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        a f90295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        a f90296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        final Runnable f90297c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NonNull
        final c f90298d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @NonNull
        Lock f90299e;

        public a(@NonNull Lock lock, @NonNull Runnable runnable) {
            this.f90297c = runnable;
            this.f90299e = lock;
            this.f90298d = new c(new WeakReference(runnable), new WeakReference(this));
        }

        public void a(@NonNull a aVar) {
            this.f90299e.lock();
            try {
                a aVar2 = this.f90295a;
                if (aVar2 != null) {
                    aVar2.f90296b = aVar;
                }
                aVar.f90295a = aVar2;
                this.f90295a = aVar;
                aVar.f90296b = this;
            } finally {
                this.f90299e.unlock();
            }
        }

        public c b() {
            this.f90299e.lock();
            try {
                a aVar = this.f90296b;
                if (aVar != null) {
                    aVar.f90295a = this.f90295a;
                }
                a aVar2 = this.f90295a;
                if (aVar2 != null) {
                    aVar2.f90296b = aVar;
                }
                this.f90296b = null;
                this.f90295a = null;
                return this.f90298d;
            } finally {
                this.f90299e.unlock();
            }
        }

        @Nullable
        public c c(Runnable runnable) {
            this.f90299e.lock();
            try {
                for (a aVar = this.f90295a; aVar != null; aVar = aVar.f90295a) {
                    if (aVar.f90297c == runnable) {
                        return aVar.b();
                    }
                }
                return null;
            } finally {
                this.f90299e.unlock();
            }
        }
    }

    static class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference<Runnable> f90301b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final WeakReference<a> f90302c;

        c(WeakReference<Runnable> weakReference, WeakReference<a> weakReference2) {
            this.f90301b = weakReference;
            this.f90302c = weakReference2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f90301b.get();
            a aVar = this.f90302c.get();
            if (aVar != null) {
                aVar.b();
            }
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public e() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f90293c = reentrantLock;
        this.f90294d = new a(reentrantLock, null);
        this.f90291a = null;
        this.f90292b = new b();
    }

    private c u(@NonNull Runnable runnable) {
        if (runnable == null) {
            throw new NullPointerException("Runnable can't be null");
        }
        a aVar = new a(this.f90293c, runnable);
        this.f90294d.a(aVar);
        return aVar.f90298d;
    }

    public final Looper a() {
        return this.f90292b.getLooper();
    }

    public final boolean b(int i10) {
        return this.f90292b.hasMessages(i10);
    }

    public final boolean c(int i10, Object obj) {
        return this.f90292b.hasMessages(i10, obj);
    }

    public final boolean d(@NonNull Runnable runnable) {
        return this.f90292b.post(u(runnable));
    }

    public final boolean e(Runnable runnable) {
        return this.f90292b.postAtFrontOfQueue(u(runnable));
    }

    public final boolean f(@NonNull Runnable runnable, long j10) {
        return this.f90292b.postAtTime(u(runnable), j10);
    }

    public final boolean g(Runnable runnable, Object obj, long j10) {
        return this.f90292b.postAtTime(u(runnable), obj, j10);
    }

    public final boolean h(Runnable runnable, long j10) {
        return this.f90292b.postDelayed(u(runnable), j10);
    }

    public final void i(Runnable runnable) {
        c cVarC = this.f90294d.c(runnable);
        if (cVarC != null) {
            this.f90292b.removeCallbacks(cVarC);
        }
    }

    public final void j(Runnable runnable, Object obj) {
        c cVarC = this.f90294d.c(runnable);
        if (cVarC != null) {
            this.f90292b.removeCallbacks(cVarC, obj);
        }
    }

    public final void k(Object obj) {
        this.f90292b.removeCallbacksAndMessages(obj);
    }

    public final void l(int i10) {
        this.f90292b.removeMessages(i10);
    }

    public final void m(int i10, Object obj) {
        this.f90292b.removeMessages(i10, obj);
    }

    public final boolean n(int i10) {
        return this.f90292b.sendEmptyMessage(i10);
    }

    public final boolean o(int i10, long j10) {
        return this.f90292b.sendEmptyMessageAtTime(i10, j10);
    }

    public final boolean p(int i10, long j10) {
        return this.f90292b.sendEmptyMessageDelayed(i10, j10);
    }

    public final boolean q(Message message) {
        return this.f90292b.sendMessage(message);
    }

    public final boolean r(Message message) {
        return this.f90292b.sendMessageAtFrontOfQueue(message);
    }

    public boolean s(Message message, long j10) {
        return this.f90292b.sendMessageAtTime(message, j10);
    }

    public final boolean t(Message message, long j10) {
        return this.f90292b.sendMessageDelayed(message, j10);
    }

    private static class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<Handler.Callback> f90300a;

        b() {
            this.f90300a = null;
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            Handler.Callback callback;
            WeakReference<Handler.Callback> weakReference = this.f90300a;
            if (weakReference == null || (callback = weakReference.get()) == null) {
                return;
            }
            callback.handleMessage(message);
        }

        b(WeakReference<Handler.Callback> weakReference) {
            this.f90300a = weakReference;
        }

        b(Looper looper) {
            super(looper);
            this.f90300a = null;
        }

        b(Looper looper, WeakReference<Handler.Callback> weakReference) {
            super(looper);
            this.f90300a = weakReference;
        }
    }

    public e(@Nullable Handler.Callback callback) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f90293c = reentrantLock;
        this.f90294d = new a(reentrantLock, null);
        this.f90291a = callback;
        this.f90292b = new b((WeakReference<Handler.Callback>) new WeakReference(callback));
    }

    public e(@NonNull Looper looper) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f90293c = reentrantLock;
        this.f90294d = new a(reentrantLock, null);
        this.f90291a = null;
        this.f90292b = new b(looper);
    }

    public e(@NonNull Looper looper, @NonNull Handler.Callback callback) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f90293c = reentrantLock;
        this.f90294d = new a(reentrantLock, null);
        this.f90291a = callback;
        this.f90292b = new b(looper, new WeakReference(callback));
    }
}
