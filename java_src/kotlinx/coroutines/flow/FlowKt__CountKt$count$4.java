package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class FlowKt__CountKt$count$4<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Function2<T, Continuation<? super Boolean>, Object> f92865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Ref.IntRef f92866c;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__CountKt$count$4(Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Ref.IntRef intRef) {
        this.f92865b = function2;
        this.f92866c = intRef;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__CountKt$count$4$emit$1 flowKt__CountKt$count$4$emit$1;
        FlowKt__CountKt$count$4<T> flowKt__CountKt$count$4;
        if (continuation instanceof FlowKt__CountKt$count$4$emit$1) {
            flowKt__CountKt$count$4$emit$1 = (FlowKt__CountKt$count$4$emit$1) continuation;
            int i10 = flowKt__CountKt$count$4$emit$1.f92870e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__CountKt$count$4$emit$1.f92870e = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__CountKt$count$4$emit$1 = new FlowKt__CountKt$count$4$emit$1(this, continuation);
            }
        } else {
            flowKt__CountKt$count$4$emit$1 = new FlowKt__CountKt$count$4$emit$1(this, continuation);
        }
        Object objInvoke = flowKt__CountKt$count$4$emit$1.f92868c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__CountKt$count$4$emit$1.f92870e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            Function2<T, Continuation<? super Boolean>, Object> function2 = this.f92865b;
            flowKt__CountKt$count$4$emit$1.f92867b = this;
            flowKt__CountKt$count$4$emit$1.f92870e = 1;
            objInvoke = function2.invoke(t10, flowKt__CountKt$count$4$emit$1);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            flowKt__CountKt$count$4 = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowKt__CountKt$count$4 = (FlowKt__CountKt$count$4) flowKt__CountKt$count$4$emit$1.f92867b;
            ResultKt.throwOnFailure(objInvoke);
        }
        if (((Boolean) objInvoke).booleanValue()) {
            flowKt__CountKt$count$4.f92866c.element++;
        }
        return Unit.INSTANCE;
    }
}
