package bc;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.b0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.internal.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nUndispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n+ 2 ProbesSupport.kt\nkotlinx/coroutines/internal/ProbesSupportKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,110:1\n38#1:111\n39#1,11:113\n38#1:124\n39#1,2:126\n41#1,9:133\n80#1,4:143\n97#1,6:147\n103#1,5:155\n80#1,4:160\n97#1,6:164\n103#1,5:172\n8#2:112\n8#2:125\n8#2:142\n91#3,5:128\n57#4,2:153\n57#4,2:170\n57#4,2:177\n57#4,2:179\n*S KotlinDebug\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n*L\n14#1:111\n14#1:113,11\n25#1:124\n25#1:126,2\n25#1:133,9\n60#1:143,4\n60#1:147,6\n60#1:155,5\n71#1:160,4\n71#1:164,6\n71#1:172,5\n14#1:112\n25#1:125\n38#1:142\n26#1:128,5\n60#1:153,2\n71#1:170,2\n102#1:177,2\n103#1:179,2\n*E\n"})
public final class b {
    public static final <R, T> void a(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r10, @NotNull Continuation<? super T> continuation) {
        Continuation continuationProbeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            CoroutineContext coroutineContext = continuation.get$context();
            Object objC = ThreadContextKt.c(coroutineContext, null);
            try {
                Object objWrapWithContinuationImpl = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.wrapWithContinuationImpl(function2, r10, continuationProbeCoroutineCreated) : ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r10, continuationProbeCoroutineCreated);
                ThreadContextKt.a(coroutineContext, objC);
                if (objWrapWithContinuationImpl != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    Result.Companion companion = Result.INSTANCE;
                    continuationProbeCoroutineCreated.resumeWith(Result.m50constructorimpl(objWrapWithContinuationImpl));
                }
            } catch (Throwable th) {
                ThreadContextKt.a(coroutineContext, objC);
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            continuationProbeCoroutineCreated.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th2)));
        }
    }

    public static final <T> void b(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        Continuation continuationProbeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            Object objWrapWithContinuationImpl = !(function1 instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.wrapWithContinuationImpl(function1, continuationProbeCoroutineCreated) : ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(continuationProbeCoroutineCreated);
            if (objWrapWithContinuationImpl != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                Result.Companion companion = Result.INSTANCE;
                continuationProbeCoroutineCreated.resumeWith(Result.m50constructorimpl(objWrapWithContinuationImpl));
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            continuationProbeCoroutineCreated.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th)));
        }
    }

    private static final <T> void c(Continuation<? super T> continuation, Function1<? super Continuation<? super T>, ? extends Object> function1) {
        Continuation continuationProbeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        try {
            Object objInvoke = function1.invoke(continuationProbeCoroutineCreated);
            if (objInvoke != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                Result.Companion companion = Result.INSTANCE;
                continuationProbeCoroutineCreated.resumeWith(Result.m50constructorimpl(objInvoke));
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            continuationProbeCoroutineCreated.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th)));
        }
    }

    @Nullable
    public static final <T, R> Object d(@NotNull m0<? super T> m0Var, R r10, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object b0Var;
        Object objC1;
        try {
            b0Var = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.wrapWithContinuationImpl(function2, r10, m0Var) : ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r10, m0Var);
        } catch (Throwable th) {
            b0Var = new b0(th, false, 2, null);
        }
        if (b0Var != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() && (objC1 = m0Var.c1(b0Var)) != b2.f92348b) {
            if (objC1 instanceof b0) {
                throw ((b0) objC1).f92345a;
            }
            return b2.h(objC1);
        }
        return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    @Nullable
    public static final <T, R> Object e(@NotNull m0<? super T> m0Var, R r10, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) throws Throwable {
        Object b0Var;
        Object objC1;
        try {
            b0Var = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.wrapWithContinuationImpl(function2, r10, m0Var) : ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r10, m0Var);
        } catch (Throwable th) {
            b0Var = new b0(th, false, 2, null);
        }
        if (b0Var != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() && (objC1 = m0Var.c1(b0Var)) != b2.f92348b) {
            if (objC1 instanceof b0) {
                Throwable th2 = ((b0) objC1).f92345a;
                if (((th2 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th2).coroutine == m0Var) ? false : true) {
                    throw th2;
                }
                if (b0Var instanceof b0) {
                    throw ((b0) b0Var).f92345a;
                }
            } else {
                b0Var = b2.h(objC1);
            }
            return b0Var;
        }
        return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    private static final <T> Object f(m0<? super T> m0Var, Function1<? super Throwable, Boolean> function1, Function0<? extends Object> function0) throws Throwable {
        Object b0Var;
        Object objC1;
        try {
            b0Var = function0.invoke();
        } catch (Throwable th) {
            b0Var = new b0(th, false, 2, null);
        }
        if (b0Var != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() && (objC1 = m0Var.c1(b0Var)) != b2.f92348b) {
            if (!(objC1 instanceof b0)) {
                return b2.h(objC1);
            }
            b0 b0Var2 = (b0) objC1;
            if (function1.invoke(b0Var2.f92345a).booleanValue()) {
                throw b0Var2.f92345a;
            }
            if (b0Var instanceof b0) {
                throw ((b0) b0Var).f92345a;
            }
            return b0Var;
        }
        return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }
}
