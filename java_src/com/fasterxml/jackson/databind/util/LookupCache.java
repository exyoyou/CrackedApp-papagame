package com.fasterxml.jackson.databind.util;

/* JADX INFO: loaded from: classes9.dex */
public interface LookupCache<K, V> {
    void clear();

    V get(Object obj);

    V put(K k10, V v10);

    V putIfAbsent(K k10, V v10);

    int size();
}
