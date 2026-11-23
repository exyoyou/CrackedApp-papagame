package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class y1 {
    public static final void A(@NotNull v1 v1Var) {
        JobKt__JobKt.y(v1Var);
    }

    @NotNull
    public static final v1 B(@NotNull CoroutineContext coroutineContext) {
        return JobKt__JobKt.z(coroutineContext);
    }

    @NotNull
    public static final c1 C(@NotNull v1 v1Var, boolean z10, boolean z11, @NotNull s1 s1Var) {
        return JobKt__JobKt.A(v1Var, z10, z11, s1Var);
    }

    public static final boolean E(@NotNull CoroutineContext coroutineContext) {
        return JobKt__JobKt.C(coroutineContext);
    }

    @NotNull
    public static final z a(@Nullable v1 v1Var) {
        return JobKt__JobKt.a(v1Var);
    }

    public static final void f(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        JobKt__JobKt.f(coroutineContext, cancellationException);
    }

    public static final void g(@NotNull v1 v1Var, @NotNull String str, @Nullable Throwable th) {
        JobKt__JobKt.g(v1Var, str, th);
    }

    @Nullable
    public static final Object l(@NotNull v1 v1Var, @NotNull Continuation<? super Unit> continuation) {
        return JobKt__JobKt.l(v1Var, continuation);
    }

    public static final void o(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        JobKt__JobKt.o(coroutineContext, cancellationException);
    }

    public static final void r(@NotNull v1 v1Var, @Nullable CancellationException cancellationException) {
        JobKt__JobKt.r(v1Var, cancellationException);
    }

    public static final void w(@NotNull n<?> nVar, @NotNull Future<?> future) {
        z1.a(nVar, future);
    }

    @InternalCoroutinesApi
    @NotNull
    public static final c1 x(@NotNull v1 v1Var, @NotNull Future<?> future) {
        return z1.b(v1Var, future);
    }

    @NotNull
    public static final c1 y(@NotNull v1 v1Var, @NotNull c1 c1Var) {
        return JobKt__JobKt.w(v1Var, c1Var);
    }

    public static final void z(@NotNull CoroutineContext coroutineContext) {
        JobKt__JobKt.x(coroutineContext);
    }
}
