package com.byazt.lph;

import android.os.HandlerThread;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_ACK_DELAY, 15})
public class uj extends HandlerThread {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n f16708c;

    public uj() {
        super("csj_openlog");
    }

    public void c(n nVar) {
        this.f16708c = nVar;
    }

    @Override // android.os.HandlerThread
    public void onLooperPrepared() {
        super.onLooperPrepared();
        n nVar = this.f16708c;
        if (nVar != null) {
            nVar.ve();
        }
    }
}
