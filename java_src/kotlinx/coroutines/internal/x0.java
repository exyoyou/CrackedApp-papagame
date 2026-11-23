package kotlinx.coroutines.internal;

import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public final class x0 implements CoroutineContext.Key<w0<?>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final ThreadLocal<?> f93544b;

    public x0(@NotNull ThreadLocal<?> threadLocal) {
        this.f93544b = threadLocal;
    }

    private final ThreadLocal<?> a() {
        return this.f93544b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ x0 c(x0 x0Var, ThreadLocal threadLocal, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            threadLocal = x0Var.f93544b;
        }
        return x0Var.b(threadLocal);
    }

    @NotNull
    public final x0 b(@NotNull ThreadLocal<?> threadLocal) {
        return new x0(threadLocal);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x0) && Intrinsics.areEqual(this.f93544b, ((x0) obj).f93544b);
    }

    public int hashCode() {
        return this.f93544b.hashCode();
    }

    @NotNull
    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.f93544b + ')';
    }
}
