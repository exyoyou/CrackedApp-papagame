package o4;

import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class a {
    public static void a(boolean z10) {
        if (!z10) {
            throw new AssertionError();
        }
    }

    public static void b(boolean z10, String str) {
        if (!z10) {
            throw new AssertionError(str);
        }
    }

    public static <T> T c(int i10, List<T> list) {
        b(i10 >= 0 && i10 < list.size(), "Index not in bound");
        return (T) f(list.get(i10), "Null value");
    }

    public static <K, V> V d(K k10, Map<K, V> map) {
        b(map.containsKey(k10), "Key not found");
        return (V) f(map.get(k10), "Null value");
    }

    public static <T> T e(@Nullable T t10) {
        if (t10 != null) {
            return t10;
        }
        throw new AssertionError();
    }

    public static <T> T f(@Nullable T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new AssertionError(str);
    }

    public static AssertionError g() {
        throw new AssertionError();
    }

    public static AssertionError h(Exception exc) {
        throw new AssertionError(exc);
    }

    public static AssertionError i(String str) {
        throw new AssertionError(str);
    }

    public static void j(boolean z10) {
    }

    public static void k(boolean z10, String str) {
    }

    public static <T> T l(@Nullable T t10) {
        return t10;
    }

    public static <T> T m(@Nullable T t10, String str) {
        return t10;
    }

    public static <T> T n(@Nullable T t10, String str) {
        return t10;
    }
}
