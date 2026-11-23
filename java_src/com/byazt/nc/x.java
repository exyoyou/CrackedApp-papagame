package com.byazt.nc;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 71})
public abstract class x implements Function<SparseArray<Object>, Object> {
    public abstract void loss(Double d10, String str, String str2);

    public abstract void setAdInteractionListener(com.byazt.ocd.tt ttVar);

    public abstract void setPrice(Double d10);

    public abstract void win(Double d10);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetTt = com.byazt.rl.c.c(sparseArray).tt();
        int iIntValue = pluginValueSetTt.intValue(-99999987);
        pluginValueSetTt.objectValue(-99999985, Class.class);
        if (iIntValue == -99999986) {
            return new SparseArray();
        }
        switch (iIntValue) {
            case 210101:
                win(Double.valueOf(pluginValueSetTt.doubleValue(0)));
                return null;
            case 210102:
                loss(Double.valueOf(pluginValueSetTt.doubleValue(0)), (String) pluginValueSetTt.objectValue(1, String.class), (String) pluginValueSetTt.objectValue(2, String.class));
                return null;
            case 210103:
                setPrice(Double.valueOf(pluginValueSetTt.doubleValue(0)));
                return null;
            case 210104:
                setAdInteractionListener(new com.byazt.ocd.tt(n0.c.a(pluginValueSetTt.objectValue(0, n0.a.a()))));
                return null;
            default:
                return null;
        }
    }
}
