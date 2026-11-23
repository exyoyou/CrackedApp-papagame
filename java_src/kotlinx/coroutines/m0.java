package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class m0 {
    @NotNull
    public static final l0 a(@NotNull CoroutineContext coroutineContext) {
        if (coroutineContext.get(v1.F1) == null) {
            coroutineContext = coroutineContext.plus(JobKt__JobKt.c(null, 1, null));
        }
        return new kotlinx.coroutines.internal.i(coroutineContext);
    }

    @NotNull
    public static final l0 b() {
        return new kotlinx.coroutines.internal.i(s2.c(null, 1, null).plus(z0.e()));
    }

    public static final void c(@NotNull l0 l0Var, @NotNull String str, @Nullable Throwable th) {
        d(l0Var, l1.a(str, th));
    }

    public static final void d(@NotNull l0 l0Var, @Nullable CancellationException cancellationException) {
        v1 v1Var = (v1) l0Var.getCoroutineContext().get(v1.F1);
        if (v1Var != null) {
            v1Var.b(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + l0Var).toString());
    }

    public static /* synthetic */ void e(l0 l0Var, String str, Throwable th, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th = null;
        }
        c(l0Var, str, th);
    }

    public static /* synthetic */ void f(l0 l0Var, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        d(l0Var, cancellationException);
    }

    @Nullable
    public static final <R> Object g(@NotNull Function2<? super l0, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        kotlinx.coroutines.internal.m0 m0Var = new kotlinx.coroutines.internal.m0(continuation.get$context(), continuation);
        Object objD = bc.b.d(m0Var, m0Var, function2);
        if (objD == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objD;
    }

    @Nullable
    public static final Object h(@NotNull Continuation<? super CoroutineContext> continuation) {
        return continuation.get$context();
    }

    private static final Object i(Continuation<? super CoroutineContext> continuation) {
        InlineMarker.mark(3);
        throw null;
    }

    public static final void j(@NotNull l0 l0Var) {
        y1.z(l0Var.getCoroutineContext());
    }

    public static final boolean k(@NotNull l0 l0Var) {
        v1 v1Var = (v1) l0Var.getCoroutineContext().get(v1.F1);
        if (v1Var != null) {
            return v1Var.isActive();
        }
        return true;
    }

    public static /* synthetic */ void l(l0 l0Var) {
    }

    @NotNull
    public static final l0 m(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext) {
        return new kotlinx.coroutines.internal.i(l0Var.getCoroutineContext().plus(coroutineContext));
    }
}
