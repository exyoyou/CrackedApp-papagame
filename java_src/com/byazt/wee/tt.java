package com.byazt.wee;

import android.text.TextUtils;
import com.byazt.omf.gt;
import com.byazt.qqc.ve;
import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1009, 13})
public class tt extends com.byazt.qqc.c {
    public double tt;
    public String ve;
    public final String uj = "xgc_prop_volume";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile int f21517n = -2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f21516c = new c(gt.getContext());

    public int a() {
        return (int) ve.c().a();
    }

    public void c(double d10) {
        this.tt = d10;
    }

    public int n() {
        return this.f21517n;
    }

    public int sp() {
        int iA = a();
        int iTt = this.f21516c.tt() - this.f21516c.c();
        if (iTt != 0) {
            return Math.round((iA * 100.0f) / iTt);
        }
        return -1;
    }

    public void tt(double d10) {
        int iTt = this.f21516c.tt();
        int iC = this.f21516c.c();
        int i10 = (int) d10;
        if (d10 < iTt) {
            iTt = d10 <= ((double) iC) ? iC : i10;
        }
        this.f21517n = iTt;
        this.f21516c.c(iTt);
    }

    @Override // com.byazt.qqc.c
    public JSONObject uj() {
        return gt.tt().mm();
    }

    @Override // com.byazt.qqc.c
    public boolean ve() {
        int iSp = sp();
        return iSp >= 94 || iSp <= 6;
    }

    public void c(String str) {
        this.ve = str;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0019 A[PHI: r7
      0x0019: PHI (r7v2 double) = (r7v0 double), (r7v1 double) binds: [B:8:0x0017, B:11:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.byazt.qqc.c
    public boolean c(int i10) {
        double dC;
        JSONObject jSONObjectUj = uj();
        if (jSONObjectUj == null) {
            return false;
        }
        if (i10 != 1) {
            if (i10 == 2) {
                dC = c(jSONObjectUj);
            }
            return false;
        }
        dC = jSONObjectUj.optDouble(HmInputMappingContent.FIELD_VALUE, 0.0d);
        double d10 = -1.0d;
        if (dC <= -1.0d) {
            dC = d10;
        } else {
            d10 = 1.0d;
            if (dC >= 1.0d) {
                dC = d10;
            }
        }
        if (dC != 0.0d && dC != -2.0d) {
            tt(((double) a()) + (((double) (this.f21516c.tt() - this.f21516c.c())) * dC));
            return true;
        }
        return false;
    }

    @Override // com.byazt.qqc.c
    public void tt(int i10) {
        float fA = ve.c().a();
        if (fA != -2.0f) {
            int iTt = this.f21516c.tt();
            int iC = this.f21516c.c();
            int i11 = (int) fA;
            if (fA < iTt) {
                iTt = fA <= ((float) iC) ? iC : i11;
            }
            this.f21517n = iTt;
            this.f21516c.c(iTt);
        }
    }

    private double c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return -2.0d;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("applist");
        return com.byazt.qqc.c.c(((((double) (jSONArrayOptJSONArray != null && !TextUtils.isEmpty(this.ve) && jSONArrayOptJSONArray.toString().contains(this.ve) ? 1 : -1)) * jSONObject.optDouble("content_factor", 0.0d)) + (((double) (this.tt >= 10.0d ? 1 : -1)) * jSONObject.optDouble("duration_factor", 0.0d)) + (((double) (com.byazt.qqc.tt.tt() ? 1 : -1)) * jSONObject.optDouble("night_factor", 0.0d)) + (jSONObject.optDouble("week_factor", 0.0d) * ((double) (com.byazt.qqc.tt.c() ? 1 : -1))) + (((double) (this.f21516c.uj() ? 1 : -1)) * jSONObject.optDouble("headset_factor", 0.0d))) * jSONObject.optDouble("factor", 0.0d), jSONObject);
    }

    @Override // com.byazt.qqc.c
    public boolean tt() {
        return ve.c().uj();
    }
}
