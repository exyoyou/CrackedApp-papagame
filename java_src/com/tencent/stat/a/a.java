package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatConfig;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<String, ?> f83823a;

    public a(Context context, int i10, Map<String, ?> map) {
        super(context, i10);
        this.f83823a = map;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.ADDITION;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) throws JSONException {
        com.tencent.stat.common.k.a(jSONObject, "qq", StatConfig.getQQ());
        Map<String, ?> map = this.f83823a;
        if (map == null || map.size() <= 0) {
            return true;
        }
        for (Map.Entry<String, ?> entry : this.f83823a.entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
        return true;
    }
}
