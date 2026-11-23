package com.byazt.ch;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1054, 54})
public abstract class ve implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PluginValueSet f12419c;

    private PluginValueSet c() {
        return com.byazt.rl.c.c().tt();
    }

    public abstract void onCancel();

    public abstract void onSelected(int i10, String str);

    public abstract void onShow();

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.f12419c;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetC = c();
        this.f12419c = pluginValueSetC;
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
        if (iIntValue == -99999986) {
            return values().sparseArray();
        }
        switch (iIntValue) {
            case 268013:
                onSelected(pluginValueSetTt.intValue(0), (String) pluginValueSetTt.objectValue(1, String.class));
                return null;
            case 268014:
                onCancel();
                return null;
            case 268015:
                onShow();
                return null;
            default:
                return null;
        }
    }
}
