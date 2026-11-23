package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class w2 {
    @DelicateCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher a(int i10, @NotNull String str) {
        return z2.b(i10, str);
    }

    @DelicateCoroutinesApi
    @ExperimentalCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher b(@NotNull String str) {
        return x2.a(str);
    }
}
