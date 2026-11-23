package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public interface t0 {

    @SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,159:1\n318#2,11:160\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n*L\n27#1:160,11\n*E\n"})
    public static final class a {
        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
        @Nullable
        public static Object a(@NotNull t0 t0Var, long j10, @NotNull Continuation<? super Unit> continuation) {
            if (j10 <= 0) {
                return Unit.INSTANCE;
            }
            o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            oVar.S();
            t0Var.m(j10, oVar);
            Object objZ = oVar.z();
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
        }

        @NotNull
        public static c1 b(@NotNull t0 t0Var, long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
            return q0.a().p(j10, runnable, coroutineContext);
        }
    }

    void m(long j10, @NotNull n<? super Unit> nVar);

    @NotNull
    c1 p(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext);

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    Object x(long j10, @NotNull Continuation<? super Unit> continuation);
}
