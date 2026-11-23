package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class FlowKt__CountKt {

    static final class a<T> implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f92858b;

        a(Ref.IntRef intRef) {
            this.f92858b = intRef;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            this.f92858b.element++;
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object a(@NotNull e<? extends T> eVar, @NotNull Continuation<? super Integer> continuation) {
        FlowKt__CountKt$count$1 flowKt__CountKt$count$1;
        Ref.IntRef intRef;
        if (continuation instanceof FlowKt__CountKt$count$1) {
            flowKt__CountKt$count$1 = (FlowKt__CountKt$count$1) continuation;
            int i10 = flowKt__CountKt$count$1.f92861d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__CountKt$count$1.f92861d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__CountKt$count$1 = new FlowKt__CountKt$count$1(continuation);
            }
        } else {
            flowKt__CountKt$count$1 = new FlowKt__CountKt$count$1(continuation);
        }
        Object obj = flowKt__CountKt$count$1.f92860c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__CountKt$count$1.f92861d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.IntRef intRef2 = new Ref.IntRef();
            f<? super Object> aVar = new a<>(intRef2);
            flowKt__CountKt$count$1.f92859b = intRef2;
            flowKt__CountKt$count$1.f92861d = 1;
            if (eVar.a(aVar, flowKt__CountKt$count$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            intRef = intRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            intRef = (Ref.IntRef) flowKt__CountKt$count$1.f92859b;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxInt(intRef.element);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object b(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Integer> continuation) {
        FlowKt__CountKt$count$3 flowKt__CountKt$count$3;
        Ref.IntRef intRef;
        if (continuation instanceof FlowKt__CountKt$count$3) {
            flowKt__CountKt$count$3 = (FlowKt__CountKt$count$3) continuation;
            int i10 = flowKt__CountKt$count$3.f92864d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__CountKt$count$3.f92864d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__CountKt$count$3 = new FlowKt__CountKt$count$3(continuation);
            }
        } else {
            flowKt__CountKt$count$3 = new FlowKt__CountKt$count$3(continuation);
        }
        Object obj = flowKt__CountKt$count$3.f92863c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__CountKt$count$3.f92864d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.IntRef intRef2 = new Ref.IntRef();
            f<? super Object> flowKt__CountKt$count$4 = new FlowKt__CountKt$count$4<>(function2, intRef2);
            flowKt__CountKt$count$3.f92862b = intRef2;
            flowKt__CountKt$count$3.f92864d = 1;
            if (eVar.a(flowKt__CountKt$count$4, flowKt__CountKt$count$3) == coroutine_suspended) {
                return coroutine_suspended;
            }
            intRef = intRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            intRef = (Ref.IntRef) flowKt__CountKt$count$3.f92862b;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxInt(intRef.element);
    }
}
