package kotlinx.coroutines.debug.internal;

import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    @NotNull
    public static final <T> Continuation<T> a(@NotNull Continuation<? super T> continuation) {
        return DebugProbesImpl.f92755a.H(continuation);
    }

    public static final void b(@NotNull Continuation<?> continuation) {
        DebugProbesImpl.f92755a.I(continuation);
    }

    public static final void c(@NotNull Continuation<?> continuation) {
        DebugProbesImpl.f92755a.J(continuation);
    }
}
