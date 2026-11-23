package cn.fly.tools.b;

import android.content.Context;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f1851a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Context f1852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile a f1853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile a f1854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile a f1855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f1856f = new AtomicBoolean(false);

    public static c a(Context context) {
        if (f1851a.f1852b == null && context != null) {
            f1851a.f1852b = context.getApplicationContext();
        }
        return f1851a;
    }

    public void b() {
        if (this.f1856f.compareAndSet(false, true)) {
            d();
            c();
            e.a(this.f1852b);
        }
    }

    public a c() {
        if (this.f1853c == null) {
            this.f1853c = new k(this.f1852b);
        }
        return this.f1853c;
    }

    public a d() {
        if (this.f1854d == null) {
            this.f1854d = new g(this.f1852b);
        }
        return this.f1854d;
    }

    public a e() {
        return this.f1855e == null ? c() : this.f1855e;
    }

    public CountDownLatch a() {
        b();
        return d.a(this.f1852b).a();
    }

    public boolean a(a aVar) {
        this.f1855e = aVar;
        return true;
    }
}
