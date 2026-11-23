package kotlinx.coroutines;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class u extends w1 implements t {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @JvmField
    @NotNull
    public final v f93836f;

    public u(@NotNull v vVar) {
        this.f93836f = vVar;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        this.f93836f.h(H());
    }

    @Override // kotlinx.coroutines.t
    public boolean e(@NotNull Throwable th) {
        return H().p0(th);
    }

    @Override // kotlinx.coroutines.t
    @NotNull
    public v1 getParent() {
        return H();
    }
}
