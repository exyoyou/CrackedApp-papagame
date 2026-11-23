package com.byazt.mm;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1704, 15})
public class uj implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public EventListener f16951c;

    public uj(EventListener eventListener) {
        this.f16951c = eventListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null || this.f16951c == null) {
            return null;
        }
        return this.f16951c.onEvent(((Integer) sparseArray.get(-99999987)).intValue(), com.byazt.iob.c.c((SparseArray<Object>) sparseArray.get(-99999979)));
    }
}
