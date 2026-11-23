package com.byazt.qh;

import android.text.TextUtils;
import com.byazt.gj.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19153c;
    public n.c tt;

    public uj(n.c cVar) {
        this.tt = cVar;
        if (cVar == null || TextUtils.isEmpty(cVar.f14549c) || TextUtils.equals("00000000-0000-0000-0000-000000000000", cVar.f14549c)) {
            this.f19153c = "error";
        }
    }

    public n.c c() {
        return this.tt;
    }

    public String getType() {
        return this.f19153c;
    }

    public uj(String str) {
        this.f19153c = str;
    }
}
