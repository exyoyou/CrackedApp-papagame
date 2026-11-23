package com.squareup.wire.internal;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final a f82372c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private float[] f82373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f82374b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final e a(long j10, long j11) {
            return new e((int) RangesKt___RangesKt.coerceAtMost(j10 / j11, 2147483647L));
        }

        private a() {
        }
    }

    public e(int i10) {
        this.f82373a = new float[i10];
    }

    private final void b(int i10) {
        float[] fArr = this.f82373a;
        if (i10 > fArr.length) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, Math.max(((fArr.length * 3) / 2) + 1, i10));
            Intrinsics.checkNotNullExpressionValue(fArrCopyOf, "copyOf(...)");
            this.f82373a = fArrCopyOf;
        }
    }

    public final void a(float f10) {
        b(this.f82374b + 1);
        float[] fArr = this.f82373a;
        int i10 = this.f82374b;
        this.f82374b = i10 + 1;
        fArr[i10] = f10;
    }

    public final boolean c() {
        return this.f82374b > 0;
    }

    @NotNull
    public final float[] d() {
        int i10 = this.f82374b;
        float[] fArr = this.f82373a;
        if (i10 < fArr.length) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, i10);
            Intrinsics.checkNotNullExpressionValue(fArrCopyOf, "copyOf(...)");
            this.f82373a = fArrCopyOf;
        }
        return this.f82373a;
    }

    @NotNull
    public String toString() {
        float[] fArrCopyOf = Arrays.copyOf(this.f82373a, this.f82374b);
        Intrinsics.checkNotNullExpressionValue(fArrCopyOf, "copyOf(...)");
        String string = Arrays.toString(fArrCopyOf);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
