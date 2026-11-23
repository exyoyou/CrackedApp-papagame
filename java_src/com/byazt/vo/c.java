package com.byazt.vo;

import com.byazt.nc.a;
import com.byazt.nc.uj;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SPEEDX_DROP_FPS_LIMIT, 20})
public class c extends uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final tt f21320c;

    public c(tt ttVar) {
        this.f21320c = ttVar;
    }

    @Override // com.byazt.nc.uj
    public List<a> getFilterWords() {
        tt ttVar = this.f21320c;
        if (ttVar == null) {
            return null;
        }
        return ttVar.c();
    }
}
