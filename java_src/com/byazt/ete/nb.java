package com.byazt.ete;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM})
public class nb {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f13820c;

    public String c() {
        JSONObject jSONObject = this.f13820c;
        JSONObject jSONObjectOptJSONObject = jSONObject == null ? null : jSONObject.optJSONObject("performance_js");
        return jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("url") : "";
    }

    public String toString() {
        JSONObject jSONObject = this.f13820c;
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public static nb c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return c(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static nb c(JSONObject jSONObject) {
        nb nbVar = new nb();
        nbVar.f13820c = jSONObject;
        return nbVar;
    }
}
