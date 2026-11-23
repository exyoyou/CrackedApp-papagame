package com.byazt.ddx;

import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.bv.BaseConstants;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 483, 20})
public class c implements com.byazt.fo.tt {
    public static final AtomicLong ve = new AtomicLong(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12725a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12726c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.ya.c f12727da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f12728i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f12729n;
    public String sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f12730t;
    public final JSONObject tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f12731u;
    public JSONObject uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f12732x;
    public AtomicBoolean yp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.byazt.ddx.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 483, 44})
    public static final class C0288c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f12733a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f12734c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public com.byazt.axo.c f12735da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public JSONObject f12736i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f12737n;
        public com.byazt.ya.c sl;
        public String sp;
        public String tt;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f12738x;

        public C0288c a(String str) {
            this.sp = str;
            return this;
        }

        public C0288c n(String str) {
            this.f12733a = str;
            return this;
        }

        public C0288c sp(String str) {
            this.f12738x = str;
            return this;
        }

        public C0288c tt(String str) {
            this.ve = str;
            return this;
        }

        public C0288c uj(String str) {
            this.f12737n = str;
            return this;
        }

        public C0288c ve(String str) {
            this.uj = str;
            return this;
        }

        public C0288c c(String str) {
            this.tt = str;
            return this;
        }

        public C0288c c(JSONObject jSONObject) {
            if (jSONObject == null) {
                return this;
            }
            this.f12736i = jSONObject;
            return this;
        }

        public void c(com.byazt.ya.c cVar) {
            if (com.byazt.ukr.n.c(this.ve, 1.0d)) {
                if (this.f12737n != null) {
                    com.byazt.qw.ve.ve().c(this.ve, this.f12733a, this.f12738x, (JSONObject) null, this.f12737n);
                }
                this.sl = cVar;
                c cVar2 = new c(this);
                try {
                    com.byazt.axo.c cVar3 = this.f12735da;
                    if (cVar3 != null) {
                        cVar3.c(cVar2.tt);
                    } else {
                        new com.byazt.axo.tt().c(cVar2.tt);
                    }
                } catch (Throwable th) {
                    m.tt("AdEvent", th);
                }
                com.byazt.ukr.tt.c(cVar2, this.ve);
            }
        }
    }

    public c(C0288c c0288c) {
        this.uj = new JSONObject();
        this.f12726c = TextUtils.isEmpty(c0288c.f12734c) ? UUID.randomUUID().toString() : c0288c.f12734c;
        this.f12727da = c0288c.sl;
        this.sl = c0288c.f12737n;
        this.f12729n = c0288c.tt;
        this.f12725a = c0288c.ve;
        if (TextUtils.isEmpty(c0288c.uj)) {
            this.sp = "app_union";
        } else {
            this.sp = c0288c.uj;
        }
        this.f12732x = c0288c.f12733a;
        this.f12728i = c0288c.sp;
        this.uj = c0288c.f12736i = c0288c.f12736i != null ? c0288c.f12736i : new JSONObject();
        this.f12731u = System.currentTimeMillis();
        this.tt = new JSONObject();
        try {
            sp();
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    private void sp() {
        this.f12730t = ve.incrementAndGet();
    }

    private void x() throws JSONException {
        this.tt.putOpt(TagGameListActivity_.TAG_EXTRA, this.f12729n);
        this.tt.putOpt(PostingActivity_.LABEL_EXTRA, this.f12725a);
        this.tt.putOpt(PointParamKey.CATEGORY, this.sp);
        if (!TextUtils.isEmpty(this.f12732x)) {
            try {
                this.tt.putOpt(HmInputMappingContent.FIELD_VALUE, Long.valueOf(Long.parseLong(this.f12732x)));
            } catch (NumberFormatException unused) {
                this.tt.putOpt(HmInputMappingContent.FIELD_VALUE, 0L);
            }
        }
        if (!TextUtils.isEmpty(this.f12728i)) {
            this.tt.putOpt("ext_value", this.f12728i);
        }
        if (!TextUtils.isEmpty(this.sl)) {
            this.tt.putOpt("log_extra", this.sl);
        }
        if (!TextUtils.equals(this.f12725a, "pangle_live_sdk_monitor")) {
            this.tt.putOpt(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
        }
        this.tt.putOpt("nt", Integer.valueOf(rh.ve(gt.getContext())));
        this.tt.putOpt("tob_ab_sdk_version", com.byazt.omf.x.m().ic());
        Iterator<String> itKeys = this.uj.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.tt.putOpt(next, this.uj.opt(next));
        }
    }

    public boolean a() {
        JSONObject jSONObject = this.tt;
        if (jSONObject == null) {
            return false;
        }
        String strOptString = jSONObject.optString(PostingActivity_.LABEL_EXTRA);
        if (!TextUtils.isEmpty(strOptString)) {
            return ve.f12848c.contains(strOptString);
        }
        if (TextUtils.isEmpty(this.f12725a)) {
            return false;
        }
        return ve.f12848c.contains(this.f12725a);
    }

    @Override // com.byazt.fo.tt
    public long c() {
        return this.f12731u;
    }

    public JSONObject n() {
        if (this.yp.get()) {
            return this.tt;
        }
        try {
            x();
            com.byazt.ya.c cVar = this.f12727da;
            if (cVar != null) {
                cVar.onSend(this.tt);
            }
            c(this.tt);
            this.yp.set(true);
        } catch (Throwable th) {
            m.tt("AdEvent", th);
        }
        return this.tt;
    }

    @Override // com.byazt.fo.tt
    public long tt() {
        return this.f12730t;
    }

    public String uj() {
        return this.f12726c;
    }

    public String ve() {
        if (!TextUtils.isEmpty(this.f12725a)) {
            return this.f12725a;
        }
        JSONObject jSONObject = this.tt;
        return jSONObject != null ? jSONObject.optString(PostingActivity_.LABEL_EXTRA) : "";
    }

    @Override // com.byazt.fo.tt
    public JSONObject c(String str) {
        JSONObject jSONObject;
        JSONObject jSONObjectN = n();
        try {
            String strOptString = jSONObjectN.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
            if (TextUtils.isEmpty(strOptString)) {
                jSONObject = new JSONObject();
                if (gt.tt().zb() && !TextUtils.isEmpty(str)) {
                    jSONObject.put("will_save_labels", str);
                }
            } else {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                if (gt.tt().zb() && TextUtils.isEmpty(jSONObject2.optString("will_save_labels")) && !TextUtils.isEmpty(str)) {
                    jSONObject2.put("will_save_labels", str);
                }
                jSONObject = jSONObject2;
            }
            String strSp = com.byazt.apd.tt.c().sp();
            if (strSp != null) {
                jSONObject.putOpt("live_plugin_version", strSp.replaceAll("\\.", ""));
            }
            if (com.byazt.omf.x.m().a()) {
                jSONObject.putOpt("first_of_two", 1);
            }
            jSONObjectN.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
        } catch (Exception e10) {
            m.c(e10);
        }
        return jSONObjectN;
    }

    private void c(JSONObject jSONObject) {
        try {
            if (this.f12730t != 0) {
                String strOptString = jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                if (!TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    if (jSONObject2.optInt("sdk_event_index") == 0) {
                        jSONObject2.put("sdk_event_index", this.f12730t);
                    }
                    if (jSONObject2.optInt("sdk_event_self_count") == 0) {
                        jSONObject2.put("sdk_event_self_count", com.byazt.ml.c.c(this.f12725a));
                    }
                    jSONObject2.put("create_ts", System.currentTimeMillis());
                    jSONObject2.put("csj_type", com.byazt.omf.x.m().bx() ? 1 : 0);
                    jSONObject2.put("sdk_boost_type", com.byazt.xo.c.n());
                    try {
                        jSONObject2.put("device_score", Double.parseDouble(com.byazt.whk.c.c().c("DeviceRate", "bytebench_value", com.byazt.vxy.c.uj())));
                    } catch (Throwable unused) {
                    }
                    jSONObject2.put("sdk_session_id", com.byazt.ukr.tt.f20623c);
                    if (!TextUtils.isEmpty(nb.f11448i)) {
                        jSONObject2.put("wrong_stats_url", nb.f11448i);
                    }
                    if (!TextUtils.isEmpty(nb.f11447da)) {
                        jSONObject2.put("wrong_applog_url", nb.f11447da);
                    }
                    com.byazt.la.c.c().c(jSONObject2);
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                    return;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("sdk_event_index", this.f12730t);
                jSONObject3.put("sdk_event_self_count", com.byazt.ml.c.c(this.f12725a));
                jSONObject3.put("sdk_session_id", com.byazt.ukr.tt.f20623c);
                jSONObject3.put("csj_type", com.byazt.omf.x.m().bx() ? 1 : 0);
                jSONObject3.put("sdk_boost_type", com.byazt.xo.c.n());
                try {
                    jSONObject3.put("device_score", Double.parseDouble(com.byazt.whk.c.c().c("DeviceRate", "bytebench_value", com.byazt.vxy.c.uj())));
                } catch (Throwable unused2) {
                }
                jSONObject3.put("create_ts", System.currentTimeMillis());
                if (!TextUtils.isEmpty(nb.f11448i)) {
                    jSONObject3.put("wrong_stats_url", nb.f11448i);
                }
                if (!TextUtils.isEmpty(nb.f11447da)) {
                    jSONObject3.put("wrong_applog_url", nb.f11447da);
                }
                com.byazt.la.c.c().c(jSONObject3);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject3.toString());
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }
}
