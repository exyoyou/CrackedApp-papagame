package com.byazt.jj;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Function<SparseArray<Object>, Object> f15843c;

    public static void c(Function<SparseArray<Object>, Object> function) {
        f15843c = function;
    }

    public static void c(boolean z10) {
        if (f15843c != null) {
            com.byazt.yxi.uj ujVarC = com.byazt.yxi.uj.c();
            ujVarC.c(10000).c(Boolean.class);
            ujVarC.c(20000, Boolean.valueOf(z10));
            f15843c.apply(ujVarC.tt());
        }
    }
}
