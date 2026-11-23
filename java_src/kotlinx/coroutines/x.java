package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class x<T> extends JobSupport implements w<T> {
    public x(@Nullable v1 v1Var) {
        super(true);
        Q0(v1Var);
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean F0() {
        return true;
    }

    @Override // kotlinx.coroutines.r0
    @NotNull
    public kotlinx.coroutines.selects.e<T> Q() {
        kotlinx.coroutines.selects.e<T> eVar = (kotlinx.coroutines.selects.e<T>) D0();
        Intrinsics.checkNotNull(eVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.CompletableDeferredImpl>");
        return eVar;
    }

    @Override // kotlinx.coroutines.w
    public boolean c(@NotNull Throwable th) {
        return b1(new b0(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.r0
    public T d() {
        return (T) x0();
    }

    @Override // kotlinx.coroutines.r0
    @Nullable
    public Object g(@NotNull Continuation<? super T> continuation) throws Throwable {
        Object objH0 = h0(continuation);
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return objH0;
    }

    @Override // kotlinx.coroutines.w
    public boolean q(T t10) {
        return b1(t10);
    }
}
