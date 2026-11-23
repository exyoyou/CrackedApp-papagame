package com.xinzhu.overmind.utils;

import com.xinzhu.overmind.utils.wrappers.ObjectsWrapper;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public class d {
    public static <T> ArrayList<T> a(ArrayList<T> arrayList, T t10) {
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(t10);
        return arrayList;
    }

    public static <T> T[] b(Class<T> cls, T[] tArr, T t10) {
        return (T[]) c(cls, tArr, t10, false);
    }

    public static <T> T[] c(Class<T> cls, T[] tArr, T t10, boolean z10) {
        T[] tArr2;
        int i10 = 0;
        if (tArr == null) {
            tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 1));
        } else {
            if (!z10 && f(tArr, t10)) {
                return tArr;
            }
            int length = tArr.length;
            tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, length + 1));
            System.arraycopy(tArr, 0, tArr2, 0, length);
            i10 = length;
        }
        tArr2[i10] = t10;
        return tArr2;
    }

    public static void d(int i10, int i11) {
        if (i11 < 0 || i10 <= i11) {
            throw new ArrayIndexOutOfBoundsException("length=" + i10 + "; index=" + i11);
        }
    }

    public static boolean e(int[] iArr, int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean f(T[] tArr, T t10) {
        return h(tArr, t10) != -1;
    }

    public static <T> T g(T[] tArr) {
        if (tArr.length > 0) {
            return tArr[0];
        }
        return null;
    }

    public static int h(Object[] objArr, Object obj) {
        return i(objArr, obj, 0);
    }

    public static int i(Object[] objArr, Object obj, int i10) {
        if (o(objArr) || i10 >= objArr.length) {
            return -1;
        }
        while (i10 < objArr.length) {
            if (ObjectsWrapper.equals(objArr[i10], obj)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int j(Object[] objArr, Class<?> cls) {
        return k(objArr, cls, 0);
    }

    public static int k(Object[] objArr, Class<?> cls, int i10) {
        if (o(objArr) || i10 >= objArr.length) {
            return -1;
        }
        while (i10 < objArr.length) {
            if (cls.isInstance(objArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int l(Object[] objArr, Class<?> cls) {
        return m(objArr, cls, 0);
    }

    public static int m(Object[] objArr, Class<?> cls, int i10) {
        if (o(objArr) || i10 >= objArr.length) {
            return -1;
        }
        while (i10 < objArr.length) {
            Object obj = objArr[i10];
            if (obj != null && obj.getClass() == cls) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int n(Object[] objArr, Class<?> cls) {
        if (o(objArr)) {
            return -1;
        }
        for (int length = objArr.length - 1; length >= 0; length--) {
            Object obj = objArr[length];
            if (obj != null && obj.getClass() == cls) {
                return length;
            }
        }
        return -1;
    }

    public static <T> boolean o(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static <T> T[] p(T[] tArr, int i10) {
        if (tArr == null || i10 == 0) {
            return null;
        }
        return tArr.length == i10 ? tArr : (T[]) Arrays.copyOf(tArr, i10);
    }
}
