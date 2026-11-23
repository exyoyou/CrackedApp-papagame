package com.squareup.wire.internal;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final C1040a f82366c = new C1040a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private double[] f82367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f82368b;

    /* JADX INFO: renamed from: com.squareup.wire.internal.a$a, reason: collision with other inner class name */
    public static final class C1040a {
        public /* synthetic */ C1040a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final a a(long j10, long j11) {
            return new a((int) RangesKt___RangesKt.coerceAtMost(j10 / j11, 2147483647L));
        }

        private C1040a() {
        }
    }

    public a(int i10) {
        this.f82367a = new double[i10];
    }

    private final void b(int i10) {
        double[] dArr = this.f82367a;
        if (i10 > dArr.length) {
            double[] dArrCopyOf = Arrays.copyOf(dArr, Math.max(((dArr.length * 3) / 2) + 1, i10));
            Intrinsics.checkNotNullExpressionValue(dArrCopyOf, "copyOf(...)");
            this.f82367a = dArrCopyOf;
        }
    }

    public final void a(double d10) {
        b(this.f82368b + 1);
        double[] dArr = this.f82367a;
        int i10 = this.f82368b;
        this.f82368b = i10 + 1;
        dArr[i10] = d10;
    }

    public final boolean c() {
        return this.f82368b > 0;
    }

    @NotNull
    public final double[] d() {
        int i10 = this.f82368b;
        double[] dArr = this.f82367a;
        if (i10 < dArr.length) {
            double[] dArrCopyOf = Arrays.copyOf(dArr, i10);
            Intrinsics.checkNotNullExpressionValue(dArrCopyOf, "copyOf(...)");
            this.f82367a = dArrCopyOf;
        }
        return this.f82367a;
    }

    @NotNull
    public String toString() {
        double[] dArrCopyOf = Arrays.copyOf(this.f82367a, this.f82368b);
        Intrinsics.checkNotNullExpressionValue(dArrCopyOf, "copyOf(...)");
        String string = Arrays.toString(dArrCopyOf);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
