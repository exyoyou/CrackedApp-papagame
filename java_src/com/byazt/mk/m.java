package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 130})
public final class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static z f16924c;
    public static long tt;

    private m() {
    }

    public static z c() {
        synchronized (m.class) {
            z zVar = f16924c;
            if (zVar == null) {
                return new z();
            }
            f16924c = zVar.f16939a;
            zVar.f16939a = null;
            tt -= 8192;
            return zVar;
        }
    }

    public static void c(z zVar) {
        if (zVar.f16939a == null && zVar.sp == null) {
            if (zVar.uj) {
                return;
            }
            synchronized (m.class) {
                long j10 = tt;
                if (j10 + 8192 > 65536) {
                    return;
                }
                tt = j10 + 8192;
                zVar.f16939a = f16924c;
                zVar.ve = 0;
                zVar.tt = 0;
                f16924c = zVar;
                return;
            }
        }
        throw new IllegalArgumentException();
    }
}
