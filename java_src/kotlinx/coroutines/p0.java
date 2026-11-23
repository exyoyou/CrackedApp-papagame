package kotlinx.coroutines;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"})
public final class p0 extends h1 implements Runnable {

    @Nullable
    private static volatile Thread _thread = null;
    private static volatile int debugStatus = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    public static final p0 f93618h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    public static final String f93619i = "kotlinx.coroutines.DefaultExecutor";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f93620j = 1000;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f93621k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f93622l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f93623m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f93624n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f93625o = 3;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f93626p = 4;

    static {
        Long l10;
        p0 p0Var = new p0();
        f93618h = p0Var;
        g1.i0(p0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f93621k = timeUnit.toNanos(l10.longValue());
    }

    private p0() {
    }

    private final synchronized void O0() {
        if (U0()) {
            debugStatus = 3;
            F0();
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    private final synchronized Thread P0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, f93619i);
            _thread = thread;
            thread.setContextClassLoader(p0.class.getClassLoader());
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private static /* synthetic */ void R0() {
    }

    private final boolean T0() {
        return debugStatus == 4;
    }

    private final boolean U0() {
        int i10 = debugStatus;
        return i10 == 2 || i10 == 3;
    }

    private final synchronized boolean W0() {
        if (U0()) {
            return false;
        }
        debugStatus = 1;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    private final void X0() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    public final synchronized void Q0() {
        debugStatus = 0;
        P0();
        while (debugStatus == 0) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        }
    }

    public final boolean V0() {
        return _thread != null;
    }

    public final synchronized void Y0(long j10) {
        Unit unit;
        long jCurrentTimeMillis = System.currentTimeMillis() + j10;
        if (!U0()) {
            debugStatus = 2;
        }
        while (debugStatus != 3 && _thread != null) {
            Thread thread = _thread;
            if (thread != null) {
                b bVar = c.f92358a;
                if (bVar != null) {
                    bVar.g(thread);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    LockSupport.unpark(thread);
                }
            }
            if (jCurrentTimeMillis - System.currentTimeMillis() <= 0) {
                break;
            }
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait(j10);
        }
        debugStatus = 0;
    }

    @Override // kotlinx.coroutines.h1, kotlinx.coroutines.t0
    @NotNull
    public c1 p(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return I0(j10, runnable);
    }

    @Override // kotlinx.coroutines.i1
    @NotNull
    protected Thread p0() {
        Thread thread = _thread;
        return thread == null ? P0() : thread;
    }

    @Override // kotlinx.coroutines.i1
    protected void q0(long j10, @NotNull h1.c cVar) {
        X0();
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zJ0;
        Unit unit;
        v2.f93840a.d(this);
        b bVar = c.f92358a;
        if (bVar != null) {
            bVar.d();
        }
        try {
            if (!W0()) {
                if (zJ0) {
                    return;
                } else {
                    return;
                }
            }
            long j10 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jM0 = m0();
                if (jM0 == Long.MAX_VALUE) {
                    b bVar2 = c.f92358a;
                    long jB = bVar2 != null ? bVar2.b() : System.nanoTime();
                    if (j10 == Long.MAX_VALUE) {
                        j10 = f93621k + jB;
                    }
                    long j11 = j10 - jB;
                    if (j11 <= 0) {
                        if (zJ0) {
                            return;
                        } else {
                            return;
                        }
                    }
                    jM0 = RangesKt___RangesKt.coerceAtMost(jM0, j11);
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (jM0 > 0) {
                    if (U0()) {
                        if (zJ0) {
                            return;
                        } else {
                            return;
                        }
                    }
                    b bVar3 = c.f92358a;
                    if (bVar3 != null) {
                        bVar3.c(this, jM0);
                        unit = Unit.INSTANCE;
                    } else {
                        unit = null;
                    }
                    if (unit == null) {
                        LockSupport.parkNanos(this, jM0);
                    }
                }
            }
        } finally {
            _thread = null;
            O0();
            b bVar4 = c.f92358a;
            if (bVar4 != null) {
                bVar4.h();
            }
            if (!j0()) {
                p0();
            }
        }
    }

    @Override // kotlinx.coroutines.h1, kotlinx.coroutines.g1
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // kotlinx.coroutines.h1
    public void v0(@NotNull Runnable runnable) {
        if (T0()) {
            X0();
        }
        super.v0(runnable);
    }
}
