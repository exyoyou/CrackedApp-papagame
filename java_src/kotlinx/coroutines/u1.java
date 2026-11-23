package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class u1 extends a2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final s1 f93837f;

    public u1(@NotNull s1 s1Var) {
        this.f93837f = s1Var;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        this.f93837f.a(th);
    }
}
