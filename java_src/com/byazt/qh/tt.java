package com.byazt.qh;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.rh;
import com.byazt.dna.u;
import com.byazt.nr.a;
import com.byazt.nr.m;
import com.byazt.nr.sp;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.widgets.BaseVideoView;
import com.kuaishou.weapon.p0.g;
import java.io.File;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f19152c;

    public static void c(JSONObject jSONObject) {
        if (p.f18095x.equals("privacy")) {
            return;
        }
        try {
            com.byazt.fn.c location = ((u) com.byazt.ut.uj.getService("device_info_new")).getLocation(!com.byazt.by.c.tt());
            float longitude = 0.0f;
            float latitude = location == null ? 0.0f : location.getLatitude();
            if (location != null) {
                longitude = location.getLongitude();
            }
            jSONObject.put(BaseVideoView.GPS_LATITUDE, latitude);
            jSONObject.put(BaseVideoView.GPS_LONGITUDE, longitude);
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public static void tt(JSONObject jSONObject) {
        com.byazt.fn.c location;
        if (p.f18095x.equals("privacy") || (location = ((u) com.byazt.ut.uj.getService("device_info_new")).getLocation(!com.byazt.by.c.tt())) == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(BaseVideoView.GPS_LATITUDE, location.getLatitude());
            jSONObject2.put(BaseVideoView.GPS_LONGITUDE, location.getLongitude());
            jSONObject.put("geo", jSONObject2);
        } catch (Exception unused) {
        }
    }

    public static void ve(JSONObject jSONObject) {
        try {
            if (p.f18095x.equals("privacy")) {
                jSONObject.put("imei_md5", tt());
            } else {
                jSONObject.put("imei", DeviceUtils.c((Boolean) null));
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    private static String tt() {
        if (TextUtils.isEmpty(f19152c)) {
            String strC = DeviceUtils.c((Boolean) null);
            if (!TextUtils.isEmpty(strC)) {
                f19152c = a.tt(strC);
            }
        }
        return f19152c;
    }

    public static void c(com.byazt.dj.uj ujVar, List<String> list) {
        if (p.f18095x.equals("privacy") || !ujVar.isCanUseLocation()) {
            return;
        }
        list.add(g.f74784h);
        list.add(g.f74783g);
    }

    public static void c(Context context, JSONObject jSONObject) {
        try {
            if (p.f18095x.equals("privacy")) {
                jSONObject.put("udid_md5", tt());
                return;
            }
            u uVar = (u) com.byazt.ut.uj.getService("device_info_new");
            jSONObject.put("udid", DeviceUtils.c((Boolean) null));
            jSONObject.put("mc", uVar.getMacAddress(null));
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public static void tt(Context context, JSONObject jSONObject) {
        if (p.f18095x.equals("privacy")) {
            return;
        }
        try {
            JSONArray jSONArrayC = rh.c(context);
            if (jSONArrayC != null) {
                jSONObject.put("app_list", jSONArrayC);
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public static boolean tt(String str) {
        if (p.f18095x.equals("privacy")) {
            return false;
        }
        return rh.c(str);
    }

    public static void c() {
        if (p.f18095x.equals("privacy")) {
            return;
        }
        ((u) com.byazt.ut.uj.getService("device_info_new")).getLocation(!com.byazt.by.c.tt());
    }

    public static File tt(Context context) {
        if (p.f18095x.equals("privacy")) {
            return sp.c(context, "Download/Pangolin", false, null);
        }
        return sp.c(context, Environment.DIRECTORY_DOWNLOADS, false, null);
    }

    public static void c(String str) {
        if (p.f18095x.equals("privacy")) {
            return;
        }
        com.byazt.ogz.ve.tt().c(str);
    }

    public static void c(Context context) {
        if (p.f18095x.equals("privacy") || (gt.tt().rp() & 8) != 0) {
            return;
        }
        c.c(context);
    }
}
