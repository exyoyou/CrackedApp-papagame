package com.byazt.kk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f16303c;
    public int tt;

    public void c(float f10) {
        float f11 = this.f16303c + f10;
        this.f16303c = f11;
        int i10 = this.tt + 1;
        this.tt = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f16303c = f11 / 2.0f;
            this.tt = i10 / 2;
        }
    }
}
