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
final class FlowKt__TransformKt$runningReduce$1$1<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Object> f93160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Function3<T, T, Continuation<? super T>, Object> f93161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ f<T> f93162d;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__TransformKt$runningReduce$1$1(Ref.ObjectRef<Object> objectRef, Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3, f<? super T> fVar) {
        this.f93160b = objectRef;
        this.f93161c = function3;
        this.f93162d = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0078 A[RETURN] */
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
        FlowKt__TransformKt$runningReduce$1$1$emit$1 flowKt__TransformKt$runningReduce$1$1$emit$1;
        Ref.ObjectRef<Object> objectRef;
        FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$1;
        Ref.ObjectRef<Object> objectRef2;
        f<T> fVar;
        T t11;
        if (continuation instanceof FlowKt__TransformKt$runningReduce$1$1$emit$1) {
            flowKt__TransformKt$runningReduce$1$1$emit$1 = (FlowKt__TransformKt$runningReduce$1$1$emit$1) continuation;
            int i10 = flowKt__TransformKt$runningReduce$1$1$emit$1.f93167f;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__TransformKt$runningReduce$1$1$emit$1.f93167f = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__TransformKt$runningReduce$1$1$emit$1 = new FlowKt__TransformKt$runningReduce$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__TransformKt$runningReduce$1$1$emit$1 = new FlowKt__TransformKt$runningReduce$1$1$emit$1(this, continuation);
        }
        Object obj = flowKt__TransformKt$runningReduce$1$1$emit$1.f93165d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__TransformKt$runningReduce$1$1$emit$1.f93167f;
        if (i11 != 0) {
            if (i11 == 1) {
                objectRef2 = (Ref.ObjectRef) flowKt__TransformKt$runningReduce$1$1$emit$1.f93164c;
                flowKt__TransformKt$runningReduce$1$1 = (FlowKt__TransformKt$runningReduce$1$1) flowKt__TransformKt$runningReduce$1$1$emit$1.f93163b;
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
        objectRef = this.f93160b;
        Object obj2 = objectRef.element;
        if (obj2 == kotlinx.coroutines.flow.internal.l.f93396a) {
            flowKt__TransformKt$runningReduce$1$1 = this;
        } else {
            Function3<T, T, Continuation<? super T>, Object> function3 = this.f93161c;
            flowKt__TransformKt$runningReduce$1$1$emit$1.f93163b = this;
            flowKt__TransformKt$runningReduce$1$1$emit$1.f93164c = objectRef;
            flowKt__TransformKt$runningReduce$1$1$emit$1.f93167f = 1;
            Object objInvoke = function3.invoke((T) obj2, t10, flowKt__TransformKt$runningReduce$1$1$emit$1);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            flowKt__TransformKt$runningReduce$1$1 = this;
            obj = objInvoke;
            objectRef2 = objectRef;
        }
        objectRef.element = t10;
        fVar = flowKt__TransformKt$runningReduce$1$1.f93162d;
        t11 = flowKt__TransformKt$runningReduce$1$1.f93160b.element;
        flowKt__TransformKt$runningReduce$1$1$emit$1.f93163b = null;
        flowKt__TransformKt$runningReduce$1$1$emit$1.f93164c = null;
        flowKt__TransformKt$runningReduce$1$1$emit$1.f93167f = 2;
        if (fVar.emit(t11, flowKt__TransformKt$runningReduce$1$1$emit$1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
        Object obj3 = obj;
        objectRef = objectRef2;
        t10 = (T) obj3;
        objectRef.element = t10;
        fVar = flowKt__TransformKt$runningReduce$1$1.f93162d;
        t11 = flowKt__TransformKt$runningReduce$1$1.f93160b.element;
        flowKt__TransformKt$runningReduce$1$1$emit$1.f93163b = null;
        flowKt__TransformKt$runningReduce$1$1$emit$1.f93164c = null;
        flowKt__TransformKt$runningReduce$1$1$emit$1.f93167f = 2;
        if (fVar.emit(t11, flowKt__TransformKt$runningReduce$1$1$emit$1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
