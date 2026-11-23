package com.squareup.wire.internal;

import com.bykv.vk.component.ttvideo.player.C;
import java.time.Duration;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements r<Duration> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final c f82369a = new c();

    private c() {
    }

    @Override // com.squareup.wire.internal.r
    public /* bridge */ /* synthetic */ Object b(Duration duration) {
        return d(com.squareup.wire.v.a(duration));
    }

    @Override // com.squareup.wire.internal.r
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Duration a(@NotNull String value) {
        int i10;
        Intrinsics.checkNotNullParameter(value, "value");
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) value, 's', 0, false, 6, (Object) null);
        if (iIndexOf$default != value.length() - 1) {
            throw new NumberFormatException();
        }
        int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) value, external.org.apache.commons.lang3.d.f90941a, 0, false, 6, (Object) null);
        if (iIndexOf$default2 == -1) {
            String strSubstring = value.substring(0, iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            Duration durationOfSeconds = Duration.ofSeconds(Long.parseLong(strSubstring));
            Intrinsics.checkNotNullExpressionValue(durationOfSeconds, "ofSeconds(...)");
            return durationOfSeconds;
        }
        String strSubstring2 = value.substring(0, iIndexOf$default2);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        long j10 = Long.parseLong(strSubstring2);
        int i11 = iIndexOf$default2 + 1;
        String strSubstring3 = value.substring(i11, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
        long j11 = Long.parseLong(strSubstring3);
        if (StringsKt__StringsJVMKt.startsWith$default(value, "-", false, 2, null)) {
            j11 = -j11;
        }
        int i12 = iIndexOf$default - i11;
        int i13 = i12;
        while (true) {
            if (i13 >= 9) {
                break;
            }
            j11 *= (long) 10;
            i13++;
        }
        for (i10 = 9; i10 < i12; i10++) {
            j11 /= (long) 10;
        }
        Duration durationOfSeconds2 = Duration.ofSeconds(j10, j11);
        Intrinsics.checkNotNullExpressionValue(durationOfSeconds2, "ofSeconds(...)");
        return durationOfSeconds2;
    }

    @NotNull
    public String d(@NotNull Duration value) {
        String str;
        Intrinsics.checkNotNullParameter(value, "value");
        long seconds = value.getSeconds();
        int nano = value.getNano();
        if (seconds < 0) {
            if (seconds == Long.MIN_VALUE) {
                str = "-922337203685477580";
                seconds = 8;
            } else {
                seconds = -seconds;
                str = "-";
            }
            if (nano != 0) {
                seconds--;
                nano = 1000000000 - nano;
            }
        } else {
            str = "";
        }
        if (nano == 0) {
            String str2 = String.format("%s%ds", Arrays.copyOf(new Object[]{str, Long.valueOf(seconds)}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            return str2;
        }
        if (nano % 1000000 == 0) {
            String str3 = String.format("%s%d.%03ds", Arrays.copyOf(new Object[]{str, Long.valueOf(seconds), Long.valueOf(((long) nano) / C.MICROS_PER_SECOND)}, 3));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            return str3;
        }
        if (nano % 1000 == 0) {
            String str4 = String.format("%s%d.%06ds", Arrays.copyOf(new Object[]{str, Long.valueOf(seconds), Long.valueOf(((long) nano) / 1000)}, 3));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            return str4;
        }
        String str5 = String.format("%s%d.%09ds", Arrays.copyOf(new Object[]{str, Long.valueOf(seconds), Long.valueOf(((long) nano) / 1)}, 3));
        Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
        return str5;
    }
}
