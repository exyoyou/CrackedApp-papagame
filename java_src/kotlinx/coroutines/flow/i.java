package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface i<T> extends n<T>, f<T> {
    @ExperimentalCoroutinesApi
    void c();

    boolean d(T t10);

    @NotNull
    u<Integer> e();

    @Nullable
    Object emit(T t10, @NotNull Continuation<? super Unit> continuation);
}
