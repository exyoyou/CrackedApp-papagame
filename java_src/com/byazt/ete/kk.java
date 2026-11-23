package com.byazt.ete;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.dto.PayCenterOrderRequest;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID})
public class kk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public nu f13774c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public yp f13775n;
    public q tt;
    public String uj;
    public sv ve;

    public static kk c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        kk kkVar = new kk();
        nu nuVar = new nu();
        kkVar.f13774c = nuVar;
        nuVar.tt(jSONObject.optString("deeplink_url", ""));
        kkVar.tt = q.c(jSONObject.optJSONObject("saas_info"));
        kkVar.ve = sv.c(jSONObject.optJSONObject("live_info"));
        kkVar.uj = jSONObject.optString("ecom_live_params");
        kkVar.f13775n = yp.c(jSONObject.optJSONObject(PayCenterOrderRequest.PAY_TYPE_COUPON));
        if (TextUtils.isEmpty(kkVar.f13774c.tt())) {
            return null;
        }
        return kkVar;
    }

    public sv a() {
        return this.ve;
    }

    public String n() {
        return this.uj;
    }

    public yp tt() {
        return this.f13775n;
    }

    public q uj() {
        return this.tt;
    }

    public nu ve() {
        return this.f13774c;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            nu nuVar = this.f13774c;
            if (nuVar != null) {
                jSONObject.put("deeplink_url", nuVar.tt());
            }
            q qVar = this.tt;
            if (qVar != null) {
                jSONObject.put("saas_info", qVar.c());
            }
            sv svVar = this.ve;
            if (svVar != null) {
                jSONObject.put("live_info", svVar.c());
            }
            String str = this.uj;
            if (str != null) {
                jSONObject.put("ecom_live_params", str);
            }
            yp ypVar = this.f13775n;
            if (ypVar != null) {
                jSONObject.put(PayCenterOrderRequest.PAY_TYPE_COUPON, ypVar.c());
            }
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject;
    }
}
