package com.cmic.gen.sdk.c.b;

import com.tencent.stat.DeviceInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class d extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f24393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24394d = "authz";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24395e;

    public d(String str, String str2, String str3) {
        this.f24391a = str;
        this.f24392b = str2;
        this.f24393c = str3;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public String a() {
        return this.f24391a;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    protected String a_(String str) {
        return null;
    }

    public void b(String str) {
        this.f24394d = str;
    }

    public void c(String str) {
        this.f24395e = str;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(DeviceInfo.TAG_VERSION, this.f24392b);
            jSONObject.put("data", this.f24393c);
            jSONObject.put("userCapaid", this.f24395e);
            jSONObject.put("funcType", this.f24394d);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}
