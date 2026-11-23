package com.byazt.nb;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f17074c;
    public final float tt;
    public final String ve;

    public sp(String str, float f10, float f11) {
        this.ve = str;
        this.tt = f11;
        this.f17074c = f10;
    }

    public boolean c(String str) {
        if (this.ve.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.ve.endsWith("\r")) {
            String str2 = this.ve;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
