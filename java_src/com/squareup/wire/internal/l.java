package com.squareup.wire.internal;

import java.time.Instant;
import java.time.format.DateTimeFormatter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class l implements r<Instant> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final l f82375a = new l();

    private l() {
    }

    @Override // com.squareup.wire.internal.r
    public /* bridge */ /* synthetic */ Object b(Instant instant) {
        return d(com.squareup.wire.a0.a(instant));
    }

    @Override // com.squareup.wire.internal.r
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Instant a(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Instant instantFrom = Instant.from(DateTimeFormatter.ISO_OFFSET_DATE_TIME.parse(value));
        Intrinsics.checkNotNullExpressionValue(instantFrom, "from(...)");
        return instantFrom;
    }

    @NotNull
    public Object d(@NotNull Instant value) {
        Intrinsics.checkNotNullParameter(value, "value");
        String str = DateTimeFormatter.ISO_INSTANT.format(g.a(value));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
