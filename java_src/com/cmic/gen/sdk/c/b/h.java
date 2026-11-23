package com.cmic.gen.sdk.c.b;

import com.join.mgps.dto.Constant;
import com.tencent.stat.DeviceInfo;
import com.umeng.umcrash.UMCrash;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class h extends a {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected String f24410y = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected String f24411z = "";

    @Override // com.cmic.gen.sdk.c.b.a
    public void a(String str) {
        this.f24380v = t(str);
    }

    @Override // com.cmic.gen.sdk.c.b.g
    protected String a_(String str) {
        return this.f24360b + this.f24361c + this.f24362d + this.f24363e + this.f24364f + this.f24365g + this.f24366h + this.f24367i + this.f24368j + this.f24371m + this.f24372n + str + this.f24373o + this.f24375q + this.f24376r + this.f24377s + this.f24378t + this.f24379u + this.f24380v + this.f24410y + this.f24411z + this.f24381w + this.f24382x;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(DeviceInfo.TAG_VERSION, this.f24359a);
            jSONObject.put("sdkver", this.f24360b);
            jSONObject.put("appid", this.f24361c);
            jSONObject.put("imsi", this.f24362d);
            jSONObject.put("operatortype", this.f24363e);
            jSONObject.put("networktype", this.f24364f);
            jSONObject.put("mobilebrand", this.f24365g);
            jSONObject.put("mobilemodel", this.f24366h);
            jSONObject.put("mobilesystem", this.f24367i);
            jSONObject.put("clienttype", this.f24368j);
            jSONObject.put("interfacever", this.f24369k);
            jSONObject.put("expandparams", this.f24370l);
            jSONObject.put("msgid", this.f24371m);
            jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, this.f24372n);
            jSONObject.put("subimsi", this.f24373o);
            jSONObject.put(Constant.MD5, this.f24374p);
            jSONObject.put("apppackage", this.f24375q);
            jSONObject.put("appsign", this.f24376r);
            jSONObject.put("ipv4_list", this.f24377s);
            jSONObject.put("ipv6_list", this.f24378t);
            jSONObject.put("sdkType", this.f24379u);
            jSONObject.put("tempPDR", this.f24380v);
            jSONObject.put("scrip", this.f24410y);
            jSONObject.put("userCapaid", this.f24411z);
            jSONObject.put("funcType", this.f24381w);
            jSONObject.put("socketip", this.f24382x);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        return this.f24359a + x.a.f97576d + this.f24360b + x.a.f97576d + this.f24361c + x.a.f97576d + this.f24362d + x.a.f97576d + this.f24363e + x.a.f97576d + this.f24364f + x.a.f97576d + this.f24365g + x.a.f97576d + this.f24366h + x.a.f97576d + this.f24367i + x.a.f97576d + this.f24368j + x.a.f97576d + this.f24369k + x.a.f97576d + this.f24370l + x.a.f97576d + this.f24371m + x.a.f97576d + this.f24372n + x.a.f97576d + this.f24373o + x.a.f97576d + this.f24374p + x.a.f97576d + this.f24375q + x.a.f97576d + this.f24376r + "&&" + this.f24377s + x.a.f97576d + this.f24378t + x.a.f97576d + this.f24379u + x.a.f97576d + this.f24380v + x.a.f97576d + this.f24410y + x.a.f97576d + this.f24411z + x.a.f97576d + this.f24381w + x.a.f97576d + this.f24382x;
    }

    public void w(String str) {
        this.f24410y = t(str);
    }

    public void x(String str) {
        this.f24411z = t(str);
    }
}
