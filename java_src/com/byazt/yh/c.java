package com.byazt.yh;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 890, 20})
public abstract class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PluginValueSet f22218c;

    private PluginValueSet c() {
        return com.byazt.rl.c.c().tt();
    }

    public abstract String getVideoUrl();

    public abstract void reportVideoAutoStart();

    public abstract void reportVideoBreak(long j10);

    public abstract void reportVideoContinue(long j10);

    public abstract void reportVideoError(long j10, int i10, int i11);

    public abstract void reportVideoFinish();

    public abstract void reportVideoPause(long j10);

    public abstract void reportVideoStart();

    public abstract void reportVideoStartError(int i10, int i11);

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.f22218c;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetC = c();
        this.f22218c = pluginValueSetC;
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
            case 162101:
                return getVideoUrl();
            case 162102:
                reportVideoStart();
                return null;
            case 162103:
                reportVideoPause(pluginValueSetTt.longValue(0));
                return null;
            case 162104:
                reportVideoContinue(pluginValueSetTt.longValue(0));
                return null;
            case 162105:
                reportVideoFinish();
                return null;
            case 162106:
                reportVideoBreak(pluginValueSetTt.longValue(0));
                return null;
            case 162107:
                reportVideoAutoStart();
                return null;
            case 162108:
                reportVideoStartError(pluginValueSetTt.intValue(0), pluginValueSetTt.intValue(1));
                return null;
            case 162109:
                reportVideoError(pluginValueSetTt.longValue(0), pluginValueSetTt.intValue(1), pluginValueSetTt.intValue(2));
                return null;
            default:
                return null;
        }
    }
}
