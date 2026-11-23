package com.byazt.mm;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1704, 13})
public class tt implements Bridge {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f16950c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f16950c = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i10, ValueSet valueSet, Class<T> cls) {
        if (i10 == -99999977) {
            if (this.f16950c instanceof ve) {
                T t10 = (T) this.f16950c.apply(com.byazt.yxi.uj.c().c(-99999977).c(Bridge.class).tt());
                if (t10 instanceof Bridge) {
                    return t10;
                }
            }
            return (T) this.f16950c;
        }
        if (this.f16950c == null) {
            return null;
        }
        c cVar = new c(valueSet);
        cVar.put(-99999987, Integer.valueOf(i10));
        cVar.put(-99999985, cls);
        T t11 = (T) com.byazt.iob.c.tt(this.f16950c.apply(cVar));
        return t11 != null ? t11 : (T) com.byazt.rl.ve.ve.apply(cVar);
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge, com.bykv.vk.openvk.api.proto.Manager
    public ValueSet values() {
        Function<SparseArray<Object>, Object> function = this.f16950c;
        if (function != null) {
            return com.byazt.iob.c.tt(com.byazt.iob.c.c(function));
        }
        return null;
    }
}
