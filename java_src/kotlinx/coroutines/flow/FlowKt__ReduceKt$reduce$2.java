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
final class FlowKt__ReduceKt$reduce$2<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Object> f93086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Function3<S, T, Continuation<? super S>, Object> f93087c;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__ReduceKt$reduce$2(Ref.ObjectRef<Object> objectRef, Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3) {
        this.f93086b = objectRef;
        this.f93087c = function3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__ReduceKt$reduce$2$emit$1 flowKt__ReduceKt$reduce$2$emit$1;
        Ref.ObjectRef<Object> objectRef;
        Ref.ObjectRef<Object> objectRef2;
        if (continuation instanceof FlowKt__ReduceKt$reduce$2$emit$1) {
            flowKt__ReduceKt$reduce$2$emit$1 = (FlowKt__ReduceKt$reduce$2$emit$1) continuation;
            int i10 = flowKt__ReduceKt$reduce$2$emit$1.f93091e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$reduce$2$emit$1.f93091e = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$reduce$2$emit$1 = new FlowKt__ReduceKt$reduce$2$emit$1(this, continuation);
            }
        } else {
            flowKt__ReduceKt$reduce$2$emit$1 = new FlowKt__ReduceKt$reduce$2$emit$1(this, continuation);
        }
        Object obj = flowKt__ReduceKt$reduce$2$emit$1.f93089c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$reduce$2$emit$1.f93091e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            objectRef = this.f93086b;
            Object obj2 = objectRef.element;
            if (obj2 != kotlinx.coroutines.flow.internal.l.f93396a) {
                Function3<S, T, Continuation<? super S>, Object> function3 = this.f93087c;
                flowKt__ReduceKt$reduce$2$emit$1.f93088b = objectRef;
                flowKt__ReduceKt$reduce$2$emit$1.f93091e = 1;
                Object objInvoke = function3.invoke((S) obj2, t10, flowKt__ReduceKt$reduce$2$emit$1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj = objInvoke;
                objectRef2 = objectRef;
            }
            objectRef.element = t10;
            return Unit.INSTANCE;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        objectRef2 = (Ref.ObjectRef) flowKt__ReduceKt$reduce$2$emit$1.f93088b;
        ResultKt.throwOnFailure(obj);
        Object obj3 = obj;
        objectRef = objectRef2;
        t10 = (T) obj3;
        objectRef.element = t10;
        return Unit.INSTANCE;
    }
}
