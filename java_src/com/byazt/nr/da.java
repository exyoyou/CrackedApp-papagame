package com.byazt.nr;

import android.os.Handler;
import com.byazt.dna.qp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 72})
public class da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Handler f17571c;
    public static volatile Handler tt;
    public static volatile Handler ve;

    public static Handler c() {
        if (tt == null) {
            tt = ((qp) com.byazt.ut.uj.getService("thread_service")).getIOHandler();
        }
        return tt;
    }

    public static Handler tt() {
        if (f17571c == null) {
            f17571c = ((qp) com.byazt.ut.uj.getService("thread_service")).getMainHandler();
        }
        return f17571c;
    }

    public static Handler ve() {
        if (ve == null) {
            ve = ((qp) com.byazt.ut.uj.getService("thread_service")).getCsjMainHandler();
        }
        return ve;
    }
}
