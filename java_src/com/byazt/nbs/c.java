package com.byazt.nbs;

import android.text.TextUtils;
import com.byazt.nys.PluginConstants;
import org.json.JSONObject;
import u.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1871, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17095c;
    public String tt;
    public com.byazt.ih.tt uj;
    public String ve;

    public c(String str, String str2, String str3) {
        this.f17095c = str;
        this.tt = str2;
        this.ve = str3;
        this.uj = new com.byazt.ih.tt();
    }

    public String a() {
        com.byazt.ih.tt ttVar = this.uj;
        if (ttVar != null) {
            return ttVar.tt();
        }
        return null;
    }

    public String c() {
        return this.f17095c;
    }

    public boolean n() {
        com.byazt.ih.tt ttVar = this.uj;
        return ttVar != null && ttVar.uj();
    }

    public String toString() {
        return "AdNetworkConfValue{mAdnName='" + this.f17095c + "'mAppId='" + this.tt + "', mAppKey='" + this.ve + "', mGMCustomConfig=" + this.uj + '}';
    }

    public String tt() {
        return this.tt;
    }

    public com.byazt.ih.tt uj() {
        return this.uj;
    }

    public String ve() {
        return this.ve;
    }

    public static c c(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString(PluginConstants.KEY_APP_ID);
        String strOptString2 = jSONObject.optString(b.f97422h);
        String strOptString3 = jSONObject.optString("custom_type");
        return !TextUtils.equals(strOptString3, "1") ? new c(str, strOptString, strOptString2) : new c(str, strOptString, strOptString2, jSONObject.optString("init_class_name"), jSONObject.optString("banner_class_name"), jSONObject.optString("interstitial_class_name"), jSONObject.optString("reward_class_name"), jSONObject.optString("full_video_class_name"), jSONObject.optString("splash_class_name"), jSONObject.optString("feed_class_name"), jSONObject.optString("draw_class_name"), strOptString3);
    }

    public c(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.f17095c = str;
        this.tt = str2;
        this.ve = str3;
        this.uj = new com.byazt.ih.tt(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12);
    }
}
