package com.byazt.nc;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 42})
public abstract class i extends da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PluginValueSet f17160c;

    private PluginValueSet c() {
        return super.values();
    }

    public abstract void setCanInterruptVideoPlay(boolean z10);

    public abstract void setDrawVideoListener(com.byazt.uz.c cVar);

    public abstract void setPauseIcon(Bitmap bitmap, int i10);

    @Override // com.byazt.nc.da, com.byazt.nc.u
    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.f17160c;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetC = c();
        this.f17160c = pluginValueSetC;
        return pluginValueSetC;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.byazt.nc.da, com.byazt.nc.u, com.byazt.nc.x, java.util.function.Function
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
        if (iIntValue != 140111) {
            switch (iIntValue) {
                case 170101:
                    setCanInterruptVideoPlay(pluginValueSetTt.booleanValue(0));
                    break;
                case 170102:
                    setPauseIcon((Bitmap) pluginValueSetTt.objectValue(0, Bitmap.class), pluginValueSetTt.intValue(1));
                    break;
                case 170103:
                    setDrawVideoListener(new com.byazt.uz.c(n0.c.a(pluginValueSetTt.objectValue(0, n0.a.a()))));
                    break;
                default:
                    return super.apply(sparseArray);
            }
        } else {
            Function functionA = n0.c.a(pluginValueSetTt.objectValue(0, n0.a.a()));
            setExpressRenderListener(pluginValueSetTt.intValue(1) == 1 ? new com.byazt.am.n(functionA) : new com.byazt.lsp.ve(functionA));
        }
        return null;
    }
}
