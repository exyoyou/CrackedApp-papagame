package com.byazt.nw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 13})
public class tt {
    public static int c(boolean z10, int i10, int i11) {
        if (i11 == 0 || !z10) {
            return i10;
        }
        int i12 = i10 - 512;
        int iAbs = Math.abs(i12) % i11;
        return (i12 >= 0 || iAbs == 0) ? iAbs : i11 - iAbs;
    }

    public static boolean c(int i10, Collection<?> collection) {
        return i10 >= 0 && i10 < collection.size();
    }
}
