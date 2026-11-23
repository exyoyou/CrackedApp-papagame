package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$2\n*L\n1#1,168:1\n*E\n"})
public final class FlowKt__ReduceKt$fold$2<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<R> f93075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Function3<R, T, Continuation<? super R>, Object> f93076c;

    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ReduceKt$fold$2(Ref.ObjectRef<R> objectRef, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        this.f93075b = objectRef;
        this.f93076c = function3;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Nullable
    public final Object a(T t10, @NotNull Continuation<? super Unit> continuation) {
        InlineMarker.mark(4);
        new FlowKt__ReduceKt$fold$2$emit$1(this, continuation);
        InlineMarker.mark(5);
        Ref.ObjectRef<R> objectRef = this.f93075b;
        objectRef.element = (T) this.f93076c.invoke((R) objectRef.element, t10, (Continuation<? super R>) continuation);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__ReduceKt$fold$2$emit$1 flowKt__ReduceKt$fold$2$emit$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__ReduceKt$fold$2$emit$1) {
            flowKt__ReduceKt$fold$2$emit$1 = (FlowKt__ReduceKt$fold$2$emit$1) continuation;
            int i10 = flowKt__ReduceKt$fold$2$emit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$fold$2$emit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$fold$2$emit$1 = new FlowKt__ReduceKt$fold$2$emit$1(this, continuation);
            }
        } else {
            flowKt__ReduceKt$fold$2$emit$1 = new FlowKt__ReduceKt$fold$2$emit$1(this, continuation);
        }
        Object obj = flowKt__ReduceKt$fold$2$emit$1.result;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$fold$2$emit$1.label;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = this.f93075b;
            Function3<R, T, Continuation<? super R>, Object> function3 = this.f93076c;
            T t11 = objectRef2.element;
            flowKt__ReduceKt$fold$2$emit$1.L$0 = objectRef2;
            flowKt__ReduceKt$fold$2$emit$1.label = 1;
            Object objInvoke = function3.invoke((R) t11, t10, flowKt__ReduceKt$fold$2$emit$1);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = (T) objInvoke;
            objectRef = objectRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$fold$2$emit$1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        objectRef.element = (T) obj;
        return Unit.INSTANCE;
    }
}
