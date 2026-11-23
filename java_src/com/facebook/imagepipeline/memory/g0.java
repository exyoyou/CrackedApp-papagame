package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
interface g0<T> {
    int a(T item);

    @Nullable
    T get(int size);

    @Nullable
    T pop();

    void put(T item);
}
