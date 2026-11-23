package com.squareup.wire;

import java.time.Duration;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class e {
    @NotNull
    public static final Duration a(long j10, long j11) {
        Duration durationOfSeconds = Duration.ofSeconds(j10, j11);
        Intrinsics.checkNotNullExpressionValue(durationOfSeconds, "ofSeconds(...)");
        return durationOfSeconds;
    }
}
