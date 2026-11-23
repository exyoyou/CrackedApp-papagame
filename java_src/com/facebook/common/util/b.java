package com.facebook.common.util;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f26940a = 31;

    public static int a(int i10) {
        return i10 + 31;
    }

    public static int b(int i10, int i11) {
        return ((i10 + 31) * 31) + i11;
    }

    public static int c(int i10, int i11, int i12) {
        return ((((i10 + 31) * 31) + i11) * 31) + i12;
    }

    public static int d(int i10, int i11, int i12, int i13) {
        return ((((((i10 + 31) * 31) + i11) * 31) + i12) * 31) + i13;
    }

    public static int e(int i10, int i11, int i12, int i13, int i14) {
        return ((((((((i10 + 31) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14;
    }

    public static int f(int i10, int i11, int i12, int i13, int i14, int i15) {
        return ((((((((((i10 + 31) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15;
    }

    public static int g(@Nullable Object o10) {
        return a(o10 == null ? 0 : o10.hashCode());
    }

    public static int h(@Nullable Object o10, @Nullable Object o11) {
        return b(o10 == null ? 0 : o10.hashCode(), o11 != null ? o11.hashCode() : 0);
    }

    public static int i(@Nullable Object o10, @Nullable Object o11, @Nullable Object o12) {
        return c(o10 == null ? 0 : o10.hashCode(), o11 == null ? 0 : o11.hashCode(), o12 != null ? o12.hashCode() : 0);
    }

    public static int j(@Nullable Object o10, @Nullable Object o11, @Nullable Object o12, @Nullable Object o13) {
        return d(o10 == null ? 0 : o10.hashCode(), o11 == null ? 0 : o11.hashCode(), o12 == null ? 0 : o12.hashCode(), o13 != null ? o13.hashCode() : 0);
    }

    public static int k(@Nullable Object o10, @Nullable Object o11, @Nullable Object o12, @Nullable Object o13, @Nullable Object o14) {
        return e(o10 == null ? 0 : o10.hashCode(), o11 == null ? 0 : o11.hashCode(), o12 == null ? 0 : o12.hashCode(), o13 == null ? 0 : o13.hashCode(), o14 != null ? o14.hashCode() : 0);
    }

    public static int l(@Nullable Object o10, @Nullable Object o11, @Nullable Object o12, @Nullable Object o13, @Nullable Object o14, @Nullable Object o15) {
        return f(o10 == null ? 0 : o10.hashCode(), o11 == null ? 0 : o11.hashCode(), o12 == null ? 0 : o12.hashCode(), o13 == null ? 0 : o13.hashCode(), o14 == null ? 0 : o14.hashCode(), o15 == null ? 0 : o15.hashCode());
    }
}
