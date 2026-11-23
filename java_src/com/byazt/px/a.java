package com.byazt.px;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 690, 34})
public class a extends com.byazt.fb.uj implements Supplier<SparseArray<Object>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.dj.ve f18874c;

    public a(com.byazt.dj.ve veVar) {
        this.f18874c = veVar;
    }

    @Override // com.byazt.fb.uj
    public <T> T applyFunction(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i10 == -99999986) {
            return (T) values().sparseArray();
        }
        return null;
    }

    public PluginValueSet values() {
        com.byazt.rl.c cVarC = com.byazt.rl.c.c();
        com.byazt.dj.ve veVar = this.f18874c;
        cVarC.c(8481, veVar != null ? veVar.c() : 0.0d);
        com.byazt.dj.ve veVar2 = this.f18874c;
        cVarC.c(8482, veVar2 != null ? veVar2.tt() : 0.0d);
        return cVarC.tt();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.function.Supplier
    public SparseArray<Object> get() {
        PluginValueSet pluginValueSetValues = values();
        if (pluginValueSetValues != null) {
            return pluginValueSetValues.sparseArray();
        }
        return null;
    }
}
