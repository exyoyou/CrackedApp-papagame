package com.googlecode.mp4parser.util;

import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public class n<K extends Comparable, V> implements Map<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TreeMap<K, V> f33809b = new TreeMap<>(new a());

    class a implements Comparator<K> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(K k10, K k11) {
            return -k10.compareTo(k11);
        }
    }

    public n() {
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public V put(K k10, V v10) {
        return this.f33809b.put(k10, v10);
    }

    @Override // java.util.Map
    public void clear() {
        this.f33809b.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.f33809b.get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return this.f33809b.entrySet();
    }

    @Override // java.util.Map
    public V get(Object obj) {
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Comparable comparable = (Comparable) obj;
        if (isEmpty()) {
            return null;
        }
        Iterator<K> it2 = this.f33809b.keySet().iterator();
        K next = it2.next();
        while (true) {
            K k10 = next;
            if (!it2.hasNext()) {
                return this.f33809b.get(k10);
            }
            if (comparable.compareTo(k10) >= 0) {
                return this.f33809b.get(k10);
            }
            next = it2.next();
        }
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f33809b.isEmpty();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return this.f33809b.keySet();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        this.f33809b.putAll(map);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Comparable comparable = (Comparable) obj;
        if (isEmpty()) {
            return null;
        }
        Iterator<K> it2 = this.f33809b.keySet().iterator();
        K next = it2.next();
        while (true) {
            K k10 = next;
            if (!it2.hasNext()) {
                return this.f33809b.remove(k10);
            }
            if (comparable.compareTo(k10) >= 0) {
                return this.f33809b.remove(k10);
            }
            next = it2.next();
        }
    }

    @Override // java.util.Map
    public int size() {
        return this.f33809b.size();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return this.f33809b.values();
    }

    public n(K k10, V v10) {
        put(k10, v10);
    }
}
