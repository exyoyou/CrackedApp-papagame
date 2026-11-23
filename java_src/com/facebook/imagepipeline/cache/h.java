package com.facebook.imagepipeline.cache;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class h<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<V> f27696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final LinkedHashMap<K, V> f27697b = new LinkedHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f27698c = 0;

    public h(z<V> valueDescriptor) {
        this.f27696a = valueDescriptor;
    }

    private int i(@Nullable V value) {
        if (value == null) {
            return 0;
        }
        return this.f27696a.a(value);
    }

    public synchronized ArrayList<V> a() {
        ArrayList<V> arrayList;
        arrayList = new ArrayList<>((Collection<? extends V>) this.f27697b.values());
        this.f27697b.clear();
        this.f27698c = 0;
        return arrayList;
    }

    public synchronized boolean b(K key) {
        return this.f27697b.containsKey(key);
    }

    @Nullable
    public synchronized V c(K key) {
        return this.f27697b.get(key);
    }

    public synchronized int d() {
        return this.f27697b.size();
    }

    @Nullable
    public synchronized K e() {
        return this.f27697b.isEmpty() ? null : this.f27697b.keySet().iterator().next();
    }

    @VisibleForTesting
    synchronized ArrayList<K> f() {
        return new ArrayList<>(this.f27697b.keySet());
    }

    public synchronized ArrayList<Map.Entry<K, V>> g(@Nullable com.facebook.common.internal.j<K> predicate) {
        ArrayList<Map.Entry<K, V>> arrayList;
        arrayList = new ArrayList<>(this.f27697b.entrySet().size());
        for (Map.Entry<K, V> entry : this.f27697b.entrySet()) {
            if (predicate == null || predicate.apply(entry.getKey())) {
                arrayList.add(entry);
            }
        }
        return arrayList;
    }

    public synchronized int h() {
        return this.f27698c;
    }

    @VisibleForTesting
    synchronized ArrayList<V> j() {
        return new ArrayList<>(this.f27697b.values());
    }

    @Nullable
    public synchronized V k(K key, V value) {
        V vRemove;
        vRemove = this.f27697b.remove(key);
        this.f27698c -= i(vRemove);
        this.f27697b.put(key, value);
        this.f27698c += i(value);
        return vRemove;
    }

    @Nullable
    public synchronized V l(K key) {
        V vRemove;
        vRemove = this.f27697b.remove(key);
        this.f27698c -= i(vRemove);
        return vRemove;
    }

    public synchronized ArrayList<V> m(@Nullable com.facebook.common.internal.j<K> jVar) {
        ArrayList<V> arrayList;
        arrayList = new ArrayList<>();
        Iterator<Map.Entry<K, V>> it2 = this.f27697b.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (jVar == null || jVar.apply(next.getKey())) {
                arrayList.add(next.getValue());
                this.f27698c -= i(next.getValue());
                it2.remove();
            }
        }
        return arrayList;
    }

    public synchronized void n() {
        if (this.f27697b.isEmpty()) {
            this.f27698c = 0;
        }
    }
}
