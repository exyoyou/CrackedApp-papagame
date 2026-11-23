package com.byazt.bog;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 935, 13})
public class tt implements Loader {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Void> f12002c;

    public tt(Function<SparseArray<Object>, Void> function) {
        this.f12002c = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Loader
    public void load(int i10, ValueSet valueSet, EventListener eventListener) {
        if (this.f12002c != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            if (valueSet != null) {
                sparseArray = valueSet.sparseArray();
            }
            sparseArray.put(-99999982, Integer.valueOf(i10));
            sparseArray.put(-99999985, Void.class);
            this.f12002c.apply(sparseArray);
        }
    }
}
