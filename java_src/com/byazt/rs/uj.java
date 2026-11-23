package com.byazt.rs;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19534c;
    public final String tt;
    public final String uj;
    public final String ve;

    public uj(String str, String str2, String str3, String str4) {
        this.f19534c = str;
        this.tt = str2;
        this.ve = str3;
        this.uj = str4 == null ? "img_0.png" : str4;
    }

    public String c() {
        return this.f19534c;
    }

    public String tt() {
        return this.ve;
    }

    public String ve() {
        return this.uj;
    }
}
