package com.byazt.mx;

import com.byazt.blh.ve;
import com.byazt.bog.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.log.ZeusLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_INFOS, 13})
public class tt {
    public static boolean c(String str, boolean z10, boolean z11, String str2, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            new c(new com.byazt.po.c().c(str)).c(z10, z11);
            if (i11 == 0) {
                return true;
            }
            if (i11 != 1) {
                if (i11 == 2) {
                    i15 = com.byazt.gvs.tt.c.tt;
                } else {
                    i14 = 0;
                }
                String str3 = "rmSo:" + z11 + " rmDex:" + z10;
                ZeusLogger.d(ZeusLogger.TAG, "[shootsTag]".concat(String.valueOf(str3)));
                c(i14, str2, i10, System.currentTimeMillis() - jCurrentTimeMillis, (Throwable) null, str3);
                return true;
            }
            i15 = com.byazt.gvs.tt.c.f14780c;
            i14 = i15;
            String str4 = "rmSo:" + z11 + " rmDex:" + z10;
            ZeusLogger.d(ZeusLogger.TAG, "[shootsTag]".concat(String.valueOf(str4)));
            c(i14, str2, i10, System.currentTimeMillis() - jCurrentTimeMillis, (Throwable) null, str4);
            return true;
        } catch (Throwable th) {
            try {
                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "rmEntries failed. zipFile:" + str + " rmDex:" + z10 + " rmSO:" + z11, th);
                if (i11 != 0) {
                    if (i11 == 1) {
                        i13 = com.byazt.gvs.tt.c.ve;
                    } else {
                        i13 = i11 == 2 ? com.byazt.gvs.tt.c.uj : 0;
                    }
                }
                return false;
            } finally {
                if (i11 != 0) {
                    if (i11 != 1) {
                        i12 = i11 == 2 ? com.byazt.gvs.tt.c.uj : 0;
                    } else {
                        i12 = com.byazt.gvs.tt.c.ve;
                    }
                    String string = "rmSo:" + z11 + " rmDex:" + z10;
                    ZeusLogger.d(ZeusLogger.TAG, "[shootsTag]".concat(String.valueOf(string)));
                    c(i12, str2, i10, System.currentTimeMillis() - jCurrentTimeMillis, th, string);
                }
            }
        }
    }

    private static void c(int i10, String str, int i11, long j10, Throwable th, String str2) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", ve.c(Integer.valueOf(i10)));
            jSONObject.putOpt("plugin_package_name", ve.c(str));
            jSONObject.putOpt("version_code", ve.c(Integer.valueOf(i11)));
            jSONObject3.putOpt("duration", Integer.valueOf(ve.tt(Long.valueOf(j10))));
            jSONObject2.putOpt("message", str2 + ve.c(th));
        } catch (JSONException e10) {
            a.c(e10);
        }
        com.byazt.gvs.tt.c().c(com.byazt.gvs.tt.f14773da, jSONObject, jSONObject3, jSONObject2);
    }
}
