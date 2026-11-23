package com.tencent.stat;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkMonitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f83755a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f83756b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f83757c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f83758d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f83759e = "";

    public String getDomain() {
        return this.f83757c;
    }

    public long getMillisecondsConsume() {
        return this.f83755a;
    }

    public int getPort() {
        return this.f83758d;
    }

    public String getRemoteIp() {
        return this.f83759e;
    }

    public int getStatusCode() {
        return this.f83756b;
    }

    public void setDomain(String str) {
        this.f83757c = str;
    }

    public void setMillisecondsConsume(long j10) {
        this.f83755a = j10;
    }

    public void setPort(int i10) {
        this.f83758d = i10;
    }

    public void setRemoteIp(String str) {
        this.f83759e = str;
    }

    public void setStatusCode(int i10) {
        this.f83756b = i10;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tm", this.f83755a);
            jSONObject.put("st", this.f83756b);
            String str = this.f83757c;
            if (str != null) {
                jSONObject.put(com.kuaishou.weapon.p0.t.f74897v, str);
            }
            jSONObject.put("pt", this.f83758d);
            String str2 = this.f83759e;
            if (str2 != null) {
                jSONObject.put("rip", str2);
            }
            jSONObject.put("ts", System.currentTimeMillis() / 1000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
