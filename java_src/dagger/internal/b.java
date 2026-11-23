package dagger.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f90826a = 1073741824;

    private b() {
    }

    private static int a(int expectedSize) {
        if (expectedSize < 3) {
            return expectedSize + 1;
        }
        if (expectedSize < 1073741824) {
            return (int) ((expectedSize / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static <T> boolean b(List<T> list) {
        if (list.size() < 2) {
            return false;
        }
        return list.size() != new HashSet(list).size();
    }

    static <T> HashSet<T> c(int expectedSize) {
        return new HashSet<>(a(expectedSize));
    }

    public static <K, V> LinkedHashMap<K, V> d(int expectedSize) {
        return new LinkedHashMap<>(a(expectedSize));
    }

    public static <T> List<T> e(int size) {
        return size == 0 ? Collections.emptyList() : new ArrayList(size);
    }
}
