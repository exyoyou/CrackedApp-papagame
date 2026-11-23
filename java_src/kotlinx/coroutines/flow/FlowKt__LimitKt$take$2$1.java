package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class FlowKt__LimitKt$take$2$1<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.IntRef f93000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ int f93001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ f<T> f93002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ Object f93003e;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__LimitKt$take$2$1(Ref.IntRef intRef, int i10, f<? super T> fVar, Object obj) {
        this.f93000b = intRef;
        this.f93001c = i10;
        this.f93002d = fVar;
        this.f93003e = obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$take$2$1$emit$1 flowKt__LimitKt$take$2$1$emit$1;
        if (continuation instanceof FlowKt__LimitKt$take$2$1$emit$1) {
            flowKt__LimitKt$take$2$1$emit$1 = (FlowKt__LimitKt$take$2$1$emit$1) continuation;
            int i10 = flowKt__LimitKt$take$2$1$emit$1.f93006d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$take$2$1$emit$1.f93006d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$take$2$1$emit$1 = new FlowKt__LimitKt$take$2$1$emit$1(this, continuation);
            }
        } else {
            flowKt__LimitKt$take$2$1$emit$1 = new FlowKt__LimitKt$take$2$1$emit$1(this, continuation);
        }
        Object obj = flowKt__LimitKt$take$2$1$emit$1.f93004b;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__LimitKt$take$2$1$emit$1.f93006d;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            if (i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        Ref.IntRef intRef = this.f93000b;
        int i12 = intRef.element + 1;
        intRef.element = i12;
        if (i12 < this.f93001c) {
            f<T> fVar = this.f93002d;
            flowKt__LimitKt$take$2$1$emit$1.f93006d = 1;
            if (fVar.emit(t10, flowKt__LimitKt$take$2$1$emit$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        f<T> fVar2 = this.f93002d;
        Object obj2 = this.f93003e;
        flowKt__LimitKt$take$2$1$emit$1.f93006d = 2;
        if (FlowKt__LimitKt.f(fVar2, t10, obj2, flowKt__LimitKt$take$2$1$emit$1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
