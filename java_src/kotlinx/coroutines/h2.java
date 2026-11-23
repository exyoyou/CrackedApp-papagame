package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public final class h2 implements c1, t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final h2 f93449b = new h2();

    private h2() {
    }

    @Override // kotlinx.coroutines.c1
    public void dispose() {
    }

    @Override // kotlinx.coroutines.t
    public boolean e(@NotNull Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.t
    @Nullable
    public v1 getParent() {
        return null;
    }

    @NotNull
    public String toString() {
        return "NonDisposableHandle";
    }
}
