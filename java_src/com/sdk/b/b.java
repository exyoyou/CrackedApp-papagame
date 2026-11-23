package com.sdk.b;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b<K, V> extends ConcurrentHashMap<K, Long> {
    private static final long serialVersionUID = 5514969596535320724L;

    public b(int i10, float f10) {
        super(i10, f10, 16);
    }

    public synchronized Long a(Object obj) {
        return (Long) super.remove(obj);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public synchronized void clear() {
        super.clear();
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public synchronized boolean containsKey(Object obj) {
        boolean z10;
        Long l10 = (Long) super.get(obj);
        if (l10 == null || System.currentTimeMillis() >= l10.longValue()) {
            synchronized (this) {
                z10 = false;
            }
        } else {
            z10 = true;
        }
        return z10;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        synchronized (this) {
            if (!containsKey(obj)) {
                return null;
            }
            return (Long) super.get(obj);
        }
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        Long l10;
        synchronized (this) {
            l10 = (Long) super.remove(obj);
        }
        return l10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized Long put(K k10, Long l10) {
        if (containsKey(k10)) {
            synchronized (this) {
            }
        }
        return (Long) super.put(k10, l10);
    }
}
