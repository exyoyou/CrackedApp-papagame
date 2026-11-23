package com.facebook.imagepipeline.core;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface f {
    Executor a();

    Executor b();

    Executor c();

    Executor d();

    Executor e();

    @Nullable
    ScheduledExecutorService f();

    Executor g();
}
