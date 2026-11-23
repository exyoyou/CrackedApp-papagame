package com.byazt.sz;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, tt> f20057c = new HashMap();

    public static void c(List<tt> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (tt ttVar : list) {
            if (ttVar != null) {
                f20057c.put(ttVar.c(), ttVar);
            }
        }
    }

    public static tt c(String str) {
        return f20057c.get(str);
    }
}
