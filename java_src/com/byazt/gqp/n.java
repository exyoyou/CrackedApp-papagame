package com.byazt.gqp;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 46})
public final class n extends z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<String> f14685c;
    public List<String> tt;

    public n(List<String> list, List<String> list2) {
        this.f14685c = list;
        this.tt = list2;
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 151})
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<String> f14686c = new ArrayList();
        public final List<String> tt = new ArrayList();

        public c c(String str, String str2) {
            this.f14686c.add(str);
            this.tt.add(str2);
            return this;
        }

        public n c() {
            return new n(this.f14686c, this.tt);
        }
    }
}
