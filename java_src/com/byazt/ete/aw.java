package com.byazt.ete;

import com.byazt.nys.PluginConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 9})
public class aw {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13577c;
    public int tt;
    public String uj;
    public String ve;

    public static aw c(String str) {
        try {
            return c(new JSONObject(str));
        } catch (JSONException e10) {
            com.byazt.nr.m.tt("LiveSdkConfig", "parse failed:".concat(String.valueOf(e10)));
            return new aw();
        }
    }

    public boolean n() {
        return this.f13577c == 1;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ad_live_status", c());
            jSONObject.put(PluginConstants.KEY_APP_ID, tt());
            jSONObject.put("partner", ve());
            jSONObject.put("secure_key", uj());
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject.toString();
    }

    public int tt() {
        return this.tt;
    }

    public String uj() {
        return this.uj;
    }

    public String ve() {
        return this.ve;
    }

    public void tt(int i10) {
        this.tt = i10;
    }

    public void ve(String str) {
        this.uj = str;
    }

    public void tt(String str) {
        this.ve = str;
    }

    public static aw c(JSONObject jSONObject) {
        aw awVar = new aw();
        awVar.c(jSONObject.optInt("ad_live_status"));
        awVar.tt(jSONObject.optInt(PluginConstants.KEY_APP_ID));
        awVar.tt(jSONObject.optString("partner"));
        awVar.ve(jSONObject.optString("secure_key"));
        return awVar;
    }

    public int c() {
        return this.f13577c;
    }

    public void c(int i10) {
        this.f13577c = i10;
    }
}
