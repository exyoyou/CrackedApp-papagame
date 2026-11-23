package com.byazt.nr;

import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.device.input.manager.TcMouseManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, TcMouseManager.MOUSE_STARY})
public class p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f17586c;

    public static String c() {
        if (!TextUtils.isEmpty(f17586c)) {
            return f17586c;
        }
        String str = Build.MODEL;
        f17586c = str;
        return str;
    }
}
