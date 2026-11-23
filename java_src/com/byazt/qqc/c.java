package com.byazt.qqc;

import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, 20})
public abstract class c {
    private boolean a(int i10) {
        return c(uj(), i10);
    }

    public static boolean uj(int i10) {
        return (c(gt.tt().mm(), i10) ^ true) || (c(gt.tt().pn(), i10) ^ true);
    }

    public int c() {
        JSONObject jSONObjectUj = uj();
        if (jSONObjectUj == null) {
            return 0;
        }
        double dOptDouble = jSONObjectUj.optDouble(HmInputMappingContent.FIELD_VALUE, 0.0d);
        int iOptInt = jSONObjectUj.optInt("plan");
        if (iOptInt == 1) {
            return dOptDouble == 0.0d ? 0 : 1;
        }
        return iOptInt;
    }

    public abstract boolean c(int i10);

    public void n(int i10) {
        int iC = c();
        if (iC == 0 || tt() || ve() || a(i10)) {
            return;
        }
        tt(iC);
    }

    public abstract void tt(int i10);

    public abstract boolean tt();

    public abstract JSONObject uj();

    public abstract boolean ve();

    public boolean ve(int i10) {
        int iC = c();
        if (iC == 0 || tt() || ve() || a(i10)) {
            return false;
        }
        return c(iC);
    }

    private static boolean c(JSONObject jSONObject, int i10) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("valid_type")) == null || jSONArrayOptJSONArray.length() == 0) {
            return true;
        }
        for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
            if (i10 == jSONArrayOptJSONArray.optInt(i11)) {
                return false;
            }
        }
        return true;
    }

    public static double c(double d10, JSONObject jSONObject) {
        double dOptDouble = jSONObject.optDouble("min_value", -1.0d);
        double dOptDouble2 = jSONObject.optDouble("max_value", 1.0d);
        if (d10 > dOptDouble2) {
            return dOptDouble2;
        }
        return d10 < dOptDouble ? dOptDouble : d10;
    }
}
