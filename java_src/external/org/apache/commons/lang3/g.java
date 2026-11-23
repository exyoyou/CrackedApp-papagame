package external.org.apache.commons.lang3;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f91012a = "The value %s is not in the specified exclusive range of %s to %s";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f91013b = "The value %s is not in the specified inclusive range of %s to %s";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f91014c = "The string %s does not match the pattern %s";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f91015d = "The validated object is null";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f91016e = "The validated expression is false";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f91017f = "The validated array contains null element at index: %d";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f91018g = "The validated collection contains null element at index: %d";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f91019h = "The validated character sequence is blank";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f91020i = "The validated array is empty";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f91021j = "The validated character sequence is empty";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f91022k = "The validated collection is empty";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f91023l = "The validated map is empty";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f91024m = "The validated array index is invalid: %d";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f91025n = "The validated character sequence index is invalid: %d";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f91026o = "The validated collection index is invalid: %d";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f91027p = "The validated state is false";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f91028q = "Cannot assign a %s to a %s";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f91029r = "Expected type: %s, actual: %s";

    public static <T> T[] A(T[] tArr) {
        return (T[]) B(tArr, f91020i, new Object[0]);
    }

    public static <T> T[] B(T[] tArr, String str, Object... objArr) {
        if (tArr == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (tArr.length != 0) {
            return tArr;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static <T> T C(T t10) {
        return (T) D(t10, f91015d, new Object[0]);
    }

    public static <T> T D(T t10, String str, Object... objArr) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static <T extends CharSequence> T E(T t10, int i10) {
        return (T) F(t10, i10, f91025n, Integer.valueOf(i10));
    }

    public static <T extends CharSequence> T F(T t10, int i10, String str, Object... objArr) {
        C(t10);
        if (i10 < 0 || i10 >= t10.length()) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return t10;
    }

    public static <T extends Collection<?>> T G(T t10, int i10) {
        return (T) H(t10, i10, f91026o, Integer.valueOf(i10));
    }

    public static <T extends Collection<?>> T H(T t10, int i10, String str, Object... objArr) {
        C(t10);
        if (i10 < 0 || i10 >= t10.size()) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return t10;
    }

    public static <T> T[] I(T[] tArr, int i10) {
        return (T[]) J(tArr, i10, f91024m, Integer.valueOf(i10));
    }

    public static <T> T[] J(T[] tArr, int i10, String str, Object... objArr) {
        C(tArr);
        if (i10 < 0 || i10 >= tArr.length) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return tArr;
    }

    public static void K(boolean z10) {
        if (!z10) {
            throw new IllegalStateException(f91027p);
        }
    }

    public static void L(boolean z10, String str, Object... objArr) {
        if (!z10) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    public static <T> void a(T t10, T t11, Comparable<T> comparable) {
        if (comparable.compareTo(t10) <= 0 || comparable.compareTo(t11) >= 0) {
            throw new IllegalArgumentException(String.format(f91012a, comparable, t10, t11));
        }
    }

    public static <T> void b(T t10, T t11, Comparable<T> comparable, String str, Object... objArr) {
        if (comparable.compareTo(t10) <= 0 || comparable.compareTo(t11) >= 0) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T> void c(T t10, T t11, Comparable<T> comparable) {
        if (comparable.compareTo(t10) < 0 || comparable.compareTo(t11) > 0) {
            throw new IllegalArgumentException(String.format(f91013b, comparable, t10, t11));
        }
    }

    public static <T> void d(T t10, T t11, Comparable<T> comparable, String str, Object... objArr) {
        if (comparable.compareTo(t10) < 0 || comparable.compareTo(t11) > 0) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void e(Class<?> cls, Class<?> cls2) {
        if (cls.isAssignableFrom(cls2)) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = cls2 == null ? "null" : cls2.getName();
        objArr[1] = cls.getName();
        throw new IllegalArgumentException(String.format(f91028q, objArr));
    }

    public static void f(Class<?> cls, Class<?> cls2, String str, Object... objArr) {
        if (!cls.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void g(Class<?> cls, Object obj) {
        if (cls.isInstance(obj)) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = cls.getName();
        objArr[1] = obj == null ? "null" : obj.getClass().getName();
        throw new IllegalArgumentException(String.format(f91029r, objArr));
    }

    public static void h(Class<?> cls, Object obj, String str, Object... objArr) {
        if (!cls.isInstance(obj)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void i(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException(f91016e);
        }
    }

    public static void j(boolean z10, String str, double d10) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, Double.valueOf(d10)));
        }
    }

    public static void k(boolean z10, String str, long j10) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, Long.valueOf(j10)));
        }
    }

    public static void l(boolean z10, String str, Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void m(CharSequence charSequence, String str) {
        if (!Pattern.matches(str, charSequence)) {
            throw new IllegalArgumentException(String.format(f91014c, charSequence, str));
        }
    }

    public static void n(CharSequence charSequence, String str, String str2, Object... objArr) {
        if (!Pattern.matches(str, charSequence)) {
            throw new IllegalArgumentException(String.format(str2, objArr));
        }
    }

    public static <T extends Iterable<?>> T o(T t10) {
        return (T) p(t10, f91018g, new Object[0]);
    }

    public static <T extends Iterable<?>> T p(T t10, String str, Object... objArr) {
        C(t10);
        Iterator it2 = t10.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException(String.format(str, a.z(objArr, Integer.valueOf(i10))));
            }
            i10++;
        }
        return t10;
    }

    public static <T> T[] q(T[] tArr) {
        return (T[]) r(tArr, f91017f, new Object[0]);
    }

    public static <T> T[] r(T[] tArr, String str, Object... objArr) {
        C(tArr);
        for (int i10 = 0; i10 < tArr.length; i10++) {
            if (tArr[i10] == null) {
                throw new IllegalArgumentException(String.format(str, a.o(objArr, Integer.valueOf(i10))));
            }
        }
        return tArr;
    }

    public static <T extends CharSequence> T s(T t10) {
        return (T) t(t10, f91019h, new Object[0]);
    }

    public static <T extends CharSequence> T t(T t10, String str, Object... objArr) {
        if (t10 == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (e.e0(t10)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t10;
    }

    public static <T extends CharSequence> T u(T t10) {
        return (T) v(t10, f91021j, new Object[0]);
    }

    public static <T extends CharSequence> T v(T t10, String str, Object... objArr) {
        if (t10 == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (t10.length() != 0) {
            return t10;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static <T extends Collection<?>> T w(T t10) {
        return (T) x(t10, f91022k, new Object[0]);
    }

    public static <T extends Collection<?>> T x(T t10, String str, Object... objArr) {
        if (t10 == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (t10.isEmpty()) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t10;
    }

    public static <T extends Map<?, ?>> T y(T t10) {
        return (T) z(t10, f91023l, new Object[0]);
    }

    public static <T extends Map<?, ?>> T z(T t10, String str, Object... objArr) {
        if (t10 == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (t10.isEmpty()) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t10;
    }
}
