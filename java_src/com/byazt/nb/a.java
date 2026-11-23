package com.byazt.nb;

import com.byazt.ga.yp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f17071c = new a();
    public final yp<String, com.byazt.ga.a> tt = new yp<>(20);

    public static a c() {
        return f17071c;
    }

    public com.byazt.ga.a c(String str) {
        if (str == null) {
            return null;
        }
        return this.tt.c(str);
    }

    public void c(String str, com.byazt.ga.a aVar) {
        if (str == null) {
            return;
        }
        this.tt.c(str, aVar);
    }

    public void c(int i10) {
        this.tt.c(i10);
    }
}
