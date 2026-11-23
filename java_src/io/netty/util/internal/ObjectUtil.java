package io.netty.util.internal;

import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public final class ObjectUtil {
    private ObjectUtil() {
    }

    public static <T> T[] checkNonEmpty(T[] tArr, String str) {
        checkNotNull(tArr, str);
        checkPositive(tArr.length, str + ".length");
        return tArr;
    }

    public static <T> T checkNotNull(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }

    public static int checkPositive(int i10, String str) {
        if (i10 > 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + ": " + i10 + " (expected: > 0)");
    }

    public static int checkPositiveOrZero(int i10, String str) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + ": " + i10 + " (expected: >= 0)");
    }

    public static int intValue(Integer num, int i10) {
        return num != null ? num.intValue() : i10;
    }

    public static long longValue(Long l10, long j10) {
        return l10 != null ? l10.longValue() : j10;
    }

    public static long checkPositive(long j10, String str) {
        if (j10 > 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + ": " + j10 + " (expected: > 0)");
    }

    public static long checkPositiveOrZero(long j10, String str) {
        if (j10 >= 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + ": " + j10 + " (expected: >= 0)");
    }

    public static <T extends Collection<?>> T checkNonEmpty(T t10, String str) {
        checkNotNull(t10, str);
        checkPositive(t10.size(), str + ".size");
        return t10;
    }
}
