package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class FlowKt__EmittersKt$onEmpty$1$1<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f92941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ f<T> f92942c;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__EmittersKt$onEmpty$1$1(Ref.BooleanRef booleanRef, f<? super T> fVar) {
        this.f92941b = booleanRef;
        this.f92942c = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__EmittersKt$onEmpty$1$1$emit$1 flowKt__EmittersKt$onEmpty$1$1$emit$1;
        if (continuation instanceof FlowKt__EmittersKt$onEmpty$1$1$emit$1) {
            flowKt__EmittersKt$onEmpty$1$1$emit$1 = (FlowKt__EmittersKt$onEmpty$1$1$emit$1) continuation;
            int i10 = flowKt__EmittersKt$onEmpty$1$1$emit$1.f92945d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__EmittersKt$onEmpty$1$1$emit$1.f92945d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__EmittersKt$onEmpty$1$1$emit$1 = new FlowKt__EmittersKt$onEmpty$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__EmittersKt$onEmpty$1$1$emit$1 = new FlowKt__EmittersKt$onEmpty$1$1$emit$1(this, continuation);
        }
        Object obj = flowKt__EmittersKt$onEmpty$1$1$emit$1.f92943b;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__EmittersKt$onEmpty$1$1$emit$1.f92945d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            this.f92941b.element = false;
            f<T> fVar = this.f92942c;
            flowKt__EmittersKt$onEmpty$1$1$emit$1.f92945d = 1;
            if (fVar.emit(t10, flowKt__EmittersKt$onEmpty$1$1$emit$1) == coroutine_suspended) {
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
