package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nBuilders.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,269:1\n91#2,5:270\n*S KotlinDebug\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n*L\n162#1:270,5\n*E\n"})
public final /* synthetic */ class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f93572a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f93573b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f93574c = 2;

    @NotNull
    public static final <T> r0<T> a(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2) {
        CoroutineContext coroutineContextE = CoroutineContextKt.e(l0Var, coroutineContext);
        s0 c2Var = coroutineStart.isLazy() ? new c2(coroutineContextE, function2) : new s0(coroutineContextE, true);
        ((a) c2Var).J1(coroutineStart, c2Var, function2);
        return (r0<T>) c2Var;
    }

    public static /* synthetic */ r0 b(l0 l0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return h.a(l0Var, coroutineContext, coroutineStart, function2);
    }

    @Nullable
    public static final <T> Object c(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return h.h(coroutineDispatcher, function2, continuation);
    }

    private static final <T> Object d(CoroutineDispatcher coroutineDispatcher, Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        InlineMarker.mark(0);
        Object objH = h.h(coroutineDispatcher, function2, continuation);
        InlineMarker.mark(1);
        return objH;
    }

    @NotNull
    public static final v1 e(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        CoroutineContext coroutineContextE = CoroutineContextKt.e(l0Var, coroutineContext);
        a d2Var = coroutineStart.isLazy() ? new d2(coroutineContextE, function2) : new p2(coroutineContextE, true);
        d2Var.J1(coroutineStart, d2Var, function2);
        return d2Var;
    }

    public static /* synthetic */ v1 f(l0 l0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return h.d(l0Var, coroutineContext, coroutineStart, function2);
    }

    @Nullable
    public static final <T> Object g(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) throws Throwable {
        Object objK1;
        CoroutineContext context = continuation.get$context();
        CoroutineContext coroutineContextD = CoroutineContextKt.d(context, coroutineContext);
        y1.z(coroutineContextD);
        if (coroutineContextD == context) {
            kotlinx.coroutines.internal.m0 m0Var = new kotlinx.coroutines.internal.m0(coroutineContextD, continuation);
            objK1 = bc.b.d(m0Var, m0Var, function2);
        } else {
            ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.areEqual(coroutineContextD.get(companion), context.get(companion))) {
                d3 d3Var = new d3(coroutineContextD, continuation);
                CoroutineContext context2 = d3Var.get$context();
                Object objC = ThreadContextKt.c(context2, null);
                try {
                    Object objD = bc.b.d(d3Var, d3Var, function2);
                    ThreadContextKt.a(context2, objC);
                    objK1 = objD;
                } catch (Throwable th) {
                    ThreadContextKt.a(context2, objC);
                    throw th;
                }
            } else {
                v0 v0Var = new v0(coroutineContextD, continuation);
                bc.a.f(function2, v0Var, v0Var, null, 4, null);
                objK1 = v0Var.K1();
            }
        }
        if (objK1 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objK1;
    }
}
