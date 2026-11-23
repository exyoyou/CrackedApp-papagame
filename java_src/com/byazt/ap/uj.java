package com.byazt.ap;

import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;
import n0.a;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 698, 15})
public class uj implements Bridge, Manager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f11655c;

    public uj(Function<SparseArray<Object>, Object> function) {
        this.f11655c = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i10, ValueSet valueSet, Class<T> cls) {
        if (this.f11655c == null) {
            return null;
        }
        com.byazt.mm.c cVar = new com.byazt.mm.c(valueSet);
        cVar.put(-99999987, Integer.valueOf(i10));
        cVar.put(-99999985, cls);
        T t10 = (T) com.byazt.iob.c.tt(this.f11655c.apply(cVar));
        return t10 != null ? t10 : (T) com.byazt.rl.ve.ve.apply(cVar);
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Loader createLoader(Context context) {
        if (this.f11655c == null) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, -999800);
        sparseArray.put(-99999985, a.a());
        sparseArray.put(-998000, context);
        Object objApply = this.f11655c.apply(sparseArray);
        if (b.a(objApply)) {
            return new ve(n0.c.a(objApply));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Bridge getBridge(int i10) {
        if (this.f11655c == null) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        if (i10 == 1) {
            i10 = 999801;
        }
        sparseArray.put(-99999987, Integer.valueOf(i10));
        sparseArray.put(-99999985, a.a());
        Object objApply = this.f11655c.apply(sparseArray);
        if (b.a(objApply)) {
            return new com.byazt.mm.tt(n0.c.a(objApply));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge, com.bykv.vk.openvk.api.proto.Manager
    public ValueSet values() {
        if (this.f11655c == null) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, -99999986);
        sparseArray.put(-99999985, SparseArray.class);
        Object objApply = this.f11655c.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            return com.byazt.iob.c.tt((SparseArray<Object>) objApply);
        }
        return null;
    }
}
