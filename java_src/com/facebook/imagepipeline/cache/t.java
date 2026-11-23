package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface t<K, V> extends com.facebook.common.memory.b, com.facebook.cache.common.f {

    public interface a {
        double a(MemoryTrimType trimType);
    }

    int a();

    void b(K key);

    @Nullable
    CloseableReference<V> c(K key, CloseableReference<V> value);

    boolean contains(K key);

    @Nullable
    CloseableReference<V> get(K key);

    int getCount();

    int i(com.facebook.common.internal.j<K> predicate);

    @Nullable
    V n(K key);

    boolean p(com.facebook.common.internal.j<K> predicate);
}
