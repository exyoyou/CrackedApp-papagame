package com.byazt.nn;

import com.byazt.hu.u;
import com.byazt.nr.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1020, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17514a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17515c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f17516n;
    public String sp;
    public long tt;
    public String uj;
    public long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile long f17517x;

    public c() {
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mDownloadId", this.f17515c);
            jSONObject.put("mAdId", this.tt);
            jSONObject.put("mExtValue", this.ve);
            jSONObject.put("mPackageName", this.uj);
            jSONObject.put("mAppName", this.f17516n);
            jSONObject.put("mLogExtra", this.f17514a);
            jSONObject.put("mFileName", this.sp);
            jSONObject.put("mTimeStamp", this.f17517x);
        } catch (JSONException e10) {
            m.c(e10);
        }
        return jSONObject;
    }

    public c(long j10, long j11, long j12, String str, String str2, String str3, String str4) {
        this.f17515c = j10;
        this.tt = j11;
        this.ve = j12;
        this.uj = str;
        this.f17516n = str2;
        this.f17514a = str3;
        this.sp = str4;
    }

    public static c c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        c cVar = new c();
        try {
            cVar.f17515c = u.c(jSONObject, "mDownloadId");
            cVar.tt = u.c(jSONObject, "mAdId");
            cVar.ve = u.c(jSONObject, "mExtValue");
            cVar.uj = jSONObject.optString("mPackageName");
            cVar.f17516n = jSONObject.optString("mAppName");
            cVar.f17514a = jSONObject.optString("mLogExtra");
            cVar.sp = jSONObject.optString("mFileName");
            cVar.f17517x = u.c(jSONObject, "mTimeStamp");
            return cVar;
        } catch (Exception e10) {
            m.c(e10);
            return null;
        }
    }
}
