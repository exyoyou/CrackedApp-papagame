package com.byazt.jj;

import com.byazt.omf.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f15845c;

    public static void c(boolean z10) {
        f15845c = z10;
    }

    public static boolean c() {
        if (x.m().lr()) {
            return f15845c;
        }
        return false;
    }
}
