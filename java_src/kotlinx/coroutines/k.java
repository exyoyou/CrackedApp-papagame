package kotlinx.coroutines;

import java.util.concurrent.Future;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class k implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Future<?> f93577b;

    public k(@NotNull Future<?> future) {
        this.f93577b = future;
    }

    @Override // kotlinx.coroutines.m
    public void a(@Nullable Throwable th) {
        if (th != null) {
            this.f93577b.cancel(false);
        }
    }

    @NotNull
    public String toString() {
        return "CancelFutureOnCancel[" + this.f93577b + ']';
    }
}
