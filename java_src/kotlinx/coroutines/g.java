package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class g extends h1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final Thread f93431h;

    public g(@NotNull Thread thread) {
        this.f93431h = thread;
    }

    @Override // kotlinx.coroutines.i1
    @NotNull
    protected Thread p0() {
        return this.f93431h;
    }
}
