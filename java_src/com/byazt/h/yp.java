package com.byazt.h;

import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 215})
public class yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JSONObject f14866c;
    public int tt;

    private yp(JSONObject jSONObject) {
        this.f14866c = jSONObject;
    }

    private int m() {
        return this.f14866c.optInt("url_balance", 2);
    }

    public boolean a() {
        return this.f14866c.optInt("segment_mode", 1) == 0;
    }

    public void c(int i10) {
        this.tt = tt(i10);
    }

    public long da() {
        long jOptInt = this.f14866c.optInt("connect_timeout", -1);
        if (jOptInt >= 2000) {
            return jOptInt;
        }
        return -1L;
    }

    public long i() {
        long jOptInt = ((long) this.f14866c.optInt("segment_max_kb", 0)) * 1048576;
        if (jOptInt < sp()) {
            return -1L;
        }
        return jOptInt;
    }

    public int n() {
        return this.f14866c.optInt("buffer_size", 8192);
    }

    public long sl() {
        long jOptInt = this.f14866c.optInt("read_timeout", -1);
        if (jOptInt >= 4000) {
            return jOptInt;
        }
        return -1L;
    }

    public long sp() {
        long jOptInt = ((long) this.f14866c.optInt("segment_min_kb", 512)) * 1024;
        if (jOptInt < 65536) {
            return 65536L;
        }
        return jOptInt;
    }

    public int t() {
        return this.f14866c.optInt("ip_strategy", 0);
    }

    public boolean tt() {
        return m() > 0;
    }

    public float u() {
        return (float) this.f14866c.optDouble("main_ratio", 0.0d);
    }

    public int uj() {
        return this.f14866c.optInt("buffer_count", 512);
    }

    public boolean ve() {
        return m() == 1;
    }

    public long x() {
        long jOptInt = ((long) this.f14866c.optInt("segment_min_init_mb", 10)) * 1048576;
        if (jOptInt < 5242880) {
            return 5242880L;
        }
        return jOptInt;
    }

    public int yp() {
        return this.f14866c.optInt("ratio_segment", 0);
    }

    public float z() {
        return Math.min(Math.max(0.0f, (float) this.f14866c.optDouble("poor_speed_ratio", 0.0d)), 1.0f);
    }

    private int tt(int i10) {
        int iOptInt = this.f14866c.optInt("thread_count", 4);
        if (iOptInt > 16) {
            iOptInt = 16;
        }
        if (iOptInt > 0) {
            return m() == 1 ? Math.min(iOptInt, i10) : iOptInt;
        }
        if (m() > 0) {
            return i10;
        }
        return 1;
    }

    public int c() {
        return this.tt;
    }

    @NonNull
    public static yp c(@NonNull JSONObject jSONObject) {
        return new yp(jSONObject);
    }
}
