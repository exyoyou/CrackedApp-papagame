package kotlinx.coroutines.scheduling;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class f extends ExecutorCoroutineDispatcher implements k, Executor {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93676h = AtomicIntegerFieldUpdater.newUpdater(f.class, "inFlightTasks$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final d f93677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f93678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final String f93679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f93680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final ConcurrentLinkedQueue<Runnable> f93681g = new ConcurrentLinkedQueue<>();
    private volatile /* synthetic */ int inFlightTasks$volatile;

    public f(@NotNull d dVar, int i10, @Nullable String str, int i11) {
        this.f93677c = dVar;
        this.f93678d = i10;
        this.f93679e = str;
        this.f93680f = i11;
    }

    private final void c0(Runnable runnable, boolean z10) {
        while (f93676h.incrementAndGet(this) > this.f93678d) {
            this.f93681g.add(runnable);
            if (f93676h.decrementAndGet(this) >= this.f93678d || (runnable = this.f93681g.poll()) == null) {
                return;
            }
        }
        this.f93677c.f0(runnable, this, z10);
    }

    private final /* synthetic */ int d0() {
        return this.inFlightTasks$volatile;
    }

    private final /* synthetic */ void f0(int i10) {
        this.inFlightTasks$volatile = i10;
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        c0(runnable, false);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        c0(runnable, true);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        c0(runnable, false);
    }

    @Override // kotlinx.coroutines.scheduling.k
    public void j() {
        Runnable runnablePoll = this.f93681g.poll();
        if (runnablePoll != null) {
            this.f93677c.f0(runnablePoll, this, true);
            return;
        }
        f93676h.decrementAndGet(this);
        Runnable runnablePoll2 = this.f93681g.poll();
        if (runnablePoll2 == null) {
            return;
        }
        c0(runnablePoll2, true);
    }

    @Override // kotlinx.coroutines.scheduling.k
    public int s() {
        return this.f93680f;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String str = this.f93679e;
        if (str != null) {
            return str;
        }
        return super.toString() + "[dispatcher = " + this.f93677c + ']';
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor z() {
        return this;
    }
}
