package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class StartedLazily implements r {
    @Override // kotlinx.coroutines.flow.r
    @NotNull
    public e<SharingCommand> a(@NotNull u<Integer> uVar) {
        return g.I0(new StartedLazily$command$1(uVar, null));
    }

    @NotNull
    public String toString() {
        return "SharingStarted.Lazily";
    }
}
