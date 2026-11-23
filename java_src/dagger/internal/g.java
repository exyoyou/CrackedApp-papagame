package dagger.internal;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class g<V> implements Map<Class<?>, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, V> f90834b;

    public static class a<V> implements e<Map<Class<?>, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e<Map<String, V>> f90835a;

        private a(e<Map<String, V>> delegate) {
            this.f90835a = delegate;
        }

        public static <V> a<V> b(e<Map<String, V>> delegate) {
            return new a<>(delegate);
        }

        @Override // vb.a, tb.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<Class<?>, V> get() {
            return g.a(this.f90835a.get());
        }
    }

    public static class b<V> implements e<Map<Class<?>, l<V>>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e<Map<String, l<V>>> f90836a;

        private b(e<Map<String, l<V>>> delegate) {
            this.f90836a = delegate;
        }

        public static <V> b<V> b(e<Map<String, l<V>>> delegate) {
            return new b<>(delegate);
        }

        @Override // vb.a, tb.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<Class<?>, l<V>> get() {
            return g.a(this.f90836a.get());
        }
    }

    private g(Map<String, V> delegate) {
        this.f90834b = delegate;
    }

    public static <V> Map<Class<?>, V> a(Map<String, V> delegate) {
        return new g(delegate);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public V put(Class<?> key, V value) {
        throw new UnsupportedOperationException("Dagger map bindings are immutable");
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Dagger map bindings are immutable");
    }

    @Override // java.util.Map
    public boolean containsKey(Object key) {
        if (key instanceof Class) {
            return this.f90834b.containsKey(((Class) key).getName());
        }
        throw new IllegalArgumentException("Key must be a class");
    }

    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return this.f90834b.containsValue(value);
    }

    @Override // java.util.Map
    public Set<Map.Entry<Class<?>, V>> entrySet() {
        throw new UnsupportedOperationException("Maps created with @LazyClassKey do not support usage of entrySet(). Consider @ClassKey instead.");
    }

    @Override // java.util.Map
    public V get(Object key) {
        if (key instanceof Class) {
            return this.f90834b.get(((Class) key).getName());
        }
        throw new IllegalArgumentException("Key must be a class");
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f90834b.isEmpty();
    }

    @Override // java.util.Map
    public Set<Class<?>> keySet() {
        throw new UnsupportedOperationException("Maps created with @LazyClassKey do not support usage of keySet(). Consider @ClassKey instead.");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends Class<?>, ? extends V> map) {
        throw new UnsupportedOperationException("Dagger map bindings are immutable");
    }

    @Override // java.util.Map
    public V remove(Object key) {
        throw new UnsupportedOperationException("Dagger map bindings are immutable");
    }

    @Override // java.util.Map
    public int size() {
        return this.f90834b.size();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return this.f90834b.values();
    }
}
