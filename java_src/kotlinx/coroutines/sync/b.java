package kotlinx.coroutines.sync;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface b {
    boolean a();

    int f();

    @Nullable
    Object g(@NotNull Continuation<? super Unit> continuation);

    void release();
}
