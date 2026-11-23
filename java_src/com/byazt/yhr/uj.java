package com.byazt.yhr;

import com.byazt.lz.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM, 15})
public class uj implements da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.je.tt f22222c;

    public uj(com.byazt.je.tt ttVar) {
        this.f22222c = ttVar;
    }

    @Override // com.byazt.lz.da
    public List<String> getCustomAppList() {
        return this.f22222c.c();
    }

    @Override // com.byazt.lz.da
    public List<String> getCustomDevImeis() {
        return this.f22222c.tt();
    }

    @Override // com.byazt.lz.da
    public boolean isCanUseOaid() {
        return this.f22222c.ve();
    }

    @Override // com.byazt.lz.da
    public boolean isLimitPersonalAds() {
        return this.f22222c.uj();
    }

    @Override // com.byazt.lz.da
    public boolean isProgrammaticRecommend() {
        return this.f22222c.n();
    }
}
