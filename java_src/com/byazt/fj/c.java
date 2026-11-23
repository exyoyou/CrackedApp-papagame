package com.byazt.fj;

import android.content.Context;
import android.content.IntentFilter;
import com.byazt.aas.nb;
import com.byazt.nr.m;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEC_CREATE_TIME, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f14203c;
    public String tt = "";

    private c() {
    }

    public static c c() {
        if (f14203c == null) {
            synchronized (c.class) {
                if (f14203c == null) {
                    f14203c = new c();
                }
            }
        }
        return f14203c;
    }

    public void registerReceiver(Context context) {
        MiniAppBroadcastReceiver miniAppBroadcastReceiver = new MiniAppBroadcastReceiver();
        IntentFilter intentFilter = new IntentFilter("com.byted.pma.PMA_DATA");
        intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
        intentFilter.addDataAuthority(context.getPackageName(), null);
        try {
            context.registerReceiver(miniAppBroadcastReceiver, intentFilter, nb.p(), null);
        } catch (Throwable th) {
            m.uj("MiniAppManager", "register BroadcastReceiver : " + th.getMessage());
        }
    }

    public String tt() {
        return this.tt;
    }

    public void c(String str) {
        this.tt = str;
    }
}
