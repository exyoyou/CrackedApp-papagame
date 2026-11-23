package com.byazt.fiq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_RECONNECT_COUNT, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ConcurrentHashMap<String, Object> f14198c = new ConcurrentHashMap<>();

    private String tt(String str, String str2) {
        return (str == null || !this.f14198c.containsKey(str)) ? str2 : (String) this.f14198c.get(str);
    }

    public void c(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f14198c.put(str, str2);
    }

    public String c(String str) {
        return tt(str, "");
    }

    public void c(String str, int i10) {
        if (str != null) {
            this.f14198c.put(str, Integer.valueOf(i10));
        }
    }

    public int tt(String str) {
        return tt(str, 0);
    }

    private int tt(String str, int i10) {
        return (str == null || !this.f14198c.containsKey(str)) ? i10 : ((Integer) this.f14198c.get(str)).intValue();
    }
}
