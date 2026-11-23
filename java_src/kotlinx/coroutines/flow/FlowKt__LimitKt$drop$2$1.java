package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class FlowKt__LimitKt$drop$2$1<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.IntRef f92981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ int f92982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ f<T> f92983d;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__LimitKt$drop$2$1(Ref.IntRef intRef, int i10, f<? super T> fVar) {
        this.f92981b = intRef;
        this.f92982c = i10;
        this.f92983d = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$drop$2$1$emit$1 flowKt__LimitKt$drop$2$1$emit$1;
        if (continuation instanceof FlowKt__LimitKt$drop$2$1$emit$1) {
            flowKt__LimitKt$drop$2$1$emit$1 = (FlowKt__LimitKt$drop$2$1$emit$1) continuation;
            int i10 = flowKt__LimitKt$drop$2$1$emit$1.f92986d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$drop$2$1$emit$1.f92986d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$drop$2$1$emit$1 = new FlowKt__LimitKt$drop$2$1$emit$1(this, continuation);
            }
        } else {
            flowKt__LimitKt$drop$2$1$emit$1 = new FlowKt__LimitKt$drop$2$1$emit$1(this, continuation);
        }
        Object obj = flowKt__LimitKt$drop$2$1$emit$1.f92984b;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__LimitKt$drop$2$1$emit$1.f92986d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.IntRef intRef = this.f92981b;
            int i12 = intRef.element;
            if (i12 < this.f92982c) {
                intRef.element = i12 + 1;
                return Unit.INSTANCE;
            }
            f<T> fVar = this.f92983d;
            flowKt__LimitKt$drop$2$1$emit$1.f92986d = 1;
            if (fVar.emit(t10, flowKt__LimitKt$drop$2$1$emit$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
