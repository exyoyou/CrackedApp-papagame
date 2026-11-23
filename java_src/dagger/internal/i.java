package dagger.internal;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class i<K, V> extends dagger.internal.a<K, V, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final l<Map<Object, Object>> f90838b = f.a(Collections.emptyMap());

    public static final class b<K, V> extends dagger.internal.a.AbstractC1155a<K, V, V> {
        public i<K, V> c() {
            return new i<>(this.f90825a);
        }

        @Override // dagger.internal.a.AbstractC1155a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public b<K, V> a(K key, l<V> providerOfValue) {
            super.a(key, providerOfValue);
            return this;
        }

        @Deprecated
        public b<K, V> e(K key, vb.a<V> providerOfValue) {
            return a(key, n.a(providerOfValue));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // dagger.internal.a.AbstractC1155a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public b<K, V> b(l<Map<K, V>> mapFactory) {
            super.b(mapFactory);
            return this;
        }

        @Deprecated
        public b<K, V> g(vb.a<Map<K, V>> mapFactory) {
            return b(n.a(mapFactory));
        }

        private b(int size) {
            super(size);
        }
    }

    public static <K, V> b<K, V> c(int size) {
        return new b<>(size);
    }

    public static <K, V> l<Map<K, V>> d() {
        return (l<Map<K, V>>) f90838b;
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Map<K, V> get() {
        LinkedHashMap linkedHashMapD = dagger.internal.b.d(b().size());
        for (Map.Entry<K, l<V>> entry : b().entrySet()) {
            linkedHashMapD.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(linkedHashMapD);
    }

    private i(Map<K, l<V>> map) {
        super(map);
    }
}
