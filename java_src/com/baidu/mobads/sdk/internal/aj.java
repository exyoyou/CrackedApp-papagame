package com.baidu.mobads.sdk.internal;

import android.view.ViewGroup;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class aj implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f7408a;

    aj(ae aeVar) {
        this.f7408a = aeVar;
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(JSONObject jSONObject) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(JSONObject jSONObject) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(boolean z10) {
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup, JSONObject jSONObject) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7408a.f());
        map.put("banner_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7408a.g()));
        map.put("entry", 2);
        map.put("channelId", Integer.valueOf(this.f7408a.f7397w[0]));
        map.put("novel_info", jSONObject);
        this.f7408a.a(cz.f7824w, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7408a.f());
        map.put("interstitial_container", viewGroup);
        map.put("entry", 2);
        map.put("channelId", Integer.valueOf(this.f7408a.f7397w[0]));
        this.f7408a.a(cz.f7822u, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, JSONObject jSONObject) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7408a.f());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7408a.g()));
        map.put("entry", 2);
        map.put("channelId", Integer.valueOf(this.f7408a.f7397w[0]));
        map.put("novel_info", jSONObject);
        this.f7408a.a(cz.f7823v, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", viewGroup.getContext());
        map.put("banner_container", viewGroup);
        map.put("entry", 2);
        map.put("channelId", Integer.valueOf(this.f7408a.f7397w[0]));
        this.f7408a.a(cz.f7826y, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, ViewGroup viewGroup2, int i10) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7408a.f());
        map.put("banner_container", viewGroup2);
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7408a.g()));
        map.put("entry", 2);
        map.put("channelId", Integer.valueOf(this.f7408a.f7397w[0]));
        map.put("backgroundColor", Integer.valueOf(i10));
        this.f7408a.a(cz.f7827z, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        String strI = this.f7408a.i("get_cuid");
        String strI2 = this.f7408a.i("get_oaid");
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
        this.f7408a.f7575k.a("单次阅读器打开时长 = " + j10);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, int i10) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7408a.f());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7408a.g()));
        map.put("entry", 2);
        map.put("channelId", Integer.valueOf(this.f7408a.f7397w[0]));
        map.put("count_down", Integer.valueOf(i10));
        this.f7408a.a(cz.A, map);
    }
}
