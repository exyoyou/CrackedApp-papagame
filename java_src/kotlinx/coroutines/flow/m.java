package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class m<T> extends AbstractFlow<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Function2<f<? super T>, Continuation<? super Unit>, Object> f93406b;

    /* JADX WARN: Multi-variable type inference failed */
    public m(@NotNull Function2<? super f<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f93406b = function2;
    }

    @Override // kotlinx.coroutines.flow.AbstractFlow
    @Nullable
    public Object g(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
        Object objInvoke = this.f93406b.invoke(fVar, continuation);
        return objInvoke == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }
}
