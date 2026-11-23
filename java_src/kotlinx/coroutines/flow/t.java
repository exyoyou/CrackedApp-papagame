package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class t implements r {
    @Override // kotlinx.coroutines.flow.r
    @NotNull
    public e<SharingCommand> a(@NotNull u<Integer> uVar) {
        return g.L0(SharingCommand.START);
    }

    @NotNull
    public String toString() {
        return "SharingStarted.Eagerly";
    }
}
