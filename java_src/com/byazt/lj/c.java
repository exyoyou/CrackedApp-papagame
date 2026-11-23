package com.byazt.lj;

import android.util.SparseArray;
import com.byazt.yxi.uj;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_SCFG_ADDRESS, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Function<SparseArray<Object>, Object> f16649c;

    public static void c(Function<SparseArray<Object>, Object> function) {
        f16649c = function;
    }

    public static void c(boolean z10) {
        if (f16649c != null) {
            uj ujVarC = uj.c();
            ujVarC.c(10000).c(Void.class);
            ujVarC.c(20000, Boolean.valueOf(z10));
            f16649c.apply(ujVarC.tt());
        }
    }
}
