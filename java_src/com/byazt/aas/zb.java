package com.byazt.aas;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 184})
public class zb<K, V> extends HashMap<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    public zb<String, Object> c(K k10, V v10) {
        put(k10, v10);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zb<String, Object> c(Map<? extends K, ? extends V> map) {
        putAll(map);
        return this;
    }
}
