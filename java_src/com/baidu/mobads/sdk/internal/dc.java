package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class dc implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cz f7832a;

    dc(cz czVar) {
        this.f7832a = czVar;
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(JSONObject jSONObject) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(JSONObject jSONObject) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7832a.f());
        map.put("interstitial_container", viewGroup);
        map.put("entry", Integer.valueOf(this.f7832a.G));
        map.put("channelId", Integer.valueOf(this.f7832a.H));
        map.put("novel_id", this.f7832a.I);
        this.f7832a.a(cz.f7822u, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup, JSONObject jSONObject) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7832a.f());
        map.put("banner_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7832a.g()));
        map.put("entry", Integer.valueOf(this.f7832a.G));
        map.put("channelId", Integer.valueOf(this.f7832a.H));
        map.put("novel_id", this.f7832a.I);
        map.put("novel_info", jSONObject);
        this.f7832a.a(cz.f7824w, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, JSONObject jSONObject) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7832a.f());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7832a.g()));
        map.put("entry", Integer.valueOf(this.f7832a.G));
        map.put("channelId", Integer.valueOf(this.f7832a.H));
        map.put("novel_id", this.f7832a.I);
        map.put("novel_info", jSONObject);
        this.f7832a.a(cz.f7823v, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", viewGroup.getContext());
        map.put("banner_container", viewGroup);
        map.put("entry", Integer.valueOf(this.f7832a.G));
        map.put("channelId", Integer.valueOf(this.f7832a.H));
        map.put("novel_id", this.f7832a.I);
        map.put("isnight", Boolean.valueOf(this.f7832a.x()));
        this.f7832a.a(cz.f7826y, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, ViewGroup viewGroup2, int i10) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7832a.f());
        map.put("banner_container", viewGroup2);
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7832a.g()));
        map.put("entry", Integer.valueOf(this.f7832a.G));
        map.put("channelId", Integer.valueOf(this.f7832a.H));
        map.put("novel_id", this.f7832a.I);
        map.put("backgroundColor", Integer.valueOf(i10));
        this.f7832a.a(cz.f7827z, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        String strI = this.f7832a.i("get_cuid");
        String strI2 = this.f7832a.i("get_oaid");
        try {
            jSONObject.put("cuid", strI);
            jSONObject.put("imei", "");
            jSONObject.put("oaid", strI2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(long j10) {
        if (this.f7832a.K != null) {
            this.f7832a.K.onReadTime(j10);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, int i10) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7832a.f());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7832a.g()));
        map.put("entry", Integer.valueOf(this.f7832a.G));
        map.put("channelId", Integer.valueOf(this.f7832a.H));
        map.put("novel_id", this.f7832a.I);
        map.put("count_down", Integer.valueOf(i10));
        this.f7832a.a(cz.A, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(boolean z10) {
        RelativeLayout relativeLayout;
        if (this.f7832a.L == null || (relativeLayout = (RelativeLayout) this.f7832a.L.get()) == null) {
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", (Activity) this.f7832a.f7573i);
        map.put("interstitial_container", null);
        map.put("banner_container", relativeLayout);
        map.put("entry", Integer.valueOf(this.f7832a.G));
        map.put("channelId", Integer.valueOf(this.f7832a.H));
        map.put("novel_id", this.f7832a.I);
        map.put("isnight", Boolean.valueOf(this.f7832a.x()));
        this.f7832a.a(cz.f7827z, map);
    }
}
