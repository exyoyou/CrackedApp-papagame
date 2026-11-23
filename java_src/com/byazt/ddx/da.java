package com.byazt.ddx;

import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.ete.ma;
import com.byazt.ete.pu;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 483, 72})
public class da implements com.byazt.rbg.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Boolean f12739a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12740c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public JSONArray f12741da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public JSONArray f12742i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile boolean f12743m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Boolean f12744n;
    public boolean sl;
    public Boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f12745t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public AtomicLong f12746u;
    public JSONObject uj;
    public ic ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public JSONObject f12747x;
    public JSONObject yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile int f12748z;

    public da(String str, ic icVar, JSONObject jSONObject, JSONObject jSONObject2) {
        this.tt = com.byazt.dyf.tt.AD_TAG_FEED;
        Boolean bool = Boolean.FALSE;
        this.f12744n = bool;
        this.f12739a = bool;
        this.sp = bool;
        this.sl = false;
        this.f12746u = new AtomicLong();
        this.f12748z = 0;
        this.f12743m = false;
        this.tt = str;
        this.ve = icVar;
        this.f12747x = jSONObject;
        this.f12742i = new JSONArray();
        this.f12741da = new JSONArray();
        this.uj = jSONObject2;
        this.f12740c = icVar == null ? com.byazt.vxy.c.uj() : icVar.jl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject nu() {
        JSONObject jSONObject = this.uj;
        if (jSONObject != null && jSONObject.has("xSize")) {
            Object objOpt = this.uj.opt("xSize");
            if (objOpt instanceof JSONObject) {
                JSONObject jSONObject2 = (JSONObject) objOpt;
                if (jSONObject2.has("width") && jSONObject2.has("height")) {
                    JSONObject jSONObject3 = new JSONObject();
                    try {
                        jSONObject3.putOpt("width", Double.valueOf(((JSONObject) objOpt).optDouble("width")));
                        jSONObject3.putOpt("height", Double.valueOf(((JSONObject) objOpt).optDouble("height")));
                        return jSONObject3;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean rh() {
        if (this.sp.booleanValue()) {
            return true;
        }
        return this.f12739a.booleanValue() && this.f12744n.booleanValue();
    }

    @Override // com.byazt.rbg.c
    public void m() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.25
                @Override // java.lang.Runnable
                public void run() {
                    if (da.this.rh() && !da.this.sl) {
                        if (da.this.f12742i != null && da.this.f12742i.length() != 0) {
                            try {
                                da.this.f12747x.put("native_switchBackgroundAndForeground", da.this.f12742i);
                            } catch (Exception unused) {
                            }
                        }
                        if (da.this.f12741da != null && da.this.f12741da.length() != 0) {
                            try {
                                da.this.f12747x.put("intercept_source", da.this.f12741da);
                            } catch (Exception unused2) {
                            }
                        }
                        HashMap map = new HashMap();
                        map.put("webview_time_track", da.this.f12747x);
                        com.byazt.omf.x.m().hd();
                        uj.sp(da.this.ve, da.this.tt, "webview_time_track", map);
                        da.this.sl = true;
                    }
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    public void sl() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.15
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da.this.c(jSONObject, "type", "native_enterBackground");
                    da daVar = da.this;
                    daVar.c(daVar.f12742i, jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    public void t() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.16
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da.this.c(jSONObject, "type", "native_enterForeground");
                    da daVar = da.this;
                    daVar.c(daVar.f12742i, jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.tt
    public void u() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.21
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "no_native_render", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.ve
    public void yp() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.22
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "render_failed", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.rbg.c
    public void z() {
        this.f12744n = Boolean.TRUE;
    }

    @Override // com.byazt.yw.uj
    public void a() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.9
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "webview_load_start", (Object) jSONObject, false);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    public void da() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.14
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "native_endcard_close", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    public void i() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.13
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "native_endcard_show", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.c
    public void n(final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.3
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, str, jSONObject);
                    if (da.this.tt.equals("splash_ad") || da.this.tt.equals("cache_splash_ad")) {
                        return;
                    }
                    com.byazt.whk.c.c().c("ugen_render", "native_render_success", String.valueOf(jCurrentTimeMillis) + "0", da.this.f12740c);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.uj
    public void sp() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.10
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "webview_load_success", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.ve
    public void tt() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.12
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "render_success", jSONObject);
                    if (da.this.tt.equals("splash_ad") || da.this.tt.equals("cache_splash_ad")) {
                        return;
                    }
                    if (da.this.f12747x.optInt("webview_source", -1) == 2) {
                        m.c(da.this.tt, "no count ENDCARD_SOURCE");
                        return;
                    }
                    com.byazt.whk.c.c().c("ugen_render", "h5_render_success", String.valueOf(jCurrentTimeMillis) + "0", da.this.f12740c);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.c
    public void uj(final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.2
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.tt
    public void ve() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.27
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "native_render_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.uj
    public void x() {
        tt((JSONObject) null);
    }

    @Override // com.byazt.yw.uj
    public void a(final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.19
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da.this.c(jSONObject, "jsb", str);
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "webview_jsb_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.tt
    public void n() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.8
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "native_render_end", jSONObject);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    JSONObject jSONObject2 = new JSONObject();
                    da.this.c(jSONObject2, "ts", Long.valueOf(jCurrentTimeMillis2));
                    da daVar2 = da.this;
                    daVar2.c(daVar2.f12747x, "render_success", jSONObject2);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.uj
    public void sp(final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.20
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da.this.c(jSONObject, "jsb", str);
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "webview_jsb_end", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.c
    public void tt(final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.29
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    public void uj() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.7
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "native_render_end", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.c
    public void ve(final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.30
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, str, jSONObject);
                    if (da.this.tt.equals("splash_ad") || da.this.tt.equals("cache_splash_ad")) {
                        return;
                    }
                    com.byazt.whk.c.c().c("ugen_render", "native_render_success", String.valueOf(jCurrentTimeMillis) + "0", da.this.f12740c);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.ve
    public void c() {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.1
                @Override // java.lang.Runnable
                public void run() {
                    da.this.f12746u.set(System.currentTimeMillis());
                    JSONObject jSONObject = new JSONObject();
                    da daVar = da.this;
                    daVar.c(jSONObject, "ts", Long.valueOf(daVar.f12746u.get()));
                    da daVar2 = da.this;
                    daVar2.c(jSONObject, "render_sequence", Integer.valueOf(pu.tt(daVar2.ve)));
                    da daVar3 = da.this;
                    daVar3.c(jSONObject, "render_timeout", Integer.valueOf(daVar3.f12745t));
                    da.this.c(jSONObject, "webview_count", Integer.valueOf(com.byazt.ol.n.c().n()));
                    da.this.c(jSONObject, "available_cache_count", Integer.valueOf(com.byazt.ol.n.c().ve()));
                    ma maVarSp = pu.sp(da.this.ve);
                    if (maVarSp != null) {
                        da.this.c(jSONObject, "rule_id", maVarSp.x());
                    } else {
                        da.this.c(jSONObject, "rule_id", "0");
                    }
                    JSONObject jSONObjectNu = da.this.nu();
                    if (jSONObjectNu != null) {
                        da.this.c(jSONObject, "size", jSONObjectNu);
                    }
                    da daVar4 = da.this;
                    daVar4.c(daVar4.f12747x, "render_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.c
    public void tt(final int i10, final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.31
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da.this.c(jSONObject, "code", Integer.valueOf(i10));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, str, jSONObject);
                    if (da.this.tt.equals("splash_ad") || da.this.tt.equals("cache_splash_ad")) {
                        return;
                    }
                    com.byazt.whk.c.c().c("ugen_render", "native_render_fail", String.valueOf(jCurrentTimeMillis) + "1", da.this.f12740c);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.rbg.c
    public void uj(final JSONObject jSONObject) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.24
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject2;
                    if (da.this.f12747x == null || (jSONObject2 = jSONObject) == null) {
                        return;
                    }
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        da daVar = da.this;
                        daVar.c(daVar.f12747x, next, jSONObject.opt(next));
                    }
                    da.this.f12739a = Boolean.TRUE;
                    da.this.m();
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.c
    public void ve(final int i10, final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.4
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da.this.c(jSONObject, "code", Integer.valueOf(i10));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, str, jSONObject);
                    if (da.this.tt.equals("splash_ad") || da.this.tt.equals("cache_splash_ad")) {
                        return;
                    }
                    com.byazt.whk.c.c().c("ugen_render", "native_render_fail", String.valueOf(jCurrentTimeMillis) + "1", da.this.f12740c);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.ve
    public void c(final int i10, final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.26
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da.this.c(jSONObject, "code", Integer.valueOf(i10));
                    String str2 = str;
                    if (str2 != null) {
                        da.this.c(jSONObject, MediationConstant.KEY_REASON, str2);
                    }
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "render_error", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    public void tt(final JSONObject jSONObject) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.11
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                    }
                    da.this.c(jSONObject2, "ts", Long.valueOf(System.currentTimeMillis()));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "webview_load_error", jSONObject2);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.ve
    public void ve(final JSONObject jSONObject) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.23
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                    }
                    da.this.c(jSONObject2, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "render_did_finish", jSONObject2);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.c
    public void c(final String str) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.28
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.uj
    public void tt(final String str, final long j10, final long j11, final int i10) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.18
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str) || j11 < j10) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "start_ts", Long.valueOf(j10));
                    da.this.c(jSONObject, "end_ts", Long.valueOf(j11));
                    da.this.c(jSONObject, "intercept_type", Integer.valueOf(i10));
                    da.this.c(jSONObject, "type", "intercept_js");
                    da.this.c(jSONObject, "url", str);
                    da.this.c(jSONObject, "duration", Long.valueOf(j11 - j10));
                    da daVar = da.this;
                    daVar.c(daVar.f12741da, jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.c
    public void c(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.5
                @Override // java.lang.Runnable
                public void run() {
                    da.this.c(jSONObject, "ts", Long.valueOf(System.currentTimeMillis()));
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "render_exception", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.rbg.c
    public void tt(boolean z10) {
        try {
            if (!this.f12743m && this.ve != null) {
                this.f12743m = true;
                if (pu.tt(this.ve) == 0 && this.f12748z != 0) {
                    if (this.yp == null) {
                        this.yp = new JSONObject();
                    }
                    this.yp.put("render_sequence", pu.tt(this.ve));
                    this.yp.put("render_control", pu.c(this.ve));
                    this.yp.put("fetch_tpl_time_out", gt.tt().c(this.tt, pu.tt(this.ve)));
                    this.yp.put("req_id", this.ve.qy());
                    this.yp.put(MediationConstant.EXTRA_ADID, this.ve.uj());
                    this.yp.put("ad_slot_type", nb.sl(this.ve));
                    if (z10) {
                        this.yp.put("webview_time_cost", System.currentTimeMillis() - this.f12746u.get());
                        this.yp.put("webview_result", 2);
                    }
                    yp.c().c(this.yp);
                }
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.yw.uj
    public void c(final int i10) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.6
                @Override // java.lang.Runnable
                public void run() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "ts", Long.valueOf(jCurrentTimeMillis));
                    da.this.c(jSONObject, "isWebViewCache", Integer.valueOf(i10));
                    if (da.this.ve != null) {
                        if (pu.x(da.this.ve)) {
                            da.this.c(jSONObject, "engine_version", "v3");
                        } else {
                            da.this.c(jSONObject, "engine_version", "v1");
                        }
                    }
                    da daVar = da.this;
                    daVar.c(daVar.f12747x, "before_webview_request", jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.byazt.yw.uj
    public void c(final String str, final long j10, final long j11, final int i10) {
        try {
            com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.ddx.da.17
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str) || j11 < j10) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    da.this.c(jSONObject, "start_ts", Long.valueOf(j10));
                    da.this.c(jSONObject, "end_ts", Long.valueOf(j11));
                    da.this.c(jSONObject, "intercept_type", Integer.valueOf(i10));
                    da.this.c(jSONObject, "type", "intercept_html");
                    da.this.c(jSONObject, "url", str);
                    da.this.c(jSONObject, "duration", Long.valueOf(j11 - j10));
                    da daVar = da.this;
                    daVar.c(daVar.f12741da, jSONObject);
                }
            });
        } catch (Throwable th) {
            m.tt("WebviewTimeTrack", th.getMessage());
        }
    }

    public da() {
        this.tt = com.byazt.dyf.tt.AD_TAG_FEED;
        Boolean bool = Boolean.FALSE;
        this.f12744n = bool;
        this.f12739a = bool;
        this.sp = bool;
        this.sl = false;
        this.f12746u = new AtomicLong();
        this.f12748z = 0;
        this.f12743m = false;
    }

    @Override // com.byazt.rbg.c
    public void c(boolean z10) {
        this.sp = Boolean.valueOf(z10);
    }

    @Override // com.byazt.rbg.c
    public void c(boolean z10, int i10) {
        try {
            if (this.yp == null) {
                this.yp = new JSONObject();
            }
            this.yp.put("error_code", i10);
            this.yp.put("webview_time_cost", System.currentTimeMillis() - this.f12746u.get());
            this.yp.put("webview_result", z10 ? 0 : 1);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.rbg.c
    public void c(int i10, int i11, String str) {
        try {
            this.f12748z = i10;
            if (this.yp == null) {
                this.yp = new JSONObject();
            }
            this.yp.put("render_type", i10);
            this.yp.put("error_code", i11);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void tt(int i10) {
        this.f12745t = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject, String str, Object obj, boolean z10) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!z10) {
            try {
                if (jSONObject.has(str)) {
                    return;
                }
            } catch (Exception e10) {
                m.tt("WebviewTimeTrack", e10.getMessage());
                return;
            }
        }
        jSONObject.put(str, obj);
    }

    public void c(JSONObject jSONObject, String str, Object obj) {
        c(jSONObject, str, obj, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONArray jSONArray, Object obj) {
        if (jSONArray == null || jSONArray.length() >= 10) {
            return;
        }
        try {
            jSONArray.put(obj);
        } catch (Exception e10) {
            m.tt("WebviewTimeTrack", e10.getMessage());
        }
    }
}
