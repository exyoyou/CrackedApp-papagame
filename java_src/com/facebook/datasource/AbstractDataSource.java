package com.facebook.datasource;

import android.util.Pair;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class AbstractDataSource<T> implements com.facebook.datasource.c<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static volatile c f26956h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Map<String, Object> f26957a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private T f26960d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private Throwable f26961e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private float f26962f = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f26959c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private DataSourceStatus f26958b = DataSourceStatus.IN_PROGRESS;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<e<T>, Executor>> f26963g = new ConcurrentLinkedQueue<>();

    private enum DataSourceStatus {
        IN_PROGRESS,
        SUCCESS,
        FAILURE
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f26964b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ e f26965c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f26966d;

        a(final boolean val$isCancellation, final e val$dataSubscriber, final boolean val$isFailure) {
            this.f26964b = val$isCancellation;
            this.f26965c = val$dataSubscriber;
            this.f26966d = val$isFailure;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f26964b) {
                this.f26965c.c(AbstractDataSource.this);
            } else if (this.f26966d) {
                this.f26965c.a(AbstractDataSource.this);
            } else {
                this.f26965c.d(AbstractDataSource.this);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f26968b;

        b(final e val$subscriber) {
            this.f26968b = val$subscriber;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f26968b.b(AbstractDataSource.this);
        }
    }

    public interface c {
        Runnable a(Runnable runnable, String tag);
    }

    protected AbstractDataSource() {
    }

    @Nullable
    public static c h() {
        return f26956h;
    }

    private void j() {
        boolean zE = e();
        boolean zT = t();
        for (Pair<e<T>, Executor> pair : this.f26963g) {
            i((e) pair.first, (Executor) pair.second, zE, zT);
        }
    }

    public static void l(@Nullable c dataSourceInstrumenter) {
        f26956h = dataSourceInstrumenter;
    }

    private synchronized boolean p(@Nullable Throwable throwable, @Nullable Map<String, Object> extras) {
        if (!this.f26959c && this.f26958b == DataSourceStatus.IN_PROGRESS) {
            this.f26958b = DataSourceStatus.FAILURE;
            this.f26961e = throwable;
            this.f26957a = extras;
            return true;
        }
        return false;
    }

    private synchronized boolean r(float progress) {
        if (!this.f26959c && this.f26958b == DataSourceStatus.IN_PROGRESS) {
            if (progress < this.f26962f) {
                return false;
            }
            this.f26962f = progress;
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0024, code lost:
    
        if (r4 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0026, code lost:
    
        g(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x002c, code lost:
    
        if (r4 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002e, code lost:
    
        g(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0031, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean s(@javax.annotation.Nullable T r4, boolean r5) {
        /*
            r3 = this;
            r0 = 0
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L3a
            boolean r1 = r3.f26959c     // Catch: java.lang.Throwable -> L37
            if (r1 != 0) goto L2b
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r1 = r3.f26958b     // Catch: java.lang.Throwable -> L37
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r2 = com.facebook.datasource.AbstractDataSource.DataSourceStatus.IN_PROGRESS     // Catch: java.lang.Throwable -> L37
            if (r1 == r2) goto Ld
            goto L2b
        Ld:
            if (r5 == 0) goto L17
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r5 = com.facebook.datasource.AbstractDataSource.DataSourceStatus.SUCCESS     // Catch: java.lang.Throwable -> L37
            r3.f26958b = r5     // Catch: java.lang.Throwable -> L37
            r5 = 1065353216(0x3f800000, float:1.0)
            r3.f26962f = r5     // Catch: java.lang.Throwable -> L37
        L17:
            T r5 = r3.f26960d     // Catch: java.lang.Throwable -> L37
            if (r5 == r4) goto L22
            r3.f26960d = r4     // Catch: java.lang.Throwable -> L1f
            r4 = r5
            goto L23
        L1f:
            r4 = move-exception
            r0 = r5
            goto L38
        L22:
            r4 = r0
        L23:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L33
            if (r4 == 0) goto L29
            r3.g(r4)
        L29:
            r4 = 1
            return r4
        L2b:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L33
            if (r4 == 0) goto L31
            r3.g(r4)
        L31:
            r4 = 0
            return r4
        L33:
            r5 = move-exception
            r0 = r4
            r4 = r5
            goto L38
        L37:
            r4 = move-exception
        L38:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L37
            throw r4     // Catch: java.lang.Throwable -> L3a
        L3a:
            r4 = move-exception
            if (r0 == 0) goto L40
            r3.g(r0)
        L40:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.AbstractDataSource.s(java.lang.Object, boolean):boolean");
    }

    private synchronized boolean t() {
        return isClosed() && !f();
    }

    @Override // com.facebook.datasource.c
    @Nullable
    public synchronized Throwable b() {
        return this.f26961e;
    }

    @Override // com.facebook.datasource.c
    public void c(final e<T> dataSubscriber, final Executor executor) {
        com.facebook.common.internal.i.i(dataSubscriber);
        com.facebook.common.internal.i.i(executor);
        synchronized (this) {
            if (this.f26959c) {
                return;
            }
            if (this.f26958b == DataSourceStatus.IN_PROGRESS) {
                this.f26963g.add(Pair.create(dataSubscriber, executor));
            }
            boolean z10 = hasResult() || f() || t();
            if (z10) {
                i(dataSubscriber, executor, e(), t());
            }
        }
    }

    @Override // com.facebook.datasource.c
    public boolean close() {
        synchronized (this) {
            if (this.f26959c) {
                return false;
            }
            this.f26959c = true;
            T t10 = this.f26960d;
            this.f26960d = null;
            if (t10 != null) {
                g(t10);
            }
            if (!f()) {
                j();
            }
            synchronized (this) {
                this.f26963g.clear();
            }
            return true;
        }
    }

    @Override // com.facebook.datasource.c
    public boolean d() {
        return false;
    }

    @Override // com.facebook.datasource.c
    public synchronized boolean e() {
        return this.f26958b == DataSourceStatus.FAILURE;
    }

    @Override // com.facebook.datasource.c
    public synchronized boolean f() {
        return this.f26958b != DataSourceStatus.IN_PROGRESS;
    }

    protected void g(@Nullable T result) {
    }

    @Override // com.facebook.datasource.c
    @Nullable
    public Map<String, Object> getExtras() {
        return this.f26957a;
    }

    @Override // com.facebook.datasource.c
    public synchronized float getProgress() {
        return this.f26962f;
    }

    @Override // com.facebook.datasource.c
    @Nullable
    public synchronized T getResult() {
        return this.f26960d;
    }

    @Override // com.facebook.datasource.c
    public synchronized boolean hasResult() {
        return this.f26960d != null;
    }

    protected void i(final e<T> dataSubscriber, final Executor executor, final boolean isFailure, final boolean isCancellation) {
        Runnable aVar = new a(isFailure, dataSubscriber, isCancellation);
        c cVarH = h();
        if (cVarH != null) {
            aVar = cVarH.a(aVar, "AbstractDataSource_notifyDataSubscriber");
        }
        executor.execute(aVar);
    }

    @Override // com.facebook.datasource.c
    public synchronized boolean isClosed() {
        return this.f26959c;
    }

    protected void k() {
        for (Pair<e<T>, Executor> pair : this.f26963g) {
            ((Executor) pair.second).execute(new b((e) pair.first));
        }
    }

    protected void m(@Nullable Map<String, Object> extras) {
        this.f26957a = extras;
    }

    protected boolean n(Throwable throwable) {
        return o(throwable, null);
    }

    protected boolean o(@Nullable Throwable throwable, @Nullable Map<String, Object> extras) {
        boolean zP = p(throwable, extras);
        if (zP) {
            j();
        }
        return zP;
    }

    protected boolean q(float progress) {
        boolean zR = r(progress);
        if (zR) {
            k();
        }
        return zR;
    }

    protected boolean setResult(@Nullable T value, boolean isLast, @Nullable Map<String, Object> extras) {
        m(extras);
        boolean zS = s(value, isLast);
        if (zS) {
            j();
        }
        return zS;
    }

    public boolean setResult(@Nullable T value, boolean isLast) {
        return setResult(value, isLast, null);
    }
}
