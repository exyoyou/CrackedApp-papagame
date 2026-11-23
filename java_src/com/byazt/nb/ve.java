package com.byazt.nb;

import android.graphics.Typeface;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17089c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Typeface f17090n;
    public final String tt;
    public final float uj;
    public final String ve;

    public ve(String str, String str2, String str3, float f10) {
        this.f17089c = str;
        this.tt = str2;
        this.ve = str3;
        this.uj = f10;
    }

    public String c() {
        return this.f17089c;
    }

    public String tt() {
        return this.tt;
    }

    public Typeface uj() {
        return this.f17090n;
    }

    public String ve() {
        return this.ve;
    }

    public void c(Typeface typeface) {
        this.f17090n = typeface;
    }
}
