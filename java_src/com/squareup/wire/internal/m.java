package com.squareup.wire.internal;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final a f82376c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private int[] f82377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f82378b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final m a(long j10, long j11) {
            return new m((int) RangesKt___RangesKt.coerceAtMost(j10 / j11, 2147483647L));
        }

        private a() {
        }
    }

    public m(int i10) {
        this.f82377a = new int[i10];
    }

    private final void b(int i10) {
        int[] iArr = this.f82377a;
        if (i10 > iArr.length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, Math.max(((iArr.length * 3) / 2) + 1, i10));
            Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(...)");
            this.f82377a = iArrCopyOf;
        }
    }

    public final void a(int i10) {
        b(this.f82378b + 1);
        int[] iArr = this.f82377a;
        int i11 = this.f82378b;
        this.f82378b = i11 + 1;
        iArr[i11] = i10;
    }

    public final boolean c() {
        return this.f82378b > 0;
    }

    @NotNull
    public final int[] d() {
        int i10 = this.f82378b;
        int[] iArr = this.f82377a;
        if (i10 < iArr.length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, i10);
            Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(...)");
            this.f82377a = iArrCopyOf;
        }
        return this.f82377a;
    }

    @NotNull
    public String toString() {
        int[] iArrCopyOf = Arrays.copyOf(this.f82377a, this.f82378b);
        Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(...)");
        String string = Arrays.toString(iArrCopyOf);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
