package kotlinx.coroutines;

import java.util.concurrent.Future;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class b1 implements c1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Future<?> f92346b;

    public b1(@NotNull Future<?> future) {
        this.f92346b = future;
    }

    @Override // kotlinx.coroutines.c1
    public void dispose() {
        this.f92346b.cancel(false);
    }

    @NotNull
    public String toString() {
        return "DisposableFutureHandle[" + this.f92346b + ']';
    }
}
