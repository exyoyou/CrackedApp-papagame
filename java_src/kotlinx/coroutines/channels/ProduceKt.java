package kotlinx.coroutines.channels;

import kotlin.BuilderInference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,148:1\n1#2:149\n318#3,11:150\n*S KotlinDebug\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n*L\n45#1:150,11\n*E\n"})
public final class ProduceKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object a(@NotNull q<?> qVar, @NotNull Function0<Unit> function0, @NotNull Continuation<? super Unit> continuation) {
        ProduceKt$awaitClose$1 produceKt$awaitClose$1;
        if (continuation instanceof ProduceKt$awaitClose$1) {
            produceKt$awaitClose$1 = (ProduceKt$awaitClose$1) continuation;
            int i10 = produceKt$awaitClose$1.f92673e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                produceKt$awaitClose$1.f92673e = i10 - Integer.MIN_VALUE;
            } else {
                produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(continuation);
            }
        } else {
            produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(continuation);
        }
        Object obj = produceKt$awaitClose$1.f92672d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = produceKt$awaitClose$1.f92673e;
        try {
            if (i11 == 0) {
                ResultKt.throwOnFailure(obj);
                if (!(produceKt$awaitClose$1.get$context().get(v1.F1) == qVar)) {
                    throw new IllegalStateException("awaitClose() can only be invoked from the producer context".toString());
                }
                produceKt$awaitClose$1.f92670b = qVar;
                produceKt$awaitClose$1.f92671c = function0;
                produceKt$awaitClose$1.f92673e = 1;
                final kotlinx.coroutines.o oVar = new kotlinx.coroutines.o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(produceKt$awaitClose$1), 1);
                oVar.S();
                qVar.r(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1
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
                        kotlinx.coroutines.n<Unit> nVar = oVar;
                        Result.Companion companion = Result.INSTANCE;
                        nVar.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
                    }
                });
                Object objZ = oVar.z();
                if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(produceKt$awaitClose$1);
                }
                if (objZ == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function0 = (Function0) produceKt$awaitClose$1.f92671c;
                ResultKt.throwOnFailure(obj);
            }
            function0.invoke();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            function0.invoke();
            throw th;
        }
    }

    public static /* synthetic */ Object b(q qVar, Function0 function0, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = new Function0<Unit>() { // from class: kotlinx.coroutines.channels.ProduceKt$awaitClose$2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        return a(qVar, function0, continuation);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <E> ReceiveChannel<E> c(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, int i10, @BuilderInference @NotNull Function2<? super q<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return e(l0Var, coroutineContext, i10, BufferOverflow.SUSPEND, CoroutineStart.DEFAULT, null, function2);
    }

    @InternalCoroutinesApi
    @NotNull
    public static final <E> ReceiveChannel<E> d(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, int i10, @NotNull CoroutineStart coroutineStart, @Nullable Function1<? super Throwable, Unit> function1, @BuilderInference @NotNull Function2<? super q<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return e(l0Var, coroutineContext, i10, BufferOverflow.SUSPEND, coroutineStart, function1, function2);
    }

    @NotNull
    public static final <E> ReceiveChannel<E> e(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow, @NotNull CoroutineStart coroutineStart, @Nullable Function1<? super Throwable, Unit> function1, @BuilderInference @NotNull Function2<? super q<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        p pVar = new p(CoroutineContextKt.e(l0Var, coroutineContext), i.d(i10, bufferOverflow, null, 4, null));
        if (function1 != null) {
            pVar.l(function1);
        }
        pVar.J1(coroutineStart, pVar, function2);
        return pVar;
    }

    public static /* synthetic */ ReceiveChannel f(l0 l0Var, CoroutineContext coroutineContext, int i10, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return c(l0Var, coroutineContext, i10, function2);
    }

    public static /* synthetic */ ReceiveChannel g(l0 l0Var, CoroutineContext coroutineContext, int i10, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i12 = (i11 & 2) != 0 ? 0 : i10;
        if ((i11 & 4) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i11 & 8) != 0) {
            function1 = null;
        }
        return d(l0Var, coroutineContext2, i12, coroutineStart2, function1, function2);
    }

    public static /* synthetic */ ReceiveChannel h(l0 l0Var, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i12 = (i11 & 2) != 0 ? 0 : i10;
        if ((i11 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if ((i11 & 8) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i11 & 16) != 0) {
            function1 = null;
        }
        return e(l0Var, coroutineContext2, i12, bufferOverflow2, coroutineStart2, function1, function2);
    }
}
