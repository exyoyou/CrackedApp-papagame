package com.baidu.mobads.sdk.internal;

import android.view.ViewGroup;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
class cy implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f7816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f7817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f7818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ cu f7819d;

    cy(cu cuVar, int i10, int i11, String str) {
        this.f7819d = cuVar;
        this.f7816a = i10;
        this.f7817b = i11;
        this.f7818c = str;
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
        map.put("novel_activity", this.f7819d.e());
        map.put("banner_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7819d.f()));
        map.put("entry", Integer.valueOf(this.f7816a));
        map.put("channelId", Integer.valueOf(this.f7817b));
        map.put("novel_id", this.f7818c);
        map.put("novel_info", jSONObject);
        this.f7819d.a(cz.f7824w, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7819d.e());
        map.put("interstitial_container", viewGroup);
        map.put("entry", Integer.valueOf(this.f7816a));
        map.put("channelId", Integer.valueOf(this.f7817b));
        map.put("novel_id", this.f7818c);
        this.f7819d.a(cz.f7822u, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, JSONObject jSONObject) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7819d.e());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7819d.f()));
        map.put("entry", Integer.valueOf(this.f7816a));
        map.put("channelId", Integer.valueOf(this.f7817b));
        map.put("novel_id", this.f7818c);
        map.put("novel_info", jSONObject);
        this.f7819d.a(cz.f7823v, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void b(ViewGroup viewGroup) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", viewGroup.getContext());
        map.put("banner_container", viewGroup);
        map.put("entry", Integer.valueOf(this.f7816a));
        map.put("channelId", Integer.valueOf(this.f7817b));
        map.put("novel_id", this.f7818c);
        this.f7819d.a(cz.f7826y, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, ViewGroup viewGroup2, int i10) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7819d.e());
        map.put("banner_container", viewGroup2);
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7819d.f()));
        map.put("entry", Integer.valueOf(this.f7816a));
        map.put("channelId", Integer.valueOf(this.f7817b));
        map.put("novel_id", this.f7818c);
        map.put("backgroundColor", Integer.valueOf(i10));
        this.f7819d.a(cz.f7827z, map);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        String strI = this.f7819d.i("get_cuid");
        String strI2 = this.f7819d.i("get_oaid");
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
        this.f7819d.f7575k.a("单次阅读器打开时长 = " + j10);
    }

    @Override // com.baidu.mobads.sdk.internal.w
    public void a(ViewGroup viewGroup, int i10) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("novel_activity", this.f7819d.e());
        map.put("interstitial_container", viewGroup);
        map.put("isnight", Boolean.valueOf(this.f7819d.f()));
        map.put("entry", Integer.valueOf(this.f7816a));
        map.put("channelId", Integer.valueOf(this.f7817b));
        map.put("novel_id", this.f7818c);
        map.put("count_down", Integer.valueOf(i10));
        this.f7819d.a(cz.A, map);
    }
}
