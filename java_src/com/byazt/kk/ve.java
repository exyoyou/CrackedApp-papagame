package com.byazt.kk;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f16301c;
    public static final String tt;

    public interface c<T> {
        void c(int i10, String str);

        void c(T t10);
    }

    static {
        StringBuilder sb2 = new StringBuilder("tt_derive");
        String str = File.separator;
        sb2.append(str);
        sb2.append("lottie");
        sb2.append(str);
        sb2.append("anim_img");
        f16301c = sb2.toString();
        tt = "tt_derive" + str + "lottie" + str + "anim_video";
    }

    public static String c(Context context) {
        return com.byazt.nr.x.c(context, com.byazt.mf.c.c().ve().t(), f16301c).getAbsolutePath();
    }

    public static String tt(Context context) {
        return com.byazt.nr.x.c(context, com.byazt.mf.c.c().ve().t(), tt).getAbsolutePath();
    }

    public static void c(String str, Context context, final c<File> cVar) {
        if (context == null || TextUtils.isEmpty(str)) {
            if (cVar != null) {
                cVar.c(2, "url is empty");
                return;
            }
            return;
        }
        com.byazt.va.tt ttVarUj = com.byazt.mf.c.c().ve().uj();
        if (ttVarUj == null) {
            if (cVar != null) {
                cVar.c(3, "exec is null");
            }
        } else {
            final String strC = c(context);
            final String strTt = com.byazt.nr.a.tt(str);
            ttVarUj.c(str);
            ttVarUj.c(strC, strTt);
            ttVarUj.c(new com.byazt.mh.c() { // from class: com.byazt.kk.ve.1
                @Override // com.byazt.mh.c
                public void c(com.byazt.va.uj ujVar, com.byazt.hm.tt ttVar) {
                    if (cVar != null) {
                        File file = new File(strC, strTt);
                        if (file.exists()) {
                            cVar.c(file);
                        } else {
                            cVar.c(4, "file not exist");
                        }
                    }
                }

                @Override // com.byazt.mh.c
                public void c(com.byazt.va.uj ujVar, IOException iOException) {
                    c cVar2 = cVar;
                    if (cVar2 != null) {
                        cVar2.c(1, "net err: " + iOException.getMessage());
                    }
                }
            });
        }
    }
}
