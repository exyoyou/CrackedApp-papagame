package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class d1 implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final c1 f92717b;

    public d1(@NotNull c1 c1Var) {
        this.f92717b = c1Var;
    }

    @Override // kotlinx.coroutines.m
    public void a(@Nullable Throwable th) {
        this.f92717b.dispose();
    }

    @NotNull
    public String toString() {
        return "DisposeOnCancel[" + this.f92717b + ']';
    }
}
