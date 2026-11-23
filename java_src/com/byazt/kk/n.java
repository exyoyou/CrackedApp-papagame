package com.byazt.kk;

import com.airbnb.lottie.e;
import com.byazt.ga.sl;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 46})
public class n implements sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set<String> f16293c = new HashSet();

    @Override // com.byazt.ga.sl
    public void c(String str) {
        c(str, null);
    }

    @Override // com.byazt.ga.sl
    public void tt(String str, Throwable th) {
        boolean z10 = com.byazt.ga.n.f14401c;
    }

    @Override // com.byazt.ga.sl
    public void c(String str, Throwable th) {
        Set<String> set = f16293c;
        if (set.contains(str)) {
            return;
        }
        m.tt(e.f5613b, str, th);
        set.add(str);
    }
}
