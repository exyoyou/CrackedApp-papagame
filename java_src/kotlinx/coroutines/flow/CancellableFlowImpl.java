package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class CancellableFlowImpl<T> implements a<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final e<T> f92816b;

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableFlowImpl(@NotNull e<? extends T> eVar) {
        this.f92816b = eVar;
    }

    @Override // kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
        Object objA = this.f92816b.a(new CancellableFlowImpl$collect$2(fVar), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
