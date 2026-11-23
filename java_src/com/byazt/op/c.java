package com.byazt.op;

import android.util.SparseArray;
import c1.e;
import c1.f;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;
import java.util.function.IntSupplier;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1062, 20})
public abstract class c implements Function<SparseArray<Object>, Object>, IntSupplier {
    public static <T> T objectValue(Object obj, Class<T> cls, T t10) {
        if (obj instanceof ValueSet.ValueGetter) {
            obj = (T) ((ValueSet.ValueGetter) obj).get();
        } else if (e.a(obj) && !b.a(obj) && !(obj instanceof ValueSet)) {
            obj = (T) f.a(obj).get();
        }
        return cls.isInstance(obj) ? (T) obj : t10;
    }

    public abstract <T> T applyFunction(int i10, ValueSet valueSet, Class<T> cls);

    public abstract SparseArray<Object> get();

    @Override // java.util.function.IntSupplier
    public int getAsInt() {
        return 7000;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        ValueSet valueSetTt = ve.c(sparseArray).tt();
        int iIntValue = valueSetTt.intValue(-99999987, 0);
        return iIntValue == -99999986 ? get() : applyFunction(iIntValue, valueSetTt, (Class) valueSetTt.objectValue(-99999985, Class.class));
    }
}
