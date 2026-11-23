package com.squareup.wire;

import java.time.Instant;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class k {
    @NotNull
    public static final Instant a(long j10, long j11) {
        Instant instantOfEpochSecond = Instant.ofEpochSecond(j10, j11);
        Intrinsics.checkNotNullExpressionValue(instantOfEpochSecond, "ofEpochSecond(...)");
        return instantOfEpochSecond;
    }
}
