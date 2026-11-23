package com.byazt.ylx;

import com.byazt.nr.m;
import com.byazt.yl.ve;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_TIMER_VERSION, 20})
public abstract class c {
    public com.byazt.lg.c tt;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f22332c = false;
    public int ve = 0;
    public int uj = 0;

    /* JADX INFO: renamed from: com.byazt.ylx.c$c, reason: collision with other inner class name */
    public interface InterfaceC0493c {
        void c();
    }

    public final void c(ve veVar, String str) {
        com.byazt.lg.c cVar = this.tt;
        if (cVar != null) {
            cVar.c(veVar, str, (Map<String, Object>) null);
        }
    }

    public Integer uj() {
        return 1;
    }

    public final Integer ve() {
        try {
            return uj();
        } catch (Exception e10) {
            m.c(e10);
            return 1;
        }
    }
}
