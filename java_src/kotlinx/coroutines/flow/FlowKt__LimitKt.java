package kotlinx.coroutines.flow;

import kotlin.BuilderInference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,138:1\n1#2:139\n105#3:140\n105#3:141\n105#3:142\n105#3:143\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n18#1:140\n29#1:141\n48#1:142\n80#1:143\n*E\n"})
final /* synthetic */ class FlowKt__LimitKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,111:1\n19#2,5:112\n*E\n"})
    public static final class a<T> implements e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f92973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f92974c;

        public a(e eVar, int i10) {
            this.f92973b = eVar;
            this.f92974c = i10;
        }

        @Override // kotlinx.coroutines.flow.e
        @Nullable
        public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
            Object objA = this.f92973b.a(new FlowKt__LimitKt$drop$2$1(new Ref.IntRef(), this.f92974c, fVar), continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,111:1\n30#2,10:112\n*E\n"})
    public static final class b<T> implements e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f92975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function2 f92976c;

        public b(e eVar, Function2 function2) {
            this.f92975b = eVar;
            this.f92976c = function2;
        }

        @Override // kotlinx.coroutines.flow.e
        @Nullable
        public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
            Object objA = this.f92975b.a(new FlowKt__LimitKt$dropWhile$1$1(new Ref.BooleanRef(), fVar, this.f92976c), continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object b(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$collectWhile$1 flowKt__LimitKt$collectWhile$1;
        f<? super Object> fVar;
        if (continuation instanceof FlowKt__LimitKt$collectWhile$1) {
            flowKt__LimitKt$collectWhile$1 = (FlowKt__LimitKt$collectWhile$1) continuation;
            int i10 = flowKt__LimitKt$collectWhile$1.f92979d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$collectWhile$1.f92979d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$collectWhile$1 = new FlowKt__LimitKt$collectWhile$1(continuation);
            }
        } else {
            flowKt__LimitKt$collectWhile$1 = new FlowKt__LimitKt$collectWhile$1(continuation);
        }
        Object obj = flowKt__LimitKt$collectWhile$1.f92978c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__LimitKt$collectWhile$1.f92979d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            f<? super Object> flowKt__LimitKt$collectWhile$collector$1 = new FlowKt__LimitKt$collectWhile$collector$1<>(function2);
            try {
                flowKt__LimitKt$collectWhile$1.f92977b = flowKt__LimitKt$collectWhile$collector$1;
                flowKt__LimitKt$collectWhile$1.f92979d = 1;
                if (eVar.a(flowKt__LimitKt$collectWhile$collector$1, flowKt__LimitKt$collectWhile$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (AbortFlowException e10) {
                e = e10;
                fVar = flowKt__LimitKt$collectWhile$collector$1;
                kotlinx.coroutines.flow.internal.h.b(e, fVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fVar = (FlowKt__LimitKt$collectWhile$collector$1) flowKt__LimitKt$collectWhile$1.f92977b;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e11) {
                e = e11;
                kotlinx.coroutines.flow.internal.h.b(e, fVar);
            }
        }
        return Unit.INSTANCE;
    }

    private static final <T> Object c(e<? extends T> eVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$1 = new FlowKt__LimitKt$collectWhile$collector$1(function2);
        try {
            InlineMarker.mark(0);
            eVar.a(flowKt__LimitKt$collectWhile$collector$1, continuation);
            InlineMarker.mark(1);
        } catch (AbortFlowException e10) {
            kotlinx.coroutines.flow.internal.h.b(e10, flowKt__LimitKt$collectWhile$collector$1);
        }
        return Unit.INSTANCE;
    }

    @NotNull
    public static final <T> e<T> d(@NotNull e<? extends T> eVar, int i10) {
        if (i10 >= 0) {
            return new a(eVar, i10);
        }
        throw new IllegalArgumentException(("Drop count should be non-negative, but had " + i10).toString());
    }

    @NotNull
    public static final <T> e<T> e(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new b(eVar, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object f(f<? super T> fVar, T t10, Object obj, Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$emitAbort$1 flowKt__LimitKt$emitAbort$1;
        if (continuation instanceof FlowKt__LimitKt$emitAbort$1) {
            flowKt__LimitKt$emitAbort$1 = (FlowKt__LimitKt$emitAbort$1) continuation;
            int i10 = flowKt__LimitKt$emitAbort$1.f92997d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$emitAbort$1.f92997d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$emitAbort$1 = new FlowKt__LimitKt$emitAbort$1(continuation);
            }
        } else {
            flowKt__LimitKt$emitAbort$1 = new FlowKt__LimitKt$emitAbort$1(continuation);
        }
        Object obj2 = flowKt__LimitKt$emitAbort$1.f92996c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__LimitKt$emitAbort$1.f92997d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj2);
            flowKt__LimitKt$emitAbort$1.f92995b = obj;
            flowKt__LimitKt$emitAbort$1.f92997d = 1;
            if (fVar.emit(t10, flowKt__LimitKt$emitAbort$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            obj = flowKt__LimitKt$emitAbort$1.f92995b;
            ResultKt.throwOnFailure(obj2);
        }
        throw new AbortFlowException(obj);
    }

    @NotNull
    public static final <T> e<T> g(@NotNull e<? extends T> eVar, int i10) {
        if (i10 > 0) {
            return new FlowKt__LimitKt$take$$inlined$unsafeFlow$1(eVar, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " should be positive").toString());
    }

    @NotNull
    public static final <T> e<T> h(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(eVar, function2);
    }

    @NotNull
    public static final <T, R> e<R> i(@NotNull e<? extends T> eVar, @BuilderInference @NotNull Function3<? super f<? super R>, ? super T, ? super Continuation<? super Boolean>, ? extends Object> function3) {
        return g.I0(new FlowKt__LimitKt$transformWhile$1(eVar, function3, null));
    }
}
