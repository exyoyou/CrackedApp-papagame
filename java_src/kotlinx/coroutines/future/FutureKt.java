package kotlinx.coroutines.future;

import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.ExecutionException;
import java.util.function.BiFunction;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.w;
import kotlinx.coroutines.y;
import kotlinx.coroutines.y1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,193:1\n1#2:194\n318#3,11:195\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n168#1:195,11\n*E\n"})
public final class FutureKt {
    @NotNull
    public static final <T> CompletableFuture<T> c(@NotNull final r0<? extends T> r0Var) {
        final CompletableFuture<T> completableFutureA = m.a();
        j(r0Var, completableFutureA);
        r0Var.l(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.future.FutureKt$asCompletableFuture$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                try {
                    completableFutureA.complete(r0Var.d());
                } catch (Throwable th2) {
                    completableFutureA.completeExceptionally(th2);
                }
            }
        });
        return completableFutureA;
    }

    @NotNull
    public static final CompletableFuture<Unit> d(@NotNull v1 v1Var) {
        final CompletableFuture<Unit> completableFutureA = m.a();
        j(v1Var, completableFutureA);
        v1Var.l(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.future.FutureKt$asCompletableFuture$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                if (th == null) {
                    completableFutureA.complete(Unit.INSTANCE);
                } else {
                    completableFutureA.completeExceptionally(th);
                }
            }
        });
        return completableFutureA;
    }

    @NotNull
    public static final <T> r0<T> e(@NotNull CompletionStage<T> completionStage) {
        Throwable cause;
        CompletableFuture completableFuture = completionStage.toCompletableFuture();
        if (!completableFuture.isDone()) {
            final w wVarC = y.c(null, 1, null);
            final Function2<T, Throwable, Object> function2 = new Function2<T, Throwable, Object>() { // from class: kotlinx.coroutines.future.FutureKt$asDeferred$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object invoke(T t10, Throwable th) {
                    boolean zC;
                    Throwable cause2;
                    try {
                        if (th == null) {
                            zC = wVarC.q(t10);
                        } else {
                            w<T> wVar = wVarC;
                            CompletionException completionExceptionA = d.a(th) ? e.a(th) : null;
                            if (completionExceptionA != null && (cause2 = completionExceptionA.getCause()) != null) {
                                th = cause2;
                            }
                            zC = wVar.c(th);
                        }
                        return Boolean.valueOf(zC);
                    } catch (Throwable th2) {
                        i0.b(EmptyCoroutineContext.INSTANCE, th2);
                        return Unit.INSTANCE;
                    }
                }
            };
            completionStage.handle(new BiFunction() { // from class: kotlinx.coroutines.future.n
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return FutureKt.f(function2, obj, (Throwable) obj2);
                }
            });
            y1.x(wVarC, completableFuture);
            return wVarC;
        }
        try {
            return y.a(completableFuture.get());
        } catch (Throwable th) {
            th = th;
            ExecutionException executionException = th instanceof ExecutionException ? (ExecutionException) th : null;
            if (executionException != null && (cause = executionException.getCause()) != null) {
                th = cause;
            }
            w wVarC2 = y.c(null, 1, null);
            wVarC2.c(th);
            return wVarC2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object f(Function2 function2, Object obj, Throwable th) {
        return function2.invoke(obj, th);
    }

    @Nullable
    public static final <T> Object g(@NotNull CompletionStage<T> completionStage, @NotNull Continuation<? super T> continuation) throws Throwable {
        final CompletableFuture completableFuture = completionStage.toCompletableFuture();
        if (completableFuture.isDone()) {
            try {
                return completableFuture.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    throw e10;
                }
                throw cause;
            }
        }
        kotlinx.coroutines.o oVar = new kotlinx.coroutines.o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        final g gVar = new g(oVar);
        completionStage.handle(io.netty.handler.ssl.p.a(gVar));
        oVar.E(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.future.FutureKt$await$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                completableFuture.cancel(false);
                gVar.cont = null;
            }
        });
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ;
    }

    @NotNull
    public static final <T> CompletableFuture<T> h(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2) {
        if (!(!coroutineStart.isLazy())) {
            throw new IllegalArgumentException((coroutineStart + " start is not supported").toString());
        }
        CoroutineContext coroutineContextE = CoroutineContextKt.e(l0Var, coroutineContext);
        CompletableFuture<T> completableFutureA = m.a();
        c cVar = new c(coroutineContextE, completableFutureA);
        completableFutureA.handle(io.netty.handler.ssl.p.a(cVar));
        cVar.J1(coroutineStart, cVar, function2);
        return completableFutureA;
    }

    public static /* synthetic */ CompletableFuture i(l0 l0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return h(l0Var, coroutineContext, coroutineStart, function2);
    }

    private static final void j(final v1 v1Var, CompletableFuture<?> completableFuture) {
        completableFuture.handle((BiFunction<? super Object, Throwable, ? extends U>) new BiFunction() { // from class: kotlinx.coroutines.future.o
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return FutureKt.k(v1Var, obj, (Throwable) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(v1 v1Var, Object obj, Throwable th) {
        CancellationException cancellationExceptionA = null;
        if (th != null) {
            cancellationExceptionA = th instanceof CancellationException ? (CancellationException) th : null;
            if (cancellationExceptionA == null) {
                cancellationExceptionA = l1.a("CompletableFuture was completed exceptionally", th);
            }
        }
        v1Var.b(cancellationExceptionA);
        return Unit.INSTANCE;
    }
}
