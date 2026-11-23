package com.byazt.iw;

import android.content.Context;
import com.byazt.se.tt;
import com.byazt.se.ve;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_INITED_TIME, 20})
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<Future<com.byazt.co.c>> f15559c = new ArrayList();
    public final Context tt;
    public final tt uj;
    public final com.byazt.az.c ve;

    public c(Context context, tt ttVar, com.byazt.az.c cVar) {
        this.uj = ttVar;
        this.ve = cVar;
        this.tt = context;
    }

    public abstract List<String> c();

    public boolean c(JSONObject jSONObject) {
        return false;
    }

    public void c(com.byazt.se.c cVar, Long l10) {
        this.f15559c.add(com.byazt.ww.c.c(new ve(cVar, l10)));
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0072 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0008 A[SYNTHETIC] */
    public void c(Map<String, JSONObject> map, long j10) {
        byte b10;
        com.byazt.se.c cVar;
        com.byazt.se.c cVar2;
        for (Map.Entry<String, JSONObject> entry : map.entrySet()) {
            String key = entry.getKey();
            try {
                if (c().contains(entry.getKey())) {
                    int iHashCode = key.hashCode();
                    if (iHashCode != 3073450) {
                        if (iHashCode == 3073698 && key.equals("d_i0")) {
                            b10 = 1;
                        } else {
                            b10 = -1;
                        }
                    } else if (key.equals("d_a0")) {
                        b10 = 0;
                    } else {
                        b10 = -1;
                    }
                    if (b10 != 0) {
                        if (b10 != 1) {
                            cVar2 = null;
                        } else {
                            cVar = new com.byazt.ry.tt(this.tt, entry.getValue());
                        }
                        if (cVar2 != null) {
                            c(cVar2, Long.valueOf(j10));
                        }
                    } else {
                        cVar = new com.byazt.ry.c(this.tt, entry.getValue());
                    }
                    cVar2 = cVar;
                    if (cVar2 != null) {
                        c(cVar2, Long.valueOf(j10));
                    }
                }
            } catch (Exception e10) {
                com.byazt.tf.c.uj("__kite", "error " + e10.getMessage());
            }
        }
    }
}
