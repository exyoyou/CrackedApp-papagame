package kotlinx.coroutines.selects;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.c1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public interface j<R> {
    void f(@Nullable Object obj);

    void g(@NotNull c1 c1Var);

    @NotNull
    CoroutineContext getContext();

    boolean i(@NotNull Object obj, @Nullable Object obj2);
}
