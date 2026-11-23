package com.facebook.common.memory;

/* JADX INFO: loaded from: classes9.dex */
public interface e<V> extends com.facebook.common.references.g<V>, b {
    V get(int size);

    @Override // com.facebook.common.references.g
    void release(V value);
}
