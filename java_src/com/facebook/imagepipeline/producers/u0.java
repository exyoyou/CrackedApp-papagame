package com.facebook.imagepipeline.producers;

import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface u0 {
    void a(String requestId, String producerName);

    void c(String requestId, String producerName, Throwable t10, @Nullable Map<String, String> extraMap);

    void d(String requestId, String producerName, String eventName);

    boolean f(String requestId);

    void g(String requestId, String producerName, @Nullable Map<String, String> extraMap);

    void h(String requestId, String producerName, @Nullable Map<String, String> extraMap);

    void i(String requestId, String producerName, boolean successful);
}
