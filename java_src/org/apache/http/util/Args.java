package org.apache.http.util;

import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class Args {
    public static void check(boolean z10, String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T extends CharSequence> T notBlank(T t10, String str) {
        if (t10 == null) {
            throw new IllegalArgumentException(str + " may not be null");
        }
        if (!TextUtils.isBlank(t10)) {
            return t10;
        }
        throw new IllegalArgumentException(str + " may not be blank");
    }

    public static <T extends CharSequence> T notEmpty(T t10, String str) {
        if (t10 == null) {
            throw new IllegalArgumentException(str + " may not be null");
        }
        if (!TextUtils.isEmpty(t10)) {
            return t10;
        }
        throw new IllegalArgumentException(str + " may not be empty");
    }

    public static int notNegative(int i10, String str) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + " may not be negative");
    }

    public static <T> T notNull(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException(str + " may not be null");
    }

    public static int positive(int i10, String str) {
        if (i10 > 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + " may not be negative or zero");
    }

    public static void check(boolean z10, String str, Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static long notNegative(long j10, String str) {
        if (j10 >= 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + " may not be negative");
    }

    public static long positive(long j10, String str) {
        if (j10 > 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + " may not be negative or zero");
    }

    public static <E, T extends Collection<E>> T notEmpty(T t10, String str) {
        if (t10 != null) {
            if (!t10.isEmpty()) {
                return t10;
            }
            throw new IllegalArgumentException(str + " may not be empty");
        }
        throw new IllegalArgumentException(str + " may not be null");
    }
}
