package kotlinx.coroutines.scheduling;

import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    @JvmName(name = "isSchedulerWorker")
    public static final boolean a(@NotNull Thread thread) {
        return thread instanceof CoroutineScheduler.c;
    }

    @JvmName(name = "mayNotBlock")
    public static final boolean b(@NotNull Thread thread) {
        return (thread instanceof CoroutineScheduler.c) && ((CoroutineScheduler.c) thread).f93662d == CoroutineScheduler.WorkerState.CPU_ACQUIRED;
    }
}
