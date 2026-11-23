package bolts;

import java.io.Closeable;

/* JADX INFO: loaded from: classes7.dex */
public class d implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f428b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f431e;

    d(e eVar, Runnable runnable) {
        this.f429c = eVar;
        this.f430d = runnable;
    }

    private void d() {
        if (this.f431e) {
            throw new IllegalStateException("Object already closed");
        }
    }

    void b() {
        synchronized (this.f428b) {
            d();
            this.f430d.run();
            close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f428b) {
            if (this.f431e) {
                return;
            }
            this.f431e = true;
            this.f429c.m(this);
            this.f429c = null;
            this.f430d = null;
        }
    }
}
