package com.byazt.vc;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVFORMAT_OPEN_TIME, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f21177c;
    public float tt;

    public uj(float f10, float f11) {
        this.f21177c = f10;
        this.tt = f11;
    }

    public float c() {
        return this.f21177c;
    }

    public String toString() {
        return c() + "x" + tt();
    }

    public float tt() {
        return this.tt;
    }

    public void c(float f10, float f11) {
        this.f21177c = f10;
        this.tt = f11;
    }

    public boolean tt(float f10, float f11) {
        return this.f21177c == f10 && this.tt == f11;
    }

    public uj() {
        this(1.0f, 1.0f);
    }
}
