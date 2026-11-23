package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class DistinctFlowImpl<T> implements e<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final e<T> f92821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Function1<T, Object> f92822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Function2<Object, Object, Boolean> f92823d;

    /* JADX WARN: Multi-variable type inference failed */
    public DistinctFlowImpl(@NotNull e<? extends T> eVar, @NotNull Function1<? super T, ? extends Object> function1, @NotNull Function2<Object, Object, Boolean> function2) {
        this.f92821b = eVar;
        this.f92822c = function1;
        this.f92823d = function2;
    }

    @Override // kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = (T) kotlinx.coroutines.flow.internal.l.f93396a;
        Object objA = this.f92821b.a(new DistinctFlowImpl$collect$2(this, objectRef, fVar), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
