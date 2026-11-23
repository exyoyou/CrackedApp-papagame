package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class FlowKt__TransformKt$runningFold$1$1<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<R> f93152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Function3<R, T, Continuation<? super R>, Object> f93153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ f<R> f93154d;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__TransformKt$runningFold$1$1(Ref.ObjectRef<R> objectRef, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, f<? super R> fVar) {
        this.f93152b = objectRef;
        this.f93153c = function3;
        this.f93154d = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__TransformKt$runningFold$1$1$emit$1 flowKt__TransformKt$runningFold$1$1$emit$1;
        FlowKt__TransformKt$runningFold$1$1<T> flowKt__TransformKt$runningFold$1$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__TransformKt$runningFold$1$1$emit$1) {
            flowKt__TransformKt$runningFold$1$1$emit$1 = (FlowKt__TransformKt$runningFold$1$1$emit$1) continuation;
            int i10 = flowKt__TransformKt$runningFold$1$1$emit$1.f93159f;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__TransformKt$runningFold$1$1$emit$1.f93159f = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__TransformKt$runningFold$1$1$emit$1 = new FlowKt__TransformKt$runningFold$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__TransformKt$runningFold$1$1$emit$1 = new FlowKt__TransformKt$runningFold$1$1$emit$1(this, continuation);
        }
        Object obj = flowKt__TransformKt$runningFold$1$1$emit$1.f93157d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__TransformKt$runningFold$1$1$emit$1.f93159f;
        if (i11 != 0) {
            if (i11 == 1) {
                objectRef = (Ref.ObjectRef) flowKt__TransformKt$runningFold$1$1$emit$1.f93156c;
                flowKt__TransformKt$runningFold$1$1 = (FlowKt__TransformKt$runningFold$1$1) flowKt__TransformKt$runningFold$1$1$emit$1.f93155b;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        Ref.ObjectRef objectRef2 = this.f93152b;
        Function3<R, T, Continuation<? super R>, Object> function3 = this.f93153c;
        T t11 = objectRef2.element;
        flowKt__TransformKt$runningFold$1$1$emit$1.f93155b = this;
        flowKt__TransformKt$runningFold$1$1$emit$1.f93156c = objectRef2;
        flowKt__TransformKt$runningFold$1$1$emit$1.f93159f = 1;
        Object objInvoke = function3.invoke((R) t11, t10, flowKt__TransformKt$runningFold$1$1$emit$1);
        if (objInvoke == coroutine_suspended) {
            return coroutine_suspended;
        }
        flowKt__TransformKt$runningFold$1$1 = this;
        obj = (T) objInvoke;
        objectRef = objectRef2;
        objectRef.element = (T) obj;
        f<R> fVar = flowKt__TransformKt$runningFold$1$1.f93154d;
        T t12 = flowKt__TransformKt$runningFold$1$1.f93152b.element;
        flowKt__TransformKt$runningFold$1$1$emit$1.f93155b = null;
        flowKt__TransformKt$runningFold$1$1$emit$1.f93156c = null;
        flowKt__TransformKt$runningFold$1$1$emit$1.f93159f = 2;
        if (fVar.emit((R) t12, flowKt__TransformKt$runningFold$1$1$emit$1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
