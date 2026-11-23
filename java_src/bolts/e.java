package bolts;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class e implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f432b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<d> f433c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScheduledExecutorService f434d = b.d();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScheduledFuture<?> f435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f436f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f437g;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (e.this.f432b) {
                e.this.f435e = null;
            }
            e.this.cancel();
        }
    }

    private void e(long j10, TimeUnit timeUnit) {
        if (j10 < -1) {
            throw new IllegalArgumentException("Delay must be >= -1");
        }
        if (j10 == 0) {
            cancel();
            return;
        }
        synchronized (this.f432b) {
            if (this.f436f) {
                return;
            }
            f();
            if (j10 != -1) {
                this.f435e = this.f434d.schedule(new a(), j10, timeUnit);
            }
        }
    }

    private void f() {
        ScheduledFuture<?> scheduledFuture = this.f435e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f435e = null;
        }
    }

    private void i(List<d> list) {
        Iterator<d> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
    }

    private void l() {
        if (this.f437g) {
            throw new IllegalStateException("Object already closed");
        }
    }

    public void cancel() {
        synchronized (this.f432b) {
            l();
            if (this.f436f) {
                return;
            }
            f();
            this.f436f = true;
            i(new ArrayList(this.f433c));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f432b) {
            if (this.f437g) {
                return;
            }
            f();
            Iterator<d> it2 = this.f433c.iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
            this.f433c.clear();
            this.f437g = true;
        }
    }

    public void d(long j10) {
        e(j10, TimeUnit.MILLISECONDS);
    }

    public c g() {
        c cVar;
        synchronized (this.f432b) {
            l();
            cVar = new c(this);
        }
        return cVar;
    }

    public boolean h() {
        boolean z10;
        synchronized (this.f432b) {
            l();
            z10 = this.f436f;
        }
        return z10;
    }

    d j(Runnable runnable) {
        d dVar;
        synchronized (this.f432b) {
            l();
            dVar = new d(this, runnable);
            if (this.f436f) {
                dVar.b();
            } else {
                this.f433c.add(dVar);
            }
        }
        return dVar;
    }

    void k() throws CancellationException {
        synchronized (this.f432b) {
            l();
            if (this.f436f) {
                throw new CancellationException();
            }
        }
    }

    void m(d dVar) {
        synchronized (this.f432b) {
            l();
            this.f433c.remove(dVar);
        }
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(h()));
    }
}
