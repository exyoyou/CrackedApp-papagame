package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class q<K, V> implements t<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t<K, V> f27728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f27729b;

    public q(t<K, V> delegate, v tracker) {
        this.f27728a = delegate;
        this.f27729b = tracker;
    }

    @Override // com.facebook.imagepipeline.cache.t
    public int a() {
        return this.f27728a.a();
    }

    @Override // com.facebook.imagepipeline.cache.t
    public void b(K key) {
        this.f27728a.b(key);
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public CloseableReference<V> c(K key, CloseableReference<V> value) {
        this.f27729b.c(key);
        return this.f27728a.c(key, value);
    }

    @Override // com.facebook.imagepipeline.cache.t
    public boolean contains(K key) {
        return this.f27728a.contains(key);
    }

    @Override // com.facebook.cache.common.f
    @Nullable
    public String g() {
        return this.f27728a.g();
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public CloseableReference<V> get(K key) {
        CloseableReference<V> closeableReference = this.f27728a.get(key);
        if (closeableReference == null) {
            this.f27729b.b(key);
        } else {
            this.f27729b.a(key);
        }
        return closeableReference;
    }

    @Override // com.facebook.imagepipeline.cache.t
    public int getCount() {
        return this.f27728a.getCount();
    }

    @Override // com.facebook.imagepipeline.cache.t
    public int i(com.facebook.common.internal.j<K> predicate) {
        return this.f27728a.i(predicate);
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public V n(K key) {
        return this.f27728a.n(key);
    }

    @Override // com.facebook.imagepipeline.cache.t
    public boolean p(com.facebook.common.internal.j<K> predicate) {
        return this.f27728a.p(predicate);
    }

    @Override // com.facebook.common.memory.b
    public void q(MemoryTrimType trimType) {
        this.f27728a.q(trimType);
    }
}
