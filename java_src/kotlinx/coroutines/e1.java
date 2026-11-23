package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class e1 extends a2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final c1 f92802f;

    public e1(@NotNull c1 c1Var) {
        this.f92802f = c1Var;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        this.f92802f.dispose();
    }
}
