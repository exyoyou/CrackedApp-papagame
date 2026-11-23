package com.umeng.commonsdk.vchannel;

import android.content.Context;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f85606b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f85605a = "_$unknown";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f85607c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f85608d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f85609e = a.f85604j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Object> f85610f = null;

    public b(Context context) {
        this.f85606b = UMGlobalContext.getInstance(context).getProcessName(context);
    }

    public String a() {
        return this.f85605a;
    }

    public long b() {
        return this.f85607c;
    }

    public Map<String, Object> c() {
        return this.f85610f;
    }

    public JSONObject d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", this.f85605a);
            jSONObject.put("pn", this.f85606b);
            jSONObject.put("ds", this.f85608d);
            jSONObject.put("ts", this.f85607c);
            Map<String, Object> map = this.f85610f;
            if (map != null && map.size() > 0) {
                for (String str : this.f85610f.keySet()) {
                    jSONObject.put(str, this.f85610f.get(str));
                }
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(this.f85609e, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("ekv", jSONArray2);
            return jSONObject3;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("[");
        sb2.append("id:" + this.f85605a + ",");
        sb2.append("pn:" + this.f85606b + ",");
        sb2.append("ts:" + this.f85607c + ",");
        Map<String, Object> map = this.f85610f;
        if (map != null && map.size() > 0) {
            for (String str : this.f85610f.keySet()) {
                Object obj = this.f85610f.get(str);
                sb2.append(obj == null ? str + ": null," : str + ": " + obj.toString() + ",");
            }
        }
        sb2.append("ds:" + this.f85608d + "]");
        return sb2.toString();
    }

    public void a(String str) {
        this.f85605a = str;
    }

    public void a(long j10) {
        this.f85607c = j10;
    }

    public void a(Map<String, Object> map) {
        this.f85610f = map;
    }
}
