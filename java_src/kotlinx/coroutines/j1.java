package kotlinx.coroutines;

import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class j1 {
    @NotNull
    public static final g1 a() {
        return new g(Thread.currentThread());
    }

    @InternalCoroutinesApi
    @PublishedApi
    @DelicateCoroutinesApi
    public static final boolean b(@NotNull Thread thread) {
        if (thread instanceof CoroutineScheduler.c) {
            return ((CoroutineScheduler.c) thread).q();
        }
        return false;
    }

    public static final void c(@NotNull Function0<Unit> function0) {
        function0.invoke();
    }

    @InternalCoroutinesApi
    public static final long d() {
        g1 g1VarA = v2.f93840a.a();
        if (g1VarA != null) {
            return g1VarA.m0();
        }
        return Long.MAX_VALUE;
    }

    @InternalCoroutinesApi
    @PublishedApi
    @DelicateCoroutinesApi
    public static final long e() {
        Thread threadCurrentThread = Thread.currentThread();
        if (threadCurrentThread instanceof CoroutineScheduler.c) {
            return ((CoroutineScheduler.c) threadCurrentThread).v();
        }
        throw new IllegalStateException("Expected CoroutineScheduler.Worker, but got " + threadCurrentThread);
    }
}
