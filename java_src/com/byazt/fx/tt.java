package com.byazt.fx;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 839, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14288c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f14289n;
    public int tt;
    public float uj;
    public long ve;

    public tt(JSONObject jSONObject) {
        this.f14288c = 0;
        this.tt = 0;
        this.ve = 0L;
        this.uj = 0.1f;
        this.f14289n = 0.1f;
        if (jSONObject == null) {
            return;
        }
        this.f14288c = jSONObject.optInt("time");
        this.tt = jSONObject.optInt("type");
        this.ve = jSONObject.optLong("duration");
        this.uj = (float) jSONObject.optDouble("intensity");
        this.f14289n = (float) jSONObject.optDouble("density");
        if (this.tt == 1 || this.ve < 100) {
            c(100L);
        }
    }

    public int c() {
        return this.f14288c;
    }

    public int getType() {
        return this.tt;
    }

    public long tt() {
        return this.ve;
    }

    public float uj() {
        return this.f14289n;
    }

    public float ve() {
        return this.uj;
    }

    public void c(long j10) {
        this.ve = j10;
    }
}
