package com.byazt.kq;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1556, 91})
public class sp {
    private static Object c(int i10, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Integer.valueOf(i10 * number.intValue());
        }
        if (number instanceof Long) {
            return Long.valueOf(((long) i10) * number.longValue());
        }
        if (number instanceof Float) {
            return Float.valueOf(i10 * number.floatValue());
        }
        if (number instanceof Double) {
            return Double.valueOf(((double) i10) * number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object c(long j10, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Long.valueOf(j10 * number.longValue());
            }
            if (number instanceof Float) {
                return Float.valueOf(j10 * number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(j10 * number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Long.valueOf(j10 * ((long) number.intValue()));
    }

    private static Object c(float f10, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Float.valueOf(f10 * number.longValue());
            }
            if (number instanceof Float) {
                return Float.valueOf(f10 * number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(((double) f10) * number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Float.valueOf(f10 * number.intValue());
    }

    private static Object c(double d10, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Double.valueOf(d10 * number.longValue());
            }
            if (number instanceof Float) {
                return Double.valueOf(d10 * ((double) number.floatValue()));
            }
            if (number instanceof Double) {
                return Double.valueOf(d10 * number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Double.valueOf(d10 * ((double) number.intValue()));
    }

    public static Object c(Number number, Number number2) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return c(number.longValue(), number2);
            }
            if (number instanceof Float) {
                return c(number.floatValue(), number2);
            }
            if (number instanceof Double) {
                return c(number.doubleValue(), number2);
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return c(number.intValue(), number2);
    }
}
