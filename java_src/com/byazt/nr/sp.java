package com.byazt.nr;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 91})
public final class sp {
    public static File c(Context context, boolean z10, String str) {
        File fileC;
        if (context == null || (fileC = com.byazt.nys.tt.c(context)) == null) {
            return null;
        }
        if (!z10 || TextUtils.isEmpty(str)) {
            return fileC;
        }
        return new File(fileC.getParent(), fileC.getName() + "_" + str);
    }

    public static File tt(Context context, boolean z10, String str) {
        File fileTt;
        if (context == null || (fileTt = com.byazt.nys.tt.tt(context)) == null) {
            return null;
        }
        if (!z10 || TextUtils.isEmpty(str)) {
            return fileTt;
        }
        return new File(fileTt.getParent(), fileTt.getName() + "_" + str);
    }

    public static File uj(Context context, boolean z10, String str) {
        File fileVe;
        if (context == null || (fileVe = com.byazt.nys.tt.ve(context)) == null) {
            return null;
        }
        if (!z10 || TextUtils.isEmpty(str)) {
            return fileVe;
        }
        return new File(fileVe.getParent(), fileVe.getName() + "_" + str);
    }

    public static File ve(Context context, boolean z10, String str) {
        return c(context, null, z10, str);
    }

    public static File c(Context context, String str, boolean z10, String str2) {
        File fileC;
        if (context == null || (fileC = com.byazt.nys.tt.c(context, str)) == null) {
            return null;
        }
        if (!z10 || TextUtils.isEmpty(str2)) {
            return fileC;
        }
        return new File(fileC.getParent(), fileC.getName() + "_" + str2);
    }
}
