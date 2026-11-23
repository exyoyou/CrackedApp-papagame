package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class i0 {
    @Nullable
    public abstract b<?> a();

    @Nullable
    public abstract Object b(@Nullable Object obj);

    @NotNull
    public String toString() {
        return kotlinx.coroutines.o0.a(this) + '@' + kotlinx.coroutines.o0.b(this);
    }
}
