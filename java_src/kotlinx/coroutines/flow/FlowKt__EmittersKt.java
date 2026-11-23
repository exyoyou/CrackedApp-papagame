package kotlinx.coroutines.flow;

import kotlin.BuilderInference;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,218:1\n105#2:219\n105#2:220\n105#2:221\n105#2:222\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n46#1:219\n72#1:220\n142#1:221\n177#1:222\n*E\n"})
final /* synthetic */ class FlowKt__EmittersKt {
    public static final void b(@NotNull f<?> fVar) {
        if (fVar instanceof x) {
            throw ((x) fVar).f93421b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object c(f<? super T> fVar, Function3<? super f<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3, Throwable th, Continuation<? super Unit> continuation) {
        FlowKt__EmittersKt$invokeSafely$1 flowKt__EmittersKt$invokeSafely$1;
        if (continuation instanceof FlowKt__EmittersKt$invokeSafely$1) {
            flowKt__EmittersKt$invokeSafely$1 = (FlowKt__EmittersKt$invokeSafely$1) continuation;
            int i10 = flowKt__EmittersKt$invokeSafely$1.f92936d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__EmittersKt$invokeSafely$1.f92936d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__EmittersKt$invokeSafely$1 = new FlowKt__EmittersKt$invokeSafely$1(continuation);
            }
        } else {
            flowKt__EmittersKt$invokeSafely$1 = new FlowKt__EmittersKt$invokeSafely$1(continuation);
        }
        Object obj = flowKt__EmittersKt$invokeSafely$1.f92935c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__EmittersKt$invokeSafely$1.f92936d;
        try {
            if (i11 == 0) {
                ResultKt.throwOnFailure(obj);
                flowKt__EmittersKt$invokeSafely$1.f92934b = th;
                flowKt__EmittersKt$invokeSafely$1.f92936d = 1;
                if (function3.invoke(fVar, th, flowKt__EmittersKt$invokeSafely$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                th = (Throwable) flowKt__EmittersKt$invokeSafely$1.f92934b;
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                ExceptionsKt__ExceptionsKt.addSuppressed(th2, th);
            }
            throw th2;
        }
    }

    @NotNull
    public static final <T> e<T> d(@NotNull e<? extends T> eVar, @NotNull Function3<? super f<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(eVar, function3);
    }

    @NotNull
    public static final <T> e<T> e(@NotNull e<? extends T> eVar, @NotNull Function2<? super f<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1(eVar, function2);
    }

    @NotNull
    public static final <T> e<T> f(@NotNull e<? extends T> eVar, @NotNull Function2<? super f<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(function2, eVar);
    }

    @NotNull
    public static final <T, R> e<R> g(@NotNull e<? extends T> eVar, @BuilderInference @NotNull Function3<? super f<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return g.I0(new FlowKt__EmittersKt$transform$1(eVar, function3, null));
    }

    @PublishedApi
    @NotNull
    public static final <T, R> e<R> h(@NotNull e<? extends T> eVar, @BuilderInference @NotNull Function3<? super f<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1(eVar, function3);
    }
}
