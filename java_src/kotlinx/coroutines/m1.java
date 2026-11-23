package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class m1 extends ExecutorCoroutineDispatcher implements t0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final Executor f93592c;

    public m1(@NotNull Executor executor) {
        this.f93592c = executor;
        kotlinx.coroutines.internal.e.d(z());
    }

    private final void c0(CoroutineContext coroutineContext, RejectedExecutionException rejectedExecutionException) {
        y1.f(coroutineContext, l1.a("The task was rejected", rejectedExecutionException));
    }

    private final ScheduledFuture<?> d0(ScheduledExecutorService scheduledExecutorService, Runnable runnable, CoroutineContext coroutineContext, long j10) {
        try {
            return scheduledExecutorService.schedule(runnable, j10, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            c0(coroutineContext, e10);
            return null;
        }
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor executorZ = z();
        ExecutorService executorService = executorZ instanceof ExecutorService ? (ExecutorService) executorZ : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        Runnable runnableI;
        try {
            Executor executorZ = z();
            b bVar = c.f92358a;
            if (bVar == null || (runnableI = bVar.i(runnable)) == null) {
                runnableI = runnable;
            }
            executorZ.execute(runnableI);
        } catch (RejectedExecutionException e10) {
            b bVar2 = c.f92358a;
            if (bVar2 != null) {
                bVar2.f();
            }
            c0(coroutineContext, e10);
            z0.c().dispatch(coroutineContext, runnable);
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof m1) && ((m1) obj).z() == z();
    }

    public int hashCode() {
        return System.identityHashCode(z());
    }

    @Override // kotlinx.coroutines.t0
    public void m(long j10, @NotNull n<? super Unit> nVar) {
        Executor executorZ = z();
        ScheduledExecutorService scheduledExecutorService = executorZ instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorZ : null;
        ScheduledFuture<?> scheduledFutureD0 = scheduledExecutorService != null ? d0(scheduledExecutorService, new m2(this, nVar), nVar.get$context(), j10) : null;
        if (scheduledFutureD0 != null) {
            y1.w(nVar, scheduledFutureD0);
        } else {
            p0.f93618h.m(j10, nVar);
        }
    }

    @Override // kotlinx.coroutines.t0
    @NotNull
    public c1 p(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        Executor executorZ = z();
        ScheduledExecutorService scheduledExecutorService = executorZ instanceof ScheduledExecutorService ? (ScheduledExecutorService) executorZ : null;
        ScheduledFuture<?> scheduledFutureD0 = scheduledExecutorService != null ? d0(scheduledExecutorService, runnable, coroutineContext, j10) : null;
        return scheduledFutureD0 != null ? new b1(scheduledFutureD0) : p0.f93618h.p(j10, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return z().toString();
    }

    @Override // kotlinx.coroutines.t0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object x(long j10, @NotNull Continuation<? super Unit> continuation) {
        return t0.a.a(this, j10, continuation);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor z() {
        return this.f93592c;
    }
}
