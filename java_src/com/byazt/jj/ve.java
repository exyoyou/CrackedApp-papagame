package com.byazt.jj;

import android.util.SparseArray;
import com.byazt.omf.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Function<SparseArray<Object>, Object> f15847c;

    public static void c(Function<SparseArray<Object>, Object> function) {
        f15847c = function;
    }

    private static void tt(com.byazt.ng.c cVar, boolean z10) {
        if (f15847c != null) {
            com.byazt.yxi.uj ujVarC = com.byazt.yxi.uj.c();
            if (z10) {
                ujVarC.c(10002).c(Void.class);
                ujVarC.c(20003, cVar.ve());
                f15847c.apply(ujVarC.tt());
            } else {
                ujVarC.c(10002).c(Void.class);
                ujVarC.c(20002, cVar.ve());
                f15847c.apply(ujVarC.tt());
            }
        }
    }

    public static void c(com.byazt.ng.c cVar, boolean z10) {
        if (cVar != null && x.m().lr()) {
            tt(cVar, z10);
        }
    }
}
