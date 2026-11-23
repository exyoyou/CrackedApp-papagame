package com.byazt.ete;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, MediaPlayer.MEDIA_PLAYER_OPTION_GET_MASTER_CLOCK_BY_PTS})
public class ma {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13806a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13807c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public JSONObject f13808n;
    public String sp;
    public String tt;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f13809x;

    public String a() {
        return this.sp;
    }

    public String c() {
        return this.f13807c;
    }

    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f13807c);
            jSONObject.put(TKDownloadReason.KSAD_TK_MD5, this.tt);
            jSONObject.put("url", this.ve);
            jSONObject.put("data", this.uj);
            jSONObject.put("material_type", this.f13806a);
            jSONObject.put("custom_components", this.f13808n);
            jSONObject.put("express_gesture_priority", this.sp);
            jSONObject.put("rule_id", this.f13809x);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject;
    }

    public JSONObject n() {
        return this.f13808n;
    }

    public int sp() {
        return this.f13806a;
    }

    public String tt() {
        return this.tt;
    }

    public String uj() {
        return this.uj;
    }

    public String ve() {
        return this.ve;
    }

    public String x() {
        return this.f13809x;
    }

    public static ma c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ma maVar = new ma();
        maVar.f13807c = jSONObject.optString("id");
        maVar.uj = jSONObject.optString("data");
        maVar.ve = jSONObject.optString("url");
        maVar.tt = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
        maVar.sp = jSONObject.optString("express_gesture_priority");
        maVar.f13806a = jSONObject.optInt("material_type");
        maVar.f13808n = jSONObject.optJSONObject("custom_components");
        maVar.f13809x = jSONObject.optString("rule_id");
        return maVar;
    }
}
