package com.byazt.ap;

import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Initializer;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;
import n0.a;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 698, 20})
public class c implements Initializer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f11653c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f11653c = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public Manager getManager() {
        if (this.f11653c == null) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, -999000);
        sparseArray.put(-99999985, a.a());
        Object objApply = this.f11653c.apply(sparseArray);
        if (b.a(objApply)) {
            return new uj(n0.c.a(objApply));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public void init(Context context, ValueSet valueSet) {
        com.byazt.mm.c cVar = new com.byazt.mm.c(valueSet);
        cVar.put(-99999987, -999001);
        cVar.put(-99999985, Void.class);
        cVar.put(-998000, context);
        Function<SparseArray<Object>, Object> function = this.f11653c;
        if (function != null) {
            function.apply(cVar);
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public boolean isInitSuccess() {
        if (this.f11653c != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(-99999987, -999002);
            sparseArray.put(-99999985, Boolean.TYPE);
            Object objApply = this.f11653c.apply(sparseArray);
            if (objApply != null && ((Boolean) objApply).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
