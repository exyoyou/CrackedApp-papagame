package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class p1 implements q1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final f2 f93627b;

    public p1(@NotNull f2 f2Var) {
        this.f93627b = f2Var;
    }

    @Override // kotlinx.coroutines.q1
    @NotNull
    public f2 b() {
        return this.f93627b;
    }

    @Override // kotlinx.coroutines.q1
    public boolean isActive() {
        return false;
    }

    @NotNull
    public String toString() {
        return super.toString();
    }
}
