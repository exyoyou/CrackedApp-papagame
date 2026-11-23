package com.byazt.dj;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SPEEDX_DROP, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PluginValueSet f12970c;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SPEEDX_DROP, 24})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.byazt.yxi.uj f12971c = com.byazt.yxi.uj.c();

        public c c(double d10) {
            this.f12971c.c(262001, Double.valueOf(d10));
            return this;
        }

        public c tt(double d10) {
            this.f12971c.c(262002, Double.valueOf(d10));
            return this;
        }

        public ve c() {
            return new ve(this.f12971c.tt());
        }
    }

    public ve(SparseArray<Object> sparseArray) {
        this.f12970c = com.byazt.rl.c.c(sparseArray).tt();
    }

    public double c() {
        return this.f12970c.doubleValue(262001);
    }

    public double tt() {
        return this.f12970c.doubleValue(262002);
    }
}
