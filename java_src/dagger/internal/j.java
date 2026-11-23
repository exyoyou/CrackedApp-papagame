package dagger.internal;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class j<K, V> extends dagger.internal.a<K, V, l<V>> implements dagger.a<Map<K, l<V>>> {

    public static final class b<K, V> extends dagger.internal.a.AbstractC1155a<K, V, l<V>> {

        class a implements l<Map<K, l<V>>> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ vb.a f90839a;

            a(final vb.a val$mapProviderFactory) {
                this.f90839a = val$mapProviderFactory;
            }

            @Override // vb.a, tb.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map<K, l<V>> get() {
                Map map = (Map) this.f90839a.get();
                if (map.isEmpty()) {
                    return Collections.emptyMap();
                }
                LinkedHashMap linkedHashMapD = dagger.internal.b.d(map.size());
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    linkedHashMapD.put(entry.getKey(), n.a((vb.a) entry.getValue()));
                }
                return Collections.unmodifiableMap(linkedHashMapD);
            }
        }

        public j<K, V> c() {
            return new j<>(this.f90825a);
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
        public b<K, V> b(l<Map<K, l<V>>> mapProviderFactory) {
            super.b(mapProviderFactory);
            return this;
        }

        @Deprecated
        public b<K, V> g(final vb.a<Map<K, vb.a<V>>> mapProviderFactory) {
            return b(new a(mapProviderFactory));
        }

        private b(int size) {
            super(size);
        }
    }

    public static <K, V> b<K, V> c(int size) {
        return new b<>(size);
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Map<K, l<V>> get() {
        return b();
    }

    private j(Map<K, l<V>> contributingMap) {
        super(contributingMap);
    }
}
