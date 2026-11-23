package kotlinx.coroutines.future;

import java.util.concurrent.CompletableFuture;
import java.util.function.BiFunction;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class c<T> extends kotlinx.coroutines.a<T> implements BiFunction<T, Throwable, Unit> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final CompletableFuture<T> f93428e;

    public c(@NotNull CoroutineContext coroutineContext, @NotNull CompletableFuture<T> completableFuture) {
        super(coroutineContext, true, true);
        this.f93428e = completableFuture;
    }

    @Override // kotlinx.coroutines.a
    protected void H1(@NotNull Throwable th, boolean z10) {
        this.f93428e.completeExceptionally(th);
    }

    @Override // kotlinx.coroutines.a
    protected void I1(T t10) {
        this.f93428e.complete(t10);
    }

    public void K1(@Nullable T t10, @Nullable Throwable th) {
        v1.a.b(this, null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.function.BiFunction
    public /* bridge */ /* synthetic */ Unit apply(Object obj, Throwable th) {
        K1(obj, th);
        return Unit.INSTANCE;
    }
}
