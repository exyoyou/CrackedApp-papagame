package com.byazt.qk;

import android.text.TextUtils;
import com.byazt.fz.rh;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_STOP_TIMEOUT, 20})
public class c {
    public static String c(String str, JSONObject jSONObject) {
        com.byazt.kx.c cVarC;
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                if (!str.startsWith("${") || !str.endsWith("}") || (cVarC = com.byazt.kx.c.c(str.substring(2, str.length() - 1))) == null) {
                    return str;
                }
                Object objC = cVarC.c(jSONObject);
                if (objC instanceof String) {
                    return (String) objC;
                }
                return objC instanceof com.byazt.il.c ? String.valueOf(rh.c((com.byazt.il.c) objC)) : String.valueOf(objC);
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return str;
    }
}
