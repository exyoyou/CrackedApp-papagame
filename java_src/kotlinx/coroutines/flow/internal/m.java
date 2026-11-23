package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.channels.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public final class m<T> implements kotlinx.coroutines.flow.f<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final s<T> f93399b;

    /* JADX WARN: Multi-variable type inference failed */
    public m(@NotNull s<? super T> sVar) {
        this.f93399b = sVar;
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        Object objV = this.f93399b.V(t10, continuation);
        return objV == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objV : Unit.INSTANCE;
    }
}
