package com.byazt.bog;

import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 935, 54})
public class ve implements Manager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f12004c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f12004c = function == null ? com.byazt.rl.ve.ve : function;
    }

    public Function<SparseArray<Object>, Object> c(int i10) {
        SparseArray sparseArray = new SparseArray();
        if (i10 == 1) {
            i10 = 999801;
        }
        sparseArray.put(-99999987, Integer.valueOf(i10));
        Object objApply = this.f12004c.apply(sparseArray);
        if (b.a(objApply)) {
            return n0.c.a(objApply);
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Loader createLoader(Context context) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, -999800);
        sparseArray.put(-998000, context);
        sparseArray.put(-99999985, n0.a.a());
        return new tt(n0.c.a(this.f12004c.apply(sparseArray)));
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Bridge getBridge(int i10) {
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public ValueSet values() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, -99999986);
        Object objApply = this.f12004c.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            return com.byazt.rl.ve.c((SparseArray<Object>) objApply).tt();
        }
        return null;
    }
}
