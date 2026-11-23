package com.byazt.iyp;

import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 72})
public final class da {
    public static boolean c() {
        return a.c();
    }

    public static void n() {
        c("redetect cache invalid -> clear cached tabs");
    }

    public static void tt() {
        c("bottomBar not found");
    }

    public static void uj() {
        c("redetectSelectedTab start");
    }

    public static void ve() {
        c("install warning: tabs empty");
    }

    public static void c(String str) {
        m.tt("BtTabF", str);
    }

    public static void tt(int i10, int i11, String str) {
        c("redetect result index=" + i10 + " confidence=" + i11 + " reason=" + c((Object) str));
    }

    public static void c(int i10) {
        c("selected by history index=" + i10);
    }

    public static String tt(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return "";
        }
        return "len=" + strTrim.length() + ",hash=" + strTrim.hashCode();
    }

    public static void c(int i10, int i11, String str) {
        c("selected by score index=" + i10 + " confidence=" + i11 + " reason=" + c((Object) str));
    }

    public static void c(int i10, String str) {
        c("install success tabs=" + i10 + " selectedLabel{" + tt(str) + "}");
    }

    private static String c(Object obj) {
        return obj == null ? "" : String.valueOf(obj);
    }
}
