package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class TimeoutKt {
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Instruction removed from duplicated block: B:9:0x0018, please report this as an issue */
    @NotNull
    public static final TimeoutCancellationException a(long j10, @NotNull t0 t0Var, @NotNull v1 v1Var) {
        String strI;
        u0 u0Var = t0Var instanceof u0 ? (u0) t0Var : null;
        if (u0Var != null) {
            Duration.Companion companion = Duration.INSTANCE;
            strI = u0Var.i(DurationKt.toDuration(j10, DurationUnit.MILLISECONDS));
            if (strI == null) {
                strI = "Timed out waiting for " + j10 + " ms";
            }
        } else {
            strI = "Timed out waiting for " + j10 + " ms";
        }
        return new TimeoutCancellationException(strI, v1Var);
    }

    private static final <U, T extends U> Object b(b3<U, ? super T> b3Var, Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2) {
        y1.y(b3Var, DelayKt.d(b3Var.f93512e.get$context()).p(b3Var.f92357f, b3Var, b3Var.get$context()));
        return bc.b.e(b3Var, b3Var, function2);
    }

    @Nullable
    public static final <T> Object c(long j10, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        if (j10 <= 0) {
            throw new TimeoutCancellationException("Timed out immediately");
        }
        Object objB = b(new b3(j10, continuation), function2);
        if (objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objB;
    }

    @Nullable
    public static final <T> Object d(long j10, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return c(DelayKt.e(j10), function2, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.b3] */
    @Nullable
    public static final <T> Object e(long j10, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        TimeoutKt$withTimeoutOrNull$1 timeoutKt$withTimeoutOrNull$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof TimeoutKt$withTimeoutOrNull$1) {
            timeoutKt$withTimeoutOrNull$1 = (TimeoutKt$withTimeoutOrNull$1) continuation;
            int i10 = timeoutKt$withTimeoutOrNull$1.f92317f;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                timeoutKt$withTimeoutOrNull$1.f92317f = i10 - Integer.MIN_VALUE;
            } else {
                timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(continuation);
            }
        } else {
            timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(continuation);
        }
        Object obj = timeoutKt$withTimeoutOrNull$1.f92316e;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = timeoutKt$withTimeoutOrNull$1.f92317f;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            if (j10 <= 0) {
                return null;
            }
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            try {
                timeoutKt$withTimeoutOrNull$1.f92314c = function2;
                timeoutKt$withTimeoutOrNull$1.f92315d = objectRef2;
                timeoutKt$withTimeoutOrNull$1.f92313b = j10;
                timeoutKt$withTimeoutOrNull$1.f92317f = 1;
                ?? r10 = (T) new b3(j10, timeoutKt$withTimeoutOrNull$1);
                objectRef2.element = r10;
                Object objB = b(r10, function2);
                if (objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(timeoutKt$withTimeoutOrNull$1);
                }
                return objB == coroutine_suspended ? coroutine_suspended : objB;
            } catch (TimeoutCancellationException e10) {
                e = e10;
                objectRef = objectRef2;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) timeoutKt$withTimeoutOrNull$1.f92315d;
            try {
                ResultKt.throwOnFailure(obj);
                return obj;
            } catch (TimeoutCancellationException e11) {
                e = e11;
            }
        }
        if (e.coroutine == objectRef.element) {
            return null;
        }
        throw e;
    }

    @Nullable
    public static final <T> Object f(long j10, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return e(DelayKt.e(j10), function2, continuation);
    }
}
