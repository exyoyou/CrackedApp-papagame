package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BlockingCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
final class f<T> extends a<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Thread f92804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final g1 f92805f;

    public f(@NotNull CoroutineContext coroutineContext, @NotNull Thread thread, @Nullable g1 g1Var) {
        super(coroutineContext, true, true);
        this.f92804e = thread;
        this.f92805f = g1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T K1() throws Throwable {
        Unit unit;
        b bVar = c.f92358a;
        if (bVar != null) {
            bVar.d();
        }
        try {
            g1 g1Var = this.f92805f;
            if (g1Var != null) {
                g1.i0(g1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    g1 g1Var2 = this.f92805f;
                    long jM0 = g1Var2 != null ? g1Var2.m0() : Long.MAX_VALUE;
                    if (isCompleted()) {
                        g1 g1Var3 = this.f92805f;
                        if (g1Var3 != null) {
                            g1.c0(g1Var3, false, 1, null);
                        }
                        b bVar2 = c.f92358a;
                        if (bVar2 != null) {
                            bVar2.h();
                        }
                        T t10 = (T) b2.h(J0());
                        b0 b0Var = t10 instanceof b0 ? (b0) t10 : null;
                        if (b0Var == null) {
                            return t10;
                        }
                        throw b0Var.f92345a;
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
                } catch (Throwable th) {
                    g1 g1Var4 = this.f92805f;
                    if (g1Var4 != null) {
                        g1.c0(g1Var4, false, 1, null);
                    }
                    throw th;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            j0(interruptedException);
            throw interruptedException;
        } catch (Throwable th2) {
            b bVar4 = c.f92358a;
            if (bVar4 != null) {
                bVar4.h();
            }
            throw th2;
        }
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean V0() {
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void g0(@Nullable Object obj) {
        Unit unit;
        if (Intrinsics.areEqual(Thread.currentThread(), this.f92804e)) {
            return;
        }
        Thread thread = this.f92804e;
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
}
