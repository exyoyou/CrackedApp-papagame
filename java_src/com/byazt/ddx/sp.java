package com.byazt.ddx;

import android.text.TextUtils;
import com.byazt.bv.BaseConstants;
import com.byazt.ete.ic;
import com.byazt.nr.m;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 483, 91})
public class sp {
    public final ic tt;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f12792c = false;
    public String ve = "landingpage";
    public long uj = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f12795n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f12791a = 0;
    public long sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f12797x = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f12794i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public AtomicInteger f12793da = new AtomicInteger(0);
    public boolean sl = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public AtomicBoolean f12796t = new AtomicBoolean(false);

    public sp(ic icVar) {
        this.tt = icVar;
    }

    public void uj() {
        if (this.f12796t.get() || !this.f12792c) {
            return;
        }
        uj.c(this.tt, this.ve, "load", new com.byazt.ya.c() { // from class: com.byazt.ddx.sp.1
            @Override // com.byazt.ya.c
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("render_type", "ugen");
                if (sp.this.tt != null && com.byazt.xs.da.x(sp.this.tt)) {
                    jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(sp.this.tt.pu()));
                }
                com.byazt.ic.c.c(jSONObject2, sp.this.tt);
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
                jSONObject.put("duration", Math.min(System.currentTimeMillis() - sp.this.f12794i, 600000L));
            }
        });
    }

    public void ve() {
        this.f12791a = System.currentTimeMillis();
        this.uj = System.currentTimeMillis();
    }

    public sp c(boolean z10) {
        this.sl = z10;
        return this;
    }

    public void tt() {
        if (this.f12792c) {
            return;
        }
        this.sp = System.currentTimeMillis();
        this.f12794i = System.currentTimeMillis();
        this.f12792c = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            ic icVar = this.tt;
            if (icVar != null && com.byazt.xs.da.x(icVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.tt.pu()));
            }
        } catch (Exception unused) {
        }
        c("load_start", jSONObject);
    }

    public void c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            ic icVar = this.tt;
            if (icVar != null && com.byazt.xs.da.x(icVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.tt.pu()));
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        c("open_url_h5", jSONObject);
    }

    public void c(int i10, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            ic icVar = this.tt;
            if (icVar != null && com.byazt.xs.da.x(icVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.tt.pu()));
            }
            jSONObject.putOpt("code", Integer.valueOf(i10));
            jSONObject.putOpt("msg", str);
        } catch (JSONException e10) {
            m.c(e10);
        }
        c("load_fail", jSONObject);
    }

    public void c(long j10) {
        if (this.f12796t.get()) {
            return;
        }
        this.f12796t.set(true);
        this.f12797x = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        long j11 = this.f12797x - this.sp;
        try {
            jSONObject.putOpt("render_type", "ugen");
            jSONObject.put("net_work_duration", j10);
            ic icVar = this.tt;
            if (icVar != null && com.byazt.xs.da.x(icVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.tt.pu()));
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        c("load_finish", jSONObject, Math.min(j11, 600000L));
    }

    public void c(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f12795n = jCurrentTimeMillis;
        long jMax = jCurrentTimeMillis - Math.max(this.uj, this.f12791a);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_status", 2);
            jSONObject.put("max_scroll_percent", this.f12793da.get());
            jSONObject.put("is_slide", i10);
            jSONObject.putOpt("render_type", "ugen");
            ic icVar = this.tt;
            if (icVar != null && com.byazt.xs.da.x(icVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.tt.pu()));
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        c("stay_page", jSONObject, Math.min(jMax, 600000L));
    }

    private void c(String str, JSONObject jSONObject) {
        c(str, jSONObject, -1L);
    }

    private void c(String str, JSONObject jSONObject, long j10) {
        if (!this.sl || this.tt == null || TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject2 = null;
        if (jSONObject != null) {
            try {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                    if (j10 > 0) {
                        jSONObject3.put("duration", j10);
                    }
                    jSONObject2 = jSONObject3;
                } catch (JSONException e10) {
                    e = e10;
                    jSONObject2 = jSONObject3;
                    m.c(e);
                }
            } catch (JSONException e11) {
                e = e11;
            }
        }
        uj.ve(this.tt, this.ve, str, jSONObject2);
    }
}
