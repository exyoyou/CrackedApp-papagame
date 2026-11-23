package dagger.internal;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class h<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<K, V> f90837a;

    private h(int size) {
        this.f90837a = b.d(size);
    }

    public static <K, V> h<K, V> b(int size) {
        return new h<>(size);
    }

    public Map<K, V> a() {
        return this.f90837a.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f90837a);
    }

    public h<K, V> c(K key, V value) {
        this.f90837a.put(key, value);
        return this;
    }

    public h<K, V> d(Map<K, V> map) {
        this.f90837a.putAll(map);
        return this;
    }
}
