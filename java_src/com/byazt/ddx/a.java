package com.byazt.ddx;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.byazt.aas.aw;
import com.byazt.bv.BaseConstants;
import com.byazt.ete.ic;
import com.byazt.nr.m;
import com.byazt.nr.yp;
import com.byazt.omf.gt;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.ConstantsInternal;
import com.sigmob.sdk.base.mta.PointCategory;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 483, 34})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ic f12707a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f12709d;
    public com.byazt.nl.uj gt;
    public com.byazt.rbg.c gu;
    public Runnable md;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f12714n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f12715p;
    public JSONObject qy;
    public String uj;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public WeakReference<tt> f12720zb;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12708c = 0;
    public volatile boolean tt = false;
    public int ve = -1;
    public String sp = "landingpage";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f12718x = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f12712i = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f12710da = 0;
    public long sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f12716t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f12717u = false;
    public long yp = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f12719z = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f12713m = 0;
    public long nu = -1;
    public boolean rh = false;
    public AtomicInteger my = new AtomicInteger(0);
    public boolean rl = false;
    public AtomicBoolean gr = new AtomicBoolean(false);
    public boolean zm = false;
    public boolean yv = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f12711h = new AtomicBoolean(false);
    public final Map<String, aw.c> eo = new ConcurrentHashMap();

    @com.byazt.zqa.c(c = {0, 1, 483, 464})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicInteger f12724c;
        public final WeakReference<tt> tt;

        public c(AtomicInteger atomicInteger, WeakReference<tt> weakReference) {
            this.f12724c = atomicInteger;
            this.tt = weakReference;
        }

        @JavascriptInterface
        public String getUrl() {
            return "";
        }

        @JavascriptInterface
        public void readHtml(String str, String str2) {
        }

        @JavascriptInterface
        public void readPercent(String str) {
            int i10 = 0;
            try {
                int iIntValue = Float.valueOf(str).intValue();
                if (iIntValue > 100) {
                    i10 = 100;
                } else if (iIntValue >= 0) {
                    i10 = iIntValue;
                }
            } catch (Throwable unused) {
            }
            AtomicInteger atomicInteger = this.f12724c;
            if (atomicInteger != null) {
                atomicInteger.set(i10);
            }
            WeakReference<tt> weakReference = this.tt;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.tt.get().c(str);
        }
    }

    public interface tt {
        void c(String str);
    }

    public a(ic icVar, com.byazt.nl.uj ujVar) {
        this.f12707a = icVar;
        this.gt = ujVar;
        if (ujVar != null) {
            ujVar.addJavascriptInterface(new c(this.my, this.f12720zb), "JS_LANDING_PAGE_LOG_OBJ");
        }
        this.f12715p = System.currentTimeMillis();
        this.f12709d = String.valueOf(SystemClock.elapsedRealtime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        try {
            if (!TextUtils.isEmpty(com.byazt.hq.c.f15054c) && this.f12707a != null) {
                StringBuilder sb2 = new StringBuilder(com.byazt.hq.c.f15054c);
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("cid", this.f12707a.uj());
                jSONObject.putOpt(MediationConstant.EXTRA_ADID, this.f12707a.gu());
                jSONObject.put("log_extra", this.f12707a.w_());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("web_init_time", this.f12713m);
                jSONObject2.put("click_time", this.f12719z);
                jSONObject2.put("web_url", this.f12707a.x());
                jSONObject.put("client_info", jSONObject2);
                com.byazt.hq.c.c(sb2, "\"/** adInfo **/\"", jSONObject.toString());
                String string = sb2.toString();
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                String strConcat = "javascript:".concat(String.valueOf(string));
                com.byazt.nl.uj ujVar = this.gt;
                if (ujVar != null) {
                    yp.c(ujVar, strConcat);
                }
            }
        } catch (Throwable th) {
            m.ve(th.getMessage());
        }
    }

    public void a() {
        com.byazt.nl.uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.removeJavascriptInterface("JS_LANDING_PAGE_LOG_OBJ");
        }
        this.gt = null;
        if (!this.gr.get() && this.tt) {
            uj.ve(this.f12707a, this.sp, System.currentTimeMillis() - this.yp);
        }
        if ("landingpage".equals(this.sp) || "landingpage_endcard".equals(this.sp)) {
            com.byazt.qw.ve.ve().c("landingFinish", this.f12707a, this.f12709d);
        }
        this.md = null;
        if (this.eo.isEmpty()) {
            return;
        }
        com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.ddx.a.2
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() {
                com.byazt.qal.tt ttVarC = com.byazt.qal.tt.tt().c("web_cache_hit_report");
                if (a.this.f12707a != null) {
                    ttVarC.a(a.this.f12707a.qy());
                }
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                for (aw.c cVar : a.this.eo.values()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("url", cVar.ve());
                        jSONObject2.put("hit", cVar.uj());
                        jSONObject2.put("miss", cVar.n());
                        jSONArray.put(jSONObject2);
                    } catch (JSONException unused) {
                    }
                }
                try {
                    jSONObject.put("hit_records", jSONArray);
                } catch (JSONException unused2) {
                }
                ttVarC.tt(jSONObject.toString());
                return ttVarC;
            }
        }, "web_cache_hit_report");
    }

    public void n() {
        if (this.yv) {
            this.yv = false;
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.f12715p);
                jSONObject.put(PointCategory.END, System.currentTimeMillis());
                com.byazt.ic.c.c(jSONObject, this.f12707a);
            } catch (JSONException e10) {
                m.c(e10);
            }
            uj.c(this.f12707a, "landingpage", "agg_stay_page", new com.byazt.ya.c() { // from class: com.byazt.ddx.a.1
                @Override // com.byazt.ya.c
                public void onSend(JSONObject jSONObject2) throws JSONException {
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
                }
            });
        }
        if (this.f12708c == 2) {
            if (this.f12710da > 0 || !tt()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.f12712i = jCurrentTimeMillis;
                long jMax = jCurrentTimeMillis - Math.max(this.f12718x, this.f12710da);
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("load_status", this.f12708c);
                    jSONObject2.put("max_scroll_percent", this.my.get());
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                } catch (JSONException unused) {
                }
                c("stay_page", jSONObject2, Math.min(jMax, 600000L));
                com.byazt.qw.ve.ve().c("landingPause", this.f12707a, this.f12709d);
            }
        }
    }

    public void sp() {
        com.byazt.mw.c cVarMa;
        com.byazt.nl.uj ujVar;
        if (!(this.f12708c == 2 && this.f12717u) || (cVarMa = gt.tt().ma()) == null || (ujVar = this.gt) == null) {
            return;
        }
        cVarMa.c(ujVar.getWebView(), this.f12707a);
    }

    public a uj(long j10) {
        this.nu = j10;
        return this;
    }

    public Map<String, aw.c> x() {
        return this.eo;
    }

    public void c(tt ttVar) {
        this.f12720zb = new WeakReference<>(ttVar);
    }

    public boolean tt() {
        return this.zm;
    }

    public void uj() {
        this.f12718x = System.currentTimeMillis();
        if (this.yp == 0) {
            this.yp = System.currentTimeMillis();
        }
        if ("landingpage".equals(this.sp) || "landingpage_endcard".equals(this.sp)) {
            if (this.f12711h.compareAndSet(false, true)) {
                com.byazt.qw.ve.ve().c("landingStart", this.f12707a, this.f12709d);
            } else {
                com.byazt.qw.ve.ve().c("landingContinue", this.f12707a, this.f12709d);
            }
        }
    }

    public com.byazt.rbg.c ve() {
        return this.gu;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.sp = str;
    }

    public a tt(boolean z10) {
        this.rl = z10;
        return this;
    }

    public a ve(long j10) {
        this.f12713m = j10;
        return this;
    }

    public a tt(long j10) {
        this.f12719z = j10;
        return this;
    }

    public String c() {
        return this.sp;
    }

    public void tt(String str) {
        if (this.rl) {
            if ("load_finish".equals(str) && "landingpage".equals(this.sp)) {
                Runnable runnable = new Runnable() { // from class: com.byazt.ddx.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.i();
                    }
                };
                this.md = runnable;
                com.byazt.hq.c.c(new com.byazt.hq.c.RunnableC0332c(runnable));
            }
            long j10 = this.f12716t - this.sl;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", this.ve);
                jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, this.uj);
                jSONObject.put("error_url", this.f12714n);
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
                long j11 = this.f12719z;
                if (j11 > 0) {
                    jSONObject.put("exp_duration", this.f12716t - j11);
                }
                long j12 = this.f12713m;
                if (j12 > 0) {
                    jSONObject.put("web_duration", this.f12716t - j12);
                }
                long j13 = this.nu;
                if (j13 >= 0) {
                    jSONObject.put("webview_duration", j13);
                }
            } catch (Exception unused) {
            }
            c(str, jSONObject, Math.min(j10, 600000L));
        }
    }

    public void c(long j10) {
        this.f12710da = j10;
    }

    public void c(boolean z10) {
        this.zm = z10;
    }

    public void c(com.byazt.rbg.c cVar) {
        this.gu = cVar;
    }

    public void c(JSONObject jSONObject) {
        this.qy = jSONObject;
    }

    public void c(WebView webView, int i10) {
        if (this.sl == 0 && i10 > 0) {
            this.f12708c = 1;
            this.sl = System.currentTimeMillis();
        } else {
            if (i10 != 100 || this.f12717u) {
                return;
            }
            this.f12717u = true;
            this.f12716t = System.currentTimeMillis();
            if (!"landingpage".equals(this.sp) || this.f12708c == 3) {
                return;
            }
            tt("landingpage_load_hundred");
        }
    }

    public void c(WebView webView, String str, Bitmap bitmap) {
        com.byazt.rbg.c cVar = this.gu;
        if (cVar != null) {
            cVar.a();
        }
        if (this.tt) {
            return;
        }
        this.yp = System.currentTimeMillis();
        this.tt = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "h5");
            jSONObject.putOpt("render_type_2", 0);
        } catch (Exception unused) {
        }
        c("load_start", jSONObject);
    }

    public void c(WebView webView) {
        com.byazt.rbg.c cVar = this.gu;
        if (cVar != null) {
            cVar.sp();
        }
        if (this.f12716t <= 0) {
            this.f12716t = System.currentTimeMillis();
        }
        if (webView != null && !this.rh && this.rl) {
            this.rh = true;
            yp.c(webView, "javascript:\n    function sendScroll() {\n        try {\n            var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n            var clientH = window.innerHeight || document.documentElement.clientHeight;\n            var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n            var validH = scrollH + clientH;\n            var result = (validH / totalH * 100).toFixed(2);\n            console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n            window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n        } catch (e) {\n            console.log('sendScroll error' + e)\n        }\n    }\nsendScroll();\nwindow.addEventListener('scroll', function (e) {\n    sendScroll();\n});");
        }
        if (this.gr.get()) {
            return;
        }
        if (this.f12708c != 3) {
            this.f12708c = 2;
        }
        this.gr.set(true);
        this.f12718x = System.currentTimeMillis();
        if (this.f12708c == 2) {
            tt("load_finish");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error_code", this.ve);
            jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, this.uj);
            jSONObject.put("error_url", this.f12714n);
            jSONObject.putOpt("render_type", "h5");
            jSONObject.putOpt("render_type_2", 0);
        } catch (Exception unused) {
        }
        c("load_fail", jSONObject);
    }

    public void c(int i10, String str, String str2, String str3) {
        com.byazt.rbg.c cVar = this.gu;
        if (cVar != null) {
            cVar.x();
        }
        if (!(str3 != null && str3.startsWith("image")) && this.f12708c != 2) {
            this.f12708c = 3;
        }
        this.ve = i10;
        this.uj = str;
        this.f12714n = str2;
    }

    private void c(String str, JSONObject jSONObject) {
        c(str, jSONObject, -1L);
    }

    private void c(String str, JSONObject jSONObject, long j10) {
        if (!this.rl || this.f12707a == null || TextUtils.isEmpty(str)) {
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
                } catch (JSONException unused) {
                }
                jSONObject2 = jSONObject3;
            } catch (JSONException unused2) {
            }
        }
        uj.ve(this.f12707a, this.sp, str, jSONObject2);
    }
}
