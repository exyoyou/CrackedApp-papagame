package com.byazt.mm;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1704, 54})
public class ve implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bridge f16952c;

    public ve(Bridge bridge) {
        this.f16952c = bridge;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        Object objCall;
        if (sparseArray == null || this.f16952c == null) {
            return com.byazt.rl.ve.ve.apply(sparseArray);
        }
        int iIntValue = ((Integer) sparseArray.get(-99999987)).intValue();
        Class cls = (Class) sparseArray.get(-99999985);
        if (iIntValue == -99999977) {
            Bridge bridge = this.f16952c;
            return (!(bridge instanceof tt) || (objCall = bridge.call(-99999977, com.byazt.rl.ve.f19472c, Object.class)) == null) ? this.f16952c : objCall;
        }
        if (iIntValue != -99999986) {
            return com.byazt.iob.c.c(this.f16952c.call(iIntValue, com.byazt.iob.c.tt(sparseArray), cls));
        }
        ValueSet valueSetValues = this.f16952c.values();
        if (valueSetValues == null) {
            return null;
        }
        return new c(valueSetValues);
    }
}
