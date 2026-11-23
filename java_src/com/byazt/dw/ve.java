package com.byazt.dw;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import n0.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 513, 54})
public abstract class ve implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PluginValueSet f13204c;

    private PluginValueSet c() {
        return com.byazt.rl.c.c().tt();
    }

    public abstract void setDislikeCallback(com.byazt.am.c cVar);

    public abstract void showDislikeDialog();

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.f13204c;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetC = c();
        this.f13204c = pluginValueSetC;
        return pluginValueSetC;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetTt = com.byazt.rl.c.c(sparseArray).tt();
        int iIntValue = pluginValueSetTt.intValue(-99999987);
        pluginValueSetTt.objectValue(-99999985, Class.class);
        switch (iIntValue) {
            case -99999986:
                return values().sparseArray();
            case 270032:
                showDislikeDialog();
                return null;
            case 270033:
                setDislikeCallback(new com.byazt.am.c(n0.c.a(pluginValueSetTt.objectValue(0, a.a()))));
                return null;
            default:
                return null;
        }
    }
}
