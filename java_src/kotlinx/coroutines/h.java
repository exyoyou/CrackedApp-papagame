package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    @NotNull
    public static final <T> r0<T> a(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2) {
        return j.a(l0Var, coroutineContext, coroutineStart, function2);
    }

    @Nullable
    public static final <T> Object c(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return j.c(coroutineDispatcher, function2, continuation);
    }

    @NotNull
    public static final v1 d(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return j.e(l0Var, coroutineContext, coroutineStart, function2);
    }

    public static final <T> T f(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2) throws InterruptedException {
        return (T) i.a(coroutineContext, function2);
    }

    @Nullable
    public static final <T> Object h(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) throws Throwable {
        return j.g(coroutineContext, function2, continuation);
    }
}
