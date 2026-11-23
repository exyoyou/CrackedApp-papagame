package dagger.internal;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
abstract class a<K, V, V2> implements e<Map<K, V2>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<K, l<V>> f90824a;

    /* JADX INFO: renamed from: dagger.internal.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC1155a<K, V, V2> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final LinkedHashMap<K, l<V>> f90825a;

        AbstractC1155a(int size) {
            this.f90825a = b.d(size);
        }

        AbstractC1155a<K, V, V2> a(K k10, l<V> lVar) {
            this.f90825a.put((K) k.c(k10, "key"), (l) k.c(lVar, com.umeng.analytics.pro.f.M));
            return this;
        }

        AbstractC1155a<K, V, V2> b(l<Map<K, V2>> mapOfProviders) {
            if (mapOfProviders instanceof c) {
                return b(((c) mapOfProviders).a());
            }
            this.f90825a.putAll(((a) mapOfProviders).f90824a);
            return this;
        }
    }

    a(Map<K, l<V>> map) {
        this.f90824a = Collections.unmodifiableMap(map);
    }

    final Map<K, l<V>> b() {
        return this.f90824a;
    }
}
