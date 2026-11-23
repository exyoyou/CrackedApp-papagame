package com.sdk.b;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap<K, V> f78449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f78450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f78451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b<K, Long> f78452d;

    public c(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f78451c = i10;
        this.f78449a = new LinkedHashMap<>(0, 0.75f, true);
        this.f78452d = new b<>(0, 0.75f);
    }

    public final void a(int i10) {
        while (true) {
            synchronized (this) {
                if (this.f78450b <= i10 || this.f78449a.isEmpty()) {
                    break;
                    break;
                }
                Map.Entry<K, V> next = this.f78449a.entrySet().iterator().next();
                K key = next.getKey();
                V value = next.getValue();
                this.f78449a.remove(key);
                this.f78452d.a(key);
                this.f78450b -= a(key, value);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a(K k10, V v10) {
        String str = (String) v10;
        int length = str == null ? 0 : str.length();
        if (length <= 0) {
            this.f78450b = 0;
            for (Map.Entry<K, V> entry : this.f78449a.entrySet()) {
                int i10 = this.f78450b;
                String str2 = (String) entry.getValue();
                this.f78450b = i10 + (str2 == null ? 0 : str2.length());
            }
        }
        return length;
    }
}
