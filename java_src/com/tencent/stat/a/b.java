package com.tencent.stat.a;

import android.content.Context;
import java.util.Map;
import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected c f83824a;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f83825l;

    public b(Context context, int i10, String str) {
        super(context, i10);
        c cVar = new c();
        this.f83824a = cVar;
        this.f83825l = -1L;
        cVar.f83826a = str;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.CUSTOM;
    }

    public void a(long j10) {
        this.f83825l = j10;
    }

    public void a(Properties properties) {
        if (properties != null) {
            this.f83824a.f83828c = (Properties) properties.clone();
        }
    }

    public void a(String[] strArr) {
        if (strArr != null) {
            this.f83824a.f83827b = (String[]) strArr.clone();
        }
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) throws JSONException {
        jSONObject.put("ei", this.f83824a.f83826a);
        long j10 = this.f83825l;
        if (j10 > 0) {
            jSONObject.put(com.umeng.analytics.pro.f.f84649ac, j10);
        }
        c cVar = this.f83824a;
        if (cVar.f83828c == null && cVar.f83827b == null) {
            jSONObject.put("kv", new JSONObject());
        }
        if (this.f83824a.f83827b != null) {
            JSONArray jSONArray = new JSONArray();
            for (String str : this.f83824a.f83827b) {
                jSONArray.put(str);
            }
            jSONObject.put(com.sigmob.sdk.archives.d.f78708a, jSONArray);
        }
        if (this.f83824a.f83828c == null) {
            return true;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            for (Map.Entry entry : this.f83824a.f83828c.entrySet()) {
                jSONObject2.put(entry.getKey().toString(), entry.getValue().toString());
            }
        } catch (Exception unused) {
            jSONObject2 = new JSONObject(this.f83824a.f83828c);
        }
        jSONObject.put("kv", jSONObject2);
        return true;
    }
}
