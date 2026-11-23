package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,130:1\n62#1,8:131\n62#1,8:139\n24#2,4:147\n24#2,4:152\n16#3:151\n16#3:156\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n44#1:131,8\n51#1:139,8\n75#1:147,4\n88#1:152,4\n75#1:151\n88#1:156\n*E\n"})
public final class s extends CoroutineDispatcher implements kotlinx.coroutines.t0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93528g = AtomicIntegerFieldUpdater.newUpdater(s.class, "runningWorkers$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final CoroutineDispatcher f93529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f93530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ kotlinx.coroutines.t0 f93531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final y<Runnable> f93532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Object f93533f;
    private volatile /* synthetic */ int runningWorkers$volatile;

    private final class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private Runnable f93534b;

        public a(Runnable runnable) {
            this.f93534b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = 0;
            while (true) {
                try {
                    this.f93534b.run();
                } catch (Throwable th) {
                    kotlinx.coroutines.i0.b(EmptyCoroutineContext.INSTANCE, th);
                }
                Runnable runnableG0 = s.this.g0();
                if (runnableG0 == null) {
                    return;
                }
                this.f93534b = runnableG0;
                i10++;
                if (i10 >= 16 && s.this.f93529b.isDispatchNeeded(s.this)) {
                    s.this.f93529b.dispatch(s.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s(@NotNull CoroutineDispatcher coroutineDispatcher, int i10) {
        this.f93529b = coroutineDispatcher;
        this.f93530c = i10;
        kotlinx.coroutines.t0 t0Var = coroutineDispatcher instanceof kotlinx.coroutines.t0 ? (kotlinx.coroutines.t0) coroutineDispatcher : null;
        this.f93531d = t0Var == null ? kotlinx.coroutines.q0.a() : t0Var;
        this.f93532e = new y<>(false);
        this.f93533f = new Object();
    }

    private final void d0(Runnable runnable, Function1<? super a, Unit> function1) {
        Runnable runnableG0;
        this.f93532e.a(runnable);
        if (f93528g.get(this) < this.f93530c && j0() && (runnableG0 = g0()) != null) {
            function1.invoke(new a(runnableG0));
        }
    }

    private final /* synthetic */ int e0() {
        return this.runningWorkers$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable g0() {
        while (true) {
            Runnable runnableJ = this.f93532e.j();
            if (runnableJ != null) {
                return runnableJ;
            }
            synchronized (this.f93533f) {
                f93528g.decrementAndGet(this);
                if (this.f93532e.c() == 0) {
                    return null;
                }
                f93528g.incrementAndGet(this);
            }
        }
    }

    private final /* synthetic */ void i0(int i10) {
        this.runningWorkers$volatile = i10;
    }

    private final boolean j0() {
        synchronized (this.f93533f) {
            if (f93528g.get(this) >= this.f93530c) {
                return false;
            }
            f93528g.incrementAndGet(this);
            return true;
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        Runnable runnableG0;
        this.f93532e.a(runnable);
        if (f93528g.get(this) >= this.f93530c || !j0() || (runnableG0 = g0()) == null) {
            return;
        }
        this.f93529b.dispatch(this, new a(runnableG0));
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @InternalCoroutinesApi
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        Runnable runnableG0;
        this.f93532e.a(runnable);
        if (f93528g.get(this) >= this.f93530c || !j0() || (runnableG0 = g0()) == null) {
            return;
        }
        this.f93529b.dispatchYield(this, new a(runnableG0));
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @ExperimentalCoroutinesApi
    @NotNull
    public CoroutineDispatcher limitedParallelism(int i10) {
        t.a(i10);
        return i10 >= this.f93530c ? this : super.limitedParallelism(i10);
    }

    @Override // kotlinx.coroutines.t0
    public void m(long j10, @NotNull kotlinx.coroutines.n<? super Unit> nVar) {
        this.f93531d.m(j10, nVar);
    }

    @Override // kotlinx.coroutines.t0
    @NotNull
    public kotlinx.coroutines.c1 p(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return this.f93531d.p(j10, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.t0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object x(long j10, @NotNull Continuation<? super Unit> continuation) {
        return this.f93531d.x(j10, continuation);
    }
}
