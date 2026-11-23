package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/CancellableFlowImpl$collect$2\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,281:1\n326#2:282\n*S KotlinDebug\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/CancellableFlowImpl$collect$2\n*L\n270#1:282\n*E\n"})
final class CancellableFlowImpl$collect$2<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ f<T> f92817b;

    /* JADX WARN: Multi-variable type inference failed */
    CancellableFlowImpl$collect$2(f<? super T> fVar) {
        this.f92817b = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        CancellableFlowImpl$collect$2$emit$1 cancellableFlowImpl$collect$2$emit$1;
        if (continuation instanceof CancellableFlowImpl$collect$2$emit$1) {
            cancellableFlowImpl$collect$2$emit$1 = (CancellableFlowImpl$collect$2$emit$1) continuation;
            int i10 = cancellableFlowImpl$collect$2$emit$1.f92820d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cancellableFlowImpl$collect$2$emit$1.f92820d = i10 - Integer.MIN_VALUE;
            } else {
                cancellableFlowImpl$collect$2$emit$1 = new CancellableFlowImpl$collect$2$emit$1(this, continuation);
            }
        } else {
            cancellableFlowImpl$collect$2$emit$1 = new CancellableFlowImpl$collect$2$emit$1(this, continuation);
        }
        Object obj = cancellableFlowImpl$collect$2$emit$1.f92818b;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = cancellableFlowImpl$collect$2$emit$1.f92820d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            y1.z(cancellableFlowImpl$collect$2$emit$1.getContext());
            f<T> fVar = this.f92817b;
            cancellableFlowImpl$collect$2$emit$1.f92820d = 1;
            if (fVar.emit(t10, cancellableFlowImpl$collect$2$emit$1) == coroutine_suspended) {
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
