package com.squareup.wire.internal;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final a f82392c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private long[] f82393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f82394b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final t a(long j10, long j11) {
            return new t((int) RangesKt___RangesKt.coerceAtMost(j10 / j11, 2147483647L));
        }

        private a() {
        }
    }

    public t(int i10) {
        this.f82393a = new long[i10];
    }

    private final void b(int i10) {
        long[] jArr = this.f82393a;
        if (i10 > jArr.length) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, Math.max(((jArr.length * 3) / 2) + 1, i10));
            Intrinsics.checkNotNullExpressionValue(jArrCopyOf, "copyOf(...)");
            this.f82393a = jArrCopyOf;
        }
    }

    public final void a(long j10) {
        b(this.f82394b + 1);
        long[] jArr = this.f82393a;
        int i10 = this.f82394b;
        this.f82394b = i10 + 1;
        jArr[i10] = j10;
    }

    public final boolean c() {
        return this.f82394b > 0;
    }

    @NotNull
    public final long[] d() {
        int i10 = this.f82394b;
        long[] jArr = this.f82393a;
        if (i10 < jArr.length) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, i10);
            Intrinsics.checkNotNullExpressionValue(jArrCopyOf, "copyOf(...)");
            this.f82393a = jArrCopyOf;
        }
        return this.f82393a;
    }

    @NotNull
    public String toString() {
        long[] jArrCopyOf = Arrays.copyOf(this.f82393a, this.f82394b);
        Intrinsics.checkNotNullExpressionValue(jArrCopyOf, "copyOf(...)");
        String string = Arrays.toString(jArrCopyOf);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
