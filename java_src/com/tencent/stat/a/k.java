package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.DeviceInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class k extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.tencent.stat.common.a f83863a;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private JSONObject f83864l;

    public k(Context context, int i10, JSONObject jSONObject) {
        super(context, i10);
        this.f83864l = null;
        this.f83863a = new com.tencent.stat.common.a(context);
        this.f83864l = jSONObject;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.SESSION_ENV;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) throws JSONException {
        DeviceInfo deviceInfo = this.f83836e;
        if (deviceInfo != null) {
            jSONObject.put("ut", deviceInfo.getUserType());
        }
        JSONObject jSONObject2 = this.f83864l;
        if (jSONObject2 != null) {
            jSONObject.put(com.umeng.ccg.a.f84982i, jSONObject2);
        }
        this.f83863a.a(jSONObject);
        return true;
    }
}
