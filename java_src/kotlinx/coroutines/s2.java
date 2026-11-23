package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class s2 {
    @NotNull
    public static final z a(@Nullable v1 v1Var) {
        return new r2(v1Var);
    }

    public static /* synthetic */ z c(v1 v1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            v1Var = null;
        }
        return a(v1Var);
    }

    public static /* synthetic */ v1 d(v1 v1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            v1Var = null;
        }
        return a(v1Var);
    }

    @Nullable
    public static final <R> Object e(@NotNull Function2<? super l0, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        q2 q2Var = new q2(continuation.get$context(), continuation);
        Object objD = bc.b.d(q2Var, q2Var, function2);
        if (objD == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objD;
    }
}
