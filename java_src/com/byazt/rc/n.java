package com.byazt.rc;

import com.byazt.yj.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_CREATE_TIME, 46})
public class n implements x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f19439c;
    public long tt;
    public long ve;

    public void c(long j10) {
        this.f19439c = j10;
    }

    @Override // com.byazt.yj.x
    public long getEndRequestTime() {
        return this.ve;
    }

    @Override // com.byazt.yj.x
    public long getFirstFrameTime() {
        return this.tt;
    }

    @Override // com.byazt.yj.x
    public long getStartRequestTime() {
        return this.f19439c;
    }

    public void tt(long j10) {
        this.tt = j10;
    }

    public void ve(long j10) {
        this.ve = j10;
    }
}
