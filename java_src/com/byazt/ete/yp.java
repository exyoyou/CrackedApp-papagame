package com.byazt.ete;

import com.byazt.bv.BaseConstants;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 215})
public class yp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13977a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f13978c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f13979da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f13980i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f13981m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f13982n;
    public String nu;
    public String rh;
    public long sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f13983t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f13984u;
    public long uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f13985x;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f13986z;

    public static yp c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        yp ypVar = new yp();
        ypVar.f13978c = jSONObject.optLong(HmRtcEnvironment.kUserId);
        ypVar.tt = jSONObject.optString("coupon_meta_id");
        ypVar.ve = jSONObject.optString("unique_id");
        ypVar.uj = jSONObject.optLong("device_id");
        ypVar.f13982n = jSONObject.optBoolean("has_coupon");
        ypVar.f13977a = jSONObject.optInt("coupon_scene");
        ypVar.sp = jSONObject.optInt("type");
        ypVar.f13985x = jSONObject.optLong("threshold");
        ypVar.f13980i = jSONObject.optString("scene_key");
        ypVar.f13979da = jSONObject.optLong(ConstantsAPI.WXWebPage.KEY_ACTIVITY_ID);
        ypVar.sl = jSONObject.optLong("amount");
        ypVar.f13983t = jSONObject.optInt("action");
        ypVar.f13984u = jSONObject.optLong("style");
        ypVar.yp = jSONObject.optString(com.umeng.analytics.pro.f.f84665p);
        ypVar.f13986z = jSONObject.optString("expire_time");
        ypVar.f13981m = jSONObject.optString("button_text");
        ypVar.nu = jSONObject.optString(BaseConstants.EVENT_LABEL_EXTRA);
        ypVar.rh = jSONObject.optString(com.papa.controller.component.bluetooth.spp.c.f76484o);
        return ypVar;
    }

    public int getType() {
        return this.sp;
    }

    public JSONObject tt() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(HmRtcEnvironment.kUserId, this.f13978c);
            jSONObject.put("coupon_meta_id", this.tt);
            jSONObject.put("unique_id", this.ve);
            jSONObject.put("device_id", this.uj);
            jSONObject.put("type", this.sp);
            jSONObject.put("scene_key", this.f13980i);
            jSONObject.put(ConstantsAPI.WXWebPage.KEY_ACTIVITY_ID, this.f13979da);
            jSONObject.put(HmInputMappingContent.FIELD_VALUE, this.sl);
            jSONObject.put("threshold", this.f13985x);
            jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, this.nu);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject;
    }

    public String uj() {
        return this.rh;
    }

    public int ve() {
        return this.f13977a;
    }

    public boolean tt(boolean z10) {
        int i10;
        boolean z11 = this.f13982n && this.sl > 0;
        if (z10) {
            if (z11 && ((i10 = this.f13977a) == 0 || i10 == 5)) {
                return true;
            }
        } else if (z11 && this.f13977a == 5) {
            return true;
        }
        return false;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(HmRtcEnvironment.kUserId, this.f13978c);
            jSONObject.put("coupon_meta_id", this.tt);
            jSONObject.put("unique_id", this.ve);
            jSONObject.put("device_id", this.uj);
            jSONObject.put("has_coupon", this.f13982n);
            jSONObject.put("coupon_scene", this.f13977a);
            jSONObject.put("type", this.sp);
            jSONObject.put("threshold", this.f13985x);
            jSONObject.put("scene_key", this.f13980i);
            jSONObject.put(ConstantsAPI.WXWebPage.KEY_ACTIVITY_ID, this.f13979da);
            jSONObject.put("amount", this.sl);
            jSONObject.put("action", this.f13983t);
            jSONObject.put("style", this.f13984u);
            jSONObject.put(com.umeng.analytics.pro.f.f84665p, this.yp);
            jSONObject.put("expire_time", this.f13986z);
            jSONObject.put("button_text", this.f13981m);
            jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, this.nu);
            jSONObject.put(com.papa.controller.component.bluetooth.spp.c.f76484o, this.rh);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject;
    }

    public void c(String str) {
        this.rh = str;
    }

    public void c(boolean z10) {
        this.f13982n = z10;
    }

    public void c(int i10) {
        this.f13977a = i10;
    }

    public void c(long j10) {
        this.sl = j10;
    }
}
