package com.byazt.qqc;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, 13})
public class tt {
    public static boolean c() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
        int i10 = calendar.get(7);
        return i10 == 1 || i10 == 7;
    }

    public static boolean tt() {
        return Calendar.getInstance().get(11) >= 18;
    }

    public static boolean ve() {
        int i10 = Calendar.getInstance().get(11);
        return i10 >= 6 && i10 < 18;
    }
}
