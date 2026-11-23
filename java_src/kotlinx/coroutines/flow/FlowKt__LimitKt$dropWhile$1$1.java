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
final class FlowKt__LimitKt$dropWhile$1$1<T> implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f92987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ f<T> f92988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ Function2<T, Continuation<? super Boolean>, Object> f92989d;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__LimitKt$dropWhile$1$1(Ref.BooleanRef booleanRef, f<? super T> fVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        this.f92987b = booleanRef;
        this.f92988c = fVar;
        this.f92989d = function2;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0074  */
    /* JADX WARN: Code duplicated, block: B:33:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x008b  */
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
        FlowKt__LimitKt$dropWhile$1$1$emit$1 flowKt__LimitKt$dropWhile$1$1$emit$1;
        FlowKt__LimitKt$dropWhile$1$1<T> flowKt__LimitKt$dropWhile$1$1;
        f<T> fVar;
        if (continuation instanceof FlowKt__LimitKt$dropWhile$1$1$emit$1) {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = (FlowKt__LimitKt$dropWhile$1$1$emit$1) continuation;
            int i10 = flowKt__LimitKt$dropWhile$1$1$emit$1.f92994f;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$dropWhile$1$1$emit$1.f92994f = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
        }
        Object objInvoke = flowKt__LimitKt$dropWhile$1$1$emit$1.f92992d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__LimitKt$dropWhile$1$1$emit$1.f92994f;
        if (i11 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            if (this.f92987b.element) {
                f<T> fVar2 = this.f92988c;
                flowKt__LimitKt$dropWhile$1$1$emit$1.f92994f = 1;
                if (fVar2.emit(t10, flowKt__LimitKt$dropWhile$1$1$emit$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            Function2<T, Continuation<? super Boolean>, Object> function2 = this.f92989d;
            flowKt__LimitKt$dropWhile$1$1$emit$1.f92990b = this;
            flowKt__LimitKt$dropWhile$1$1$emit$1.f92991c = t10;
            flowKt__LimitKt$dropWhile$1$1$emit$1.f92994f = 2;
            objInvoke = function2.invoke(t10, flowKt__LimitKt$dropWhile$1$1$emit$1);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            flowKt__LimitKt$dropWhile$1$1 = this;
            if (!((Boolean) objInvoke).booleanValue()) {
                return Unit.INSTANCE;
            }
            flowKt__LimitKt$dropWhile$1$1.f92987b.element = true;
            fVar = flowKt__LimitKt$dropWhile$1$1.f92988c;
            flowKt__LimitKt$dropWhile$1$1$emit$1.f92990b = null;
            flowKt__LimitKt$dropWhile$1$1$emit$1.f92991c = null;
            flowKt__LimitKt$dropWhile$1$1$emit$1.f92994f = 3;
            if (fVar.emit(t10, flowKt__LimitKt$dropWhile$1$1$emit$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 == 1) {
                ResultKt.throwOnFailure(objInvoke);
                return Unit.INSTANCE;
            }
            if (i11 == 2) {
                t10 = (T) flowKt__LimitKt$dropWhile$1$1$emit$1.f92991c;
                flowKt__LimitKt$dropWhile$1$1 = (FlowKt__LimitKt$dropWhile$1$1) flowKt__LimitKt$dropWhile$1$1$emit$1.f92990b;
                ResultKt.throwOnFailure(objInvoke);
                if (!((Boolean) objInvoke).booleanValue()) {
                    return Unit.INSTANCE;
                }
                flowKt__LimitKt$dropWhile$1$1.f92987b.element = true;
                fVar = flowKt__LimitKt$dropWhile$1$1.f92988c;
                flowKt__LimitKt$dropWhile$1$1$emit$1.f92990b = null;
                flowKt__LimitKt$dropWhile$1$1$emit$1.f92991c = null;
                flowKt__LimitKt$dropWhile$1$1$emit$1.f92994f = 3;
                if (fVar.emit(t10, flowKt__LimitKt$dropWhile$1$1$emit$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInvoke);
            }
        }
        return Unit.INSTANCE;
    }
}
