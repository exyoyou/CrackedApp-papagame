package com.byazt.px;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 690, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PluginValueSet f18890c;

    private ve(PluginValueSet pluginValueSet) {
        this.f18890c = pluginValueSet;
    }

    public static ve c(PluginValueSet pluginValueSet) {
        return new ve(pluginValueSet);
    }

    private boolean tt() {
        PluginValueSet pluginValueSet = this.f18890c;
        return (pluginValueSet == null || pluginValueSet.isEmpty()) ? false : true;
    }

    public Function<SparseArray<Object>, Object> c() {
        if (tt()) {
            return n0.c.a(this.f18890c.objectValue(8301, n0.a.a()));
        }
        return null;
    }
}
