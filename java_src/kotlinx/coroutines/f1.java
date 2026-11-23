package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class f1 implements q1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f92806b;

    public f1(boolean z10) {
        this.f92806b = z10;
    }

    @Override // kotlinx.coroutines.q1
    @Nullable
    public f2 b() {
        return null;
    }

    @Override // kotlinx.coroutines.q1
    public boolean isActive() {
        return this.f92806b;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Empty{");
        sb2.append(isActive() ? "Active" : "New");
        sb2.append('}');
        return sb2.toString();
    }
}
