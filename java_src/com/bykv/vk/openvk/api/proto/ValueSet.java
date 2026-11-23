package com.bykv.vk.openvk.api.proto;

import android.annotation.TargetApi;
import android.util.SparseArray;
import java.util.Set;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes9.dex */
public interface ValueSet {

    @TargetApi(24)
    public interface ValueGetter<T> extends Supplier<T> {
        @Override // java.util.function.Supplier
        T get();
    }

    <T> T[] arrayValue(int i10, Class<T> cls);

    boolean booleanValue(int i10);

    boolean booleanValue(int i10, boolean z10);

    boolean containsKey(int i10);

    double doubleValue(int i10);

    float floatValue(int i10);

    float floatValue(int i10, float f10);

    int intValue(int i10);

    int intValue(int i10, int i11);

    boolean isEmpty();

    Set<Integer> keys();

    long longValue(int i10);

    long longValue(int i10, long j10);

    <T> T objectValue(int i10, Class<T> cls);

    void remove(int i10);

    int size();

    SparseArray<Object> sparseArray();

    String stringValue(int i10);

    String stringValue(int i10, String str);
}
