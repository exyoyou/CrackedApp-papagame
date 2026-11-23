package com.byazt.di;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DROP_AUDIO_PTS, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile sp f12939c;
    public com.byazt.ou.a tt = null;

    private sp() {
    }

    public static sp c() {
        if (f12939c == null) {
            synchronized (sp.class) {
                if (f12939c == null) {
                    f12939c = new sp();
                }
            }
        }
        return f12939c;
    }

    public com.byazt.ou.a tt() {
        return this.tt;
    }
}
