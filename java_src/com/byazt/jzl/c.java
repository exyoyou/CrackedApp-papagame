package com.byazt.jzl;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1574, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f16056c;
    public String tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f16058x;
    public long ve = -2147483648L;
    public int uj = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f16057n = -2147483648L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f16055a = -2.147483648E9d;
    public double sp = -2.147483648E9d;

    public double a() {
        return this.f16055a;
    }

    public JSONObject c() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(this.tt)) {
                jSONObject.putOpt("audio_url", this.tt);
            }
            if (!TextUtils.isEmpty(this.f16056c)) {
                jSONObject.putOpt("file_hash", this.f16056c);
            }
            long j10 = this.ve;
            if (j10 > 0) {
                jSONObject.put("size", j10);
            }
            int i10 = this.uj;
            if (i10 >= 0) {
                jSONObject.put("reward_audio_cached_type", i10);
            }
            long j11 = this.f16057n;
            if (j11 >= 0) {
                jSONObject.put("audio_preload_size", j11);
            }
            double d10 = this.f16055a;
            if (d10 > 0.0d) {
                jSONObject.put("audio_duration", d10);
            }
            double d11 = this.sp;
            if (d11 > 0.0d) {
                jSONObject.put("start", d11);
            }
            int i11 = this.f16058x;
            if (i11 > 0) {
                jSONObject.put("repeat_count", i11);
            }
            return jSONObject;
        } catch (Exception e10) {
            e10.getMessage();
            return null;
        }
    }

    public String n() {
        return this.tt;
    }

    public int sp() {
        return this.f16058x;
    }

    public String tt() {
        return this.f16056c;
    }

    public double uj() {
        return this.sp;
    }

    public long ve() {
        return this.ve;
    }

    public void tt(long j10) {
        this.f16057n = j10;
    }

    public void tt(String str) {
        this.tt = str;
    }

    public void tt(double d10) {
        this.f16055a = d10;
    }

    public void tt(int i10) {
        if (i10 < 0) {
            i10 = 0;
        }
        this.f16058x = i10;
    }

    public void c(String str) {
        this.f16056c = str;
    }

    public void c(long j10) {
        this.ve = j10;
    }

    public void c(int i10) {
        this.uj = i10;
    }

    public void c(double d10) {
        this.sp = d10;
    }
}
