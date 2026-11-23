package kotlinx.coroutines.internal;

import java.util.List;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.e2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public final class f0 implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final f0 f93496a = new f0();

    private f0() {
    }

    @Override // kotlinx.coroutines.internal.b0
    public int a() {
        return -1;
    }

    @Override // kotlinx.coroutines.internal.b0
    @Nullable
    public String b() {
        return b0.a.a(this);
    }

    @Override // kotlinx.coroutines.internal.b0
    @NotNull
    public e2 c(@NotNull List<? extends b0> list) {
        return new e0(null, null, 2, null);
    }
}
