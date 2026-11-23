package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class i implements kotlinx.coroutines.l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f93504b;

    public i(@NotNull CoroutineContext coroutineContext) {
        this.f93504b = coroutineContext;
    }

    @Override // kotlinx.coroutines.l0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f93504b;
    }

    @NotNull
    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}
