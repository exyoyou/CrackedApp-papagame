package org.springframework.util;

import java.io.Serializable;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes10.dex */
public class LinkedMultiValueMap<K, V> extends LinkedHashMap<K, V> implements Serializable, Cloneable {
    public void add(K key, V value) {
        put(key, value);
    }
}
