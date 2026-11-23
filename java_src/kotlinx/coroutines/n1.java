package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class n1 {
    @ExperimentalCoroutinesApi
    public static /* synthetic */ void a() {
    }

    @NotNull
    public static final Executor b(@NotNull CoroutineDispatcher coroutineDispatcher) {
        Executor executorZ;
        ExecutorCoroutineDispatcher executorCoroutineDispatcher = coroutineDispatcher instanceof ExecutorCoroutineDispatcher ? (ExecutorCoroutineDispatcher) coroutineDispatcher : null;
        return (executorCoroutineDispatcher == null || (executorZ = executorCoroutineDispatcher.z()) == null) ? new y0(coroutineDispatcher) : executorZ;
    }

    @JvmName(name = "from")
    @NotNull
    public static final CoroutineDispatcher c(@NotNull Executor executor) {
        CoroutineDispatcher coroutineDispatcher;
        y0 y0Var = executor instanceof y0 ? (y0) executor : null;
        return (y0Var == null || (coroutineDispatcher = y0Var.f93849b) == null) ? new m1(executor) : coroutineDispatcher;
    }

    @JvmName(name = "from")
    @NotNull
    public static final ExecutorCoroutineDispatcher d(@NotNull ExecutorService executorService) {
        return new m1(executorService);
    }
}
