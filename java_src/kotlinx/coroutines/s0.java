package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
class s0<T> extends a<T> implements r0<T> {
    public s0(@NotNull CoroutineContext coroutineContext, boolean z10) {
        super(coroutineContext, true, z10);
    }

    static /* synthetic */ <T> Object K1(s0<T> s0Var, Continuation<? super T> continuation) throws Throwable {
        Object objH0 = s0Var.h0(continuation);
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return objH0;
    }

    @Override // kotlinx.coroutines.r0
    @NotNull
    public kotlinx.coroutines.selects.e<T> Q() {
        kotlinx.coroutines.selects.e<T> eVar = (kotlinx.coroutines.selects.e<T>) D0();
        Intrinsics.checkNotNull(eVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.DeferredCoroutine>");
        return eVar;
    }

    @Override // kotlinx.coroutines.r0
    public T d() {
        return (T) x0();
    }

    @Override // kotlinx.coroutines.r0
    @Nullable
    public Object g(@NotNull Continuation<? super T> continuation) {
        return K1(this, continuation);
    }
}
