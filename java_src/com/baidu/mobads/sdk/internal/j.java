package com.baidu.mobads.sdk.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.join.mgps.Util.v0;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j<T> implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7883b = "BaseTask";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f7884c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f7885d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f7886e = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static b f7887j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Future<T> f7888a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f7890g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f7891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f7892i;

    private static class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final j f7893a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final T f7894b;

        a(j jVar, T t10) {
            this.f7893a = jVar;
            this.f7894b = t10;
        }
    }

    private static class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = (a) message.obj;
            int i10 = message.what;
            if (i10 == 1) {
                aVar.f7893a.a(aVar.f7894b);
            } else if (i10 == 2) {
                aVar.f7893a.a((Throwable) aVar.f7894b);
            } else {
                if (i10 != 3) {
                    return;
                }
                aVar.f7893a.j();
            }
        }
    }

    public j() {
        this.f7889f = v0.f50057a;
    }

    private static Handler k() {
        b bVar;
        synchronized (j.class) {
            if (f7887j == null) {
                f7887j = new b(Looper.getMainLooper());
            }
            bVar = f7887j;
        }
        return bVar;
    }

    protected void a(T t10) {
    }

    public void b() {
        a(false);
    }

    public boolean c() {
        Future<T> future = this.f7888a;
        if (future != null) {
            return future.isCancelled();
        }
        return false;
    }

    public boolean d() {
        Future<T> future = this.f7888a;
        if (future != null) {
            return future.isDone();
        }
        return false;
    }

    public long e() {
        return this.f7891h - this.f7890g;
    }

    public long f() {
        return this.f7892i - this.f7890g;
    }

    public long g() {
        return this.f7892i - this.f7891h;
    }

    public j h() {
        try {
            this.f7891h = System.currentTimeMillis();
            k().obtainMessage(1, new a(this, i())).sendToTarget();
        } catch (Throwable th) {
            try {
                k().obtainMessage(2, new a(this, th)).sendToTarget();
            } finally {
                this.f7892i = System.currentTimeMillis();
            }
        }
        return this;
    }

    protected abstract T i();

    protected void j() {
    }

    @Override // java.lang.Runnable
    public void run() {
        h();
    }

    protected void a(Throwable th) {
    }

    public j(String str) {
        this.f7889f = str;
    }

    public String a() {
        return this.f7889f;
    }

    public void a(Future future) {
        this.f7888a = future;
    }

    public void a(long j10) {
        this.f7890g = j10;
    }

    public void a(boolean z10) {
        Future<T> future = this.f7888a;
        if (future != null) {
            future.cancel(z10);
            k().obtainMessage(3, new a(this, null)).sendToTarget();
        }
    }
}
