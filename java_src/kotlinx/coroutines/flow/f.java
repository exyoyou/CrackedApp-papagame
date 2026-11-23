package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface f<T> {
    @Nullable
    Object emit(T t10, @NotNull Continuation<? super Unit> continuation);
}
