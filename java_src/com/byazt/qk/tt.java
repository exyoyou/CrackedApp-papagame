package com.byazt.qk;

import android.os.Handler;
import android.os.Looper;
import com.byazt.nr.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_STOP_TIMEOUT, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Handler f19183c = new Handler(Looper.getMainLooper());

    public static void c(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            f19183c.post(runnable);
        }
    }

    public static void tt(Runnable runnable) {
        f19183c.post(runnable);
    }

    public static void ve(Runnable runnable) {
        da.ve().post(runnable);
    }
}
