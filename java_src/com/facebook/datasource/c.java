package com.facebook.datasource;

import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface c<T> {
    @Nullable
    Throwable b();

    void c(e<T> dataSubscriber, Executor executor);

    boolean close();

    boolean d();

    boolean e();

    boolean f();

    @Nullable
    Map<String, Object> getExtras();

    float getProgress();

    @Nullable
    T getResult();

    boolean hasResult();

    boolean isClosed();
}
