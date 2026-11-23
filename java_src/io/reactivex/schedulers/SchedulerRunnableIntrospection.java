package io.reactivex.schedulers;

import io.reactivex.annotations.NonNull;

/* JADX INFO: loaded from: classes.dex */
public interface SchedulerRunnableIntrospection {
    @NonNull
    Runnable getWrappedRunnable();
}
