package kotlinx.coroutines;

import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,159:1\n318#2,11:160\n318#2,11:171\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n103#1:160,11\n123#1:171,11\n*E\n"})
public final class DelayKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object a(@NotNull Continuation<?> continuation) {
        DelayKt$awaitCancellation$1 delayKt$awaitCancellation$1;
        if (continuation instanceof DelayKt$awaitCancellation$1) {
            delayKt$awaitCancellation$1 = (DelayKt$awaitCancellation$1) continuation;
            int i10 = delayKt$awaitCancellation$1.f92278c;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                delayKt$awaitCancellation$1.f92278c = i10 - Integer.MIN_VALUE;
            } else {
                delayKt$awaitCancellation$1 = new DelayKt$awaitCancellation$1(continuation);
            }
        } else {
            delayKt$awaitCancellation$1 = new DelayKt$awaitCancellation$1(continuation);
        }
        Object obj = delayKt$awaitCancellation$1.f92277b;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = delayKt$awaitCancellation$1.f92278c;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            delayKt$awaitCancellation$1.f92278c = 1;
            o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(delayKt$awaitCancellation$1), 1);
            oVar.S();
            Object objZ = oVar.z();
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(delayKt$awaitCancellation$1);
            }
            if (objZ == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    @Nullable
    public static final Object b(long j10, @NotNull Continuation<? super Unit> continuation) {
        if (j10 <= 0) {
            return Unit.INSTANCE;
        }
        o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        if (j10 < Long.MAX_VALUE) {
            d(oVar.getContext()).m(j10, oVar);
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
    }

    @Nullable
    public static final Object c(long j10, @NotNull Continuation<? super Unit> continuation) {
        Object objB = b(e(j10), continuation);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }

    @NotNull
    public static final t0 d(@NotNull CoroutineContext coroutineContext) {
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.INSTANCE);
        t0 t0Var = element instanceof t0 ? (t0) element : null;
        return t0Var == null ? q0.a() : t0Var;
    }

    public static final long e(long j10) {
        boolean zM1415isPositiveimpl = Duration.m1415isPositiveimpl(j10);
        if (zM1415isPositiveimpl) {
            Duration.Companion companion = Duration.INSTANCE;
            return Duration.m1399getInWholeMillisecondsimpl(Duration.m1417plusLRDsOJo(j10, DurationKt.toDuration(999999L, DurationUnit.NANOSECONDS)));
        }
        if (zM1415isPositiveimpl) {
            throw new NoWhenBranchMatchedException();
        }
        return 0L;
    }
}
