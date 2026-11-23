package com.facebook.imagepipeline.producers;

import androidx.annotation.NonNull;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface t0 {
    void a(@NonNull ProducerContext producerContext, @NonNull String producerName, boolean successful);

    void b(@NonNull ProducerContext producerContext, @NonNull String producerName);

    void d(@NonNull ProducerContext producerContext, @NonNull String producerName, @Nullable Map<String, String> extraMap);

    boolean f(@NonNull ProducerContext producerContext, @NonNull String producerName);

    void h(@NonNull ProducerContext producerContext, @NonNull String producerName, @NonNull String eventName);

    void j(@NonNull ProducerContext producerContext, @NonNull String producerName, @Nullable Map<String, String> extraMap);

    void k(@NonNull ProducerContext producerContext, String producerName, Throwable t10, @Nullable Map<String, String> extraMap);
}
