package com.facebook.common.internal;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class i {
    private i() {
    }

    private static String a(int index, int size, @Nullable String desc) {
        if (index < 0) {
            return r("%s (%s) must not be negative", desc, Integer.valueOf(index));
        }
        if (size >= 0) {
            return r("%s (%s) must be less than size (%s)", desc, Integer.valueOf(index), Integer.valueOf(size));
        }
        throw new IllegalArgumentException("negative size: " + size);
    }

    private static String b(int index, int size, @Nullable String desc) {
        if (index < 0) {
            return r("%s (%s) must not be negative", desc, Integer.valueOf(index));
        }
        if (size >= 0) {
            return r("%s (%s) must not be greater than size (%s)", desc, Integer.valueOf(index), Integer.valueOf(size));
        }
        throw new IllegalArgumentException("negative size: " + size);
    }

    private static String c(int start, int end, int size) {
        if (start < 0 || start > size) {
            return b(start, size, "start index");
        }
        return (end < 0 || end > size) ? b(end, size, "end index") : r("end index (%s) must not be less than start index (%s)", Integer.valueOf(end), Integer.valueOf(start));
    }

    public static void d(@Nullable Boolean expression) {
        if (expression != null && !expression.booleanValue()) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean expression, @Nullable Object errorMessage) {
        if (!expression) {
            throw new IllegalArgumentException(String.valueOf(errorMessage));
        }
    }

    public static void f(boolean expression, @Nullable String errorMessageTemplate, Object... errorMessageArgs) {
        if (!expression) {
            throw new IllegalArgumentException(r(errorMessageTemplate, errorMessageArgs));
        }
    }

    public static int g(int index, int size) {
        return h(index, size, "index");
    }

    public static int h(int index, int size, @Nullable String desc) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException(a(index, size, desc));
        }
        return index;
    }

    public static <T> T i(@Nullable T reference) {
        reference.getClass();
        return reference;
    }

    public static <T> T j(@Nullable T reference, @Nullable Object errorMessage) {
        if (reference != null) {
            return reference;
        }
        throw new NullPointerException(String.valueOf(errorMessage));
    }

    public static <T> T k(@Nullable T reference, @Nullable String errorMessageTemplate, Object... errorMessageArgs) {
        if (reference != null) {
            return reference;
        }
        throw new NullPointerException(r(errorMessageTemplate, errorMessageArgs));
    }

    public static int l(int index, int size) {
        return m(index, size, "index");
    }

    public static int m(int index, int size, @Nullable String desc) {
        if (index < 0 || index > size) {
            throw new IndexOutOfBoundsException(b(index, size, desc));
        }
        return index;
    }

    public static void n(int start, int end, int size) {
        if (start < 0 || end < start || end > size) {
            throw new IndexOutOfBoundsException(c(start, end, size));
        }
    }

    public static void o(boolean expression) {
        if (!expression) {
            throw new IllegalStateException();
        }
    }

    public static void p(boolean expression, @Nullable Object errorMessage) {
        if (!expression) {
            throw new IllegalStateException(String.valueOf(errorMessage));
        }
    }

    public static void q(boolean expression, @Nullable String errorMessageTemplate, Object... errorMessageArgs) {
        if (!expression) {
            throw new IllegalStateException(r(errorMessageTemplate, errorMessageArgs));
        }
    }

    static String r(@Nullable String template, Object... args) {
        int iIndexOf;
        String strValueOf = String.valueOf(template);
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + (args.length * 16));
        int i10 = 0;
        int i11 = 0;
        while (i10 < args.length && (iIndexOf = strValueOf.indexOf("%s", i11)) != -1) {
            sb2.append(strValueOf.substring(i11, iIndexOf));
            sb2.append(args[i10]);
            i11 = iIndexOf + 2;
            i10++;
        }
        sb2.append(strValueOf.substring(i11));
        if (i10 < args.length) {
            sb2.append(" [");
            sb2.append(args[i10]);
            for (int i12 = i10 + 1; i12 < args.length; i12++) {
                sb2.append(", ");
                sb2.append(args[i12]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }
}
