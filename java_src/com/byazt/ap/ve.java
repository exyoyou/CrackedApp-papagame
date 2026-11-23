package com.byazt.ap;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 698, 54})
public class ve implements Loader {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f11656c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f11656c = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Loader
    public void load(int i10, ValueSet valueSet, EventListener eventListener) {
        if (valueSet == null || this.f11656c == null) {
            return;
        }
        com.byazt.mm.c cVar = new com.byazt.mm.c(valueSet);
        cVar.put(-99999987, Integer.valueOf(i10));
        cVar.put(-99999982, Integer.valueOf(i10));
        this.f11656c.apply(cVar);
    }
}
