package kotlinx.coroutines;

import java.util.concurrent.Future;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class l extends a2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Future<?> f93589f;

    public l(@NotNull Future<?> future) {
        this.f93589f = future;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        if (th != null) {
            this.f93589f.cancel(false);
        }
    }
}
