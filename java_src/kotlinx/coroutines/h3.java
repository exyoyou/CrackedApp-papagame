package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class h3 {
    @Nullable
    public static final Object a(@NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        CoroutineContext coroutineContext = continuation.get$context();
        y1.z(coroutineContext);
        Continuation continuationIntercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.internal.m mVar = continuationIntercepted instanceof kotlinx.coroutines.internal.m ? (kotlinx.coroutines.internal.m) continuationIntercepted : null;
        if (mVar == null) {
            coroutine_suspended = Unit.INSTANCE;
        } else {
            if (mVar.f93508e.isDispatchNeeded(coroutineContext)) {
                mVar.n(coroutineContext, Unit.INSTANCE);
            } else {
                g3 g3Var = new g3();
                CoroutineContext coroutineContextPlus = coroutineContext.plus(g3Var);
                Unit unit = Unit.INSTANCE;
                mVar.n(coroutineContextPlus, unit);
                coroutine_suspended = (!g3Var.f93438b || kotlinx.coroutines.internal.n.f(mVar)) ? IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() : unit;
            }
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (coroutine_suspended == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return coroutine_suspended == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutine_suspended : Unit.INSTANCE;
    }
}
