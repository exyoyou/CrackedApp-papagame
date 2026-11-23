package com.byazt.ete;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.sigmob.sdk.base.mta.PointParamKey;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BARRAGE_MASK})
public class sv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13877a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13878c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public c f13879da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public tt f13880i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13881n;
    public JSONArray sp;
    public boolean tt;
    public String uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13882x;

    public static sv c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        sv svVar = new sv();
        svVar.f13878c = jSONObject.optString("promotion_id");
        svVar.tt = jSONObject.optBoolean("is_silent_auth", false);
        svVar.ve = jSONObject.optBoolean("enable_playable_auth", false);
        svVar.uj = jSONObject.optString("aweme_agreements");
        svVar.f13881n = jSONObject.optString("aweme_privacy");
        svVar.f13877a = jSONObject.optString("live_csj_libra_param");
        svVar.sp = jSONObject.optJSONArray("tasks");
        svVar.f13882x = jSONObject.optInt("live_playable");
        svVar.f13879da = c.c(jSONObject.optJSONObject("product"));
        svVar.f13880i = tt.c(jSONObject.optJSONObject(PayCenterOrderRequest.PAY_TYPE_COUPON));
        return svVar;
    }

    public String a() {
        return this.f13881n;
    }

    public tt da() {
        return this.f13880i;
    }

    public boolean i() {
        return this.f13882x == 2 && this.ve;
    }

    public String n() {
        return this.uj;
    }

    public c sl() {
        return this.f13879da;
    }

    public String sp() {
        return this.f13877a;
    }

    public String tt() {
        return this.f13878c;
    }

    public boolean uj() {
        return this.ve;
    }

    public boolean ve() {
        return this.tt;
    }

    public JSONArray x() {
        return this.sp;
    }

    @com.byazt.zqa.c(c = {0, 1, 8, 1626})
    public static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13884c;
        public int tt;

        public static tt c(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            tt ttVar = new tt();
            ttVar.f13884c = jSONObject.optInt("amount");
            ttVar.tt = jSONObject.optInt("threshold");
            return ttVar;
        }

        public int tt() {
            return this.tt;
        }

        public JSONObject ve() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("amount", this.f13884c);
                jSONObject.put("threshold", this.tt);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }

        public int c() {
            return this.f13884c;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 8, 1639})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f13883c;
        public String tt;
        public double uj;
        public double ve;

        public static c c(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            c cVar = new c();
            cVar.f13883c = jSONObject.optString("title");
            cVar.tt = jSONObject.optString("image");
            cVar.uj = jSONObject.optDouble("price");
            cVar.ve = jSONObject.optDouble(PointParamKey.ORIGIN_PRICE);
            return cVar;
        }

        public JSONObject n() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("title", this.f13883c);
                jSONObject.put("image", this.tt);
                jSONObject.put("price", this.uj);
                jSONObject.put(PointParamKey.ORIGIN_PRICE, this.ve);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }

        public String tt() {
            return this.tt;
        }

        public double uj() {
            return this.uj;
        }

        public double ve() {
            return this.ve;
        }

        public String c() {
            return this.f13883c;
        }
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("promotion_id", this.f13878c);
            jSONObject.put("is_silent_auth", this.tt);
            jSONObject.put("enable_playable_auth", this.ve);
            jSONObject.put("aweme_agreements", this.uj);
            jSONObject.put("aweme_privacy", this.f13881n);
            jSONObject.put("live_csj_libra_param", this.f13877a);
            jSONObject.put("tasks", this.sp);
            jSONObject.put("live_playable", this.f13882x);
            c cVar = this.f13879da;
            if (cVar != null) {
                jSONObject.put("product", cVar.n());
            }
            tt ttVar = this.f13880i;
            if (ttVar != null) {
                jSONObject.put(PayCenterOrderRequest.PAY_TYPE_COUPON, ttVar.ve());
            }
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject;
    }
}
