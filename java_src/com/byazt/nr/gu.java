package com.byazt.nr;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 17})
public final class gu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static Context f17576c;
    public static Resources tt;
    public static boolean uj;
    public static boolean ve;

    public static Resources c(Context context) {
        Resources resources = tt;
        if (resources == null) {
            resources = null;
        }
        Context context2 = f17576c;
        if (context2 != null) {
            resources = context2.getResources();
        }
        return resources == null ? context.getResources() : resources;
    }
}
