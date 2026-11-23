package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class j implements Continuation<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final j f93393b = new j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final CoroutineContext f93394c = EmptyCoroutineContext.INSTANCE;

    private j() {
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return f93394c;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
    }
}
