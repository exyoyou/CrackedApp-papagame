package com.byazt.qal;

import android.os.Build;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.my;
import com.byazt.aas.nb;
import com.byazt.bv.BaseConstants;
import com.byazt.dna.u;
import com.byazt.dna.ve;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.nys.PluginConstants;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.omf.x;
import com.byazt.qal.tt;
import com.byazt.ut.uj;
import com.haima.hmcp.ConstantsInternal;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.bm;
import com.umeng.umcrash.UMCrash;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1484, 13})
public class tt<T extends tt> implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18932c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f18933da;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f18935n;
    public String sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f18936t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f18937u;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f18938x;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f18939z;
    public String uj = p.f18094n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f18931a = System.currentTimeMillis() / 1000;
    public int sp = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18934i = 0;

    private JSONObject nu() {
        JSONObject jSONObject = new JSONObject();
        try {
            u uVar = (u) uj.getService("device_info_new");
            ve veVar = (ve) uj.getService("embed_applog");
            jSONObject.put(bm.f84421x, 1);
            com.byazt.qh.tt.ve(jSONObject);
            jSONObject.put("oaid", veVar.getOAID(false));
            jSONObject.put(bn.f7597i, uVar.getDeviceModel());
            jSONObject.put("android_id", DeviceUtils.tt());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("package_name", nb.x());
            jSONObject.put(aw.f84323d, uVar.getWebViewUA(false));
            jSONObject.put("applog_did", veVar.getDid());
            jSONObject.put("ip", my.c());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private T rh() {
        return this;
    }

    public static tt<tt> tt() {
        return new tt<>();
    }

    public String a() {
        return this.uj;
    }

    @Override // com.byazt.qal.c
    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(getType())) {
                jSONObject.put("type", getType());
            }
            if (!TextUtils.isEmpty(uj())) {
                jSONObject.put("rit", uj());
            }
            if (!TextUtils.isEmpty(n())) {
                jSONObject.put("creative_id", n());
            }
            if (!TextUtils.isEmpty(a())) {
                jSONObject.put("ad_sdk_version", a());
            }
            if (TextUtils.isEmpty(x())) {
                jSONObject.put("app_version", nb.da());
            } else {
                jSONObject.put("app_version", x());
            }
            if (i() > 0) {
                jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, i());
            }
            if (da() > 0) {
                jSONObject.put("adtype", da());
            }
            if (!TextUtils.isEmpty(sl())) {
                jSONObject.put("req_id", sl());
            }
            jSONObject.put("error_code", t());
            if (!TextUtils.isEmpty(u())) {
                jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, u());
            }
            if (!TextUtils.isEmpty(yp())) {
                jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, yp());
            }
            if (!TextUtils.isEmpty(z())) {
                jSONObject.put("image_url", z());
            }
            if (!TextUtils.isEmpty(ve())) {
                jSONObject.put("event_extra", ve());
            }
            if (!TextUtils.isEmpty(sp())) {
                jSONObject.put("duration", sp());
            }
            if (!TextUtils.isEmpty(x.m().rl())) {
                jSONObject.put("appid", x.m().rl());
            }
            if (!TextUtils.isEmpty(m())) {
                jSONObject.put("ad_info", m());
            }
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.1.1");
            jSONObject.put("is_plugin", p.c());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("conn_type", rh.tt(gt.getContext()));
        } catch (Exception e10) {
            m.c(e10);
        }
        try {
            jSONObject.put("device_info", nu());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public int da() {
        return this.sp;
    }

    public String getType() {
        return this.f18932c;
    }

    public long i() {
        return this.f18931a;
    }

    public String m() {
        return this.f18939z;
    }

    public String n() {
        return this.ve;
    }

    public String sl() {
        return this.f18938x;
    }

    public String sp() {
        return this.yp;
    }

    public int t() {
        return this.f18934i;
    }

    public String u() {
        return this.f18933da;
    }

    public String uj() {
        return this.tt;
    }

    public String ve() {
        return this.f18937u;
    }

    public String x() {
        return this.f18935n;
    }

    public String yp() {
        return this.sl;
    }

    public String z() {
        return this.f18936t;
    }

    public T a(String str) {
        this.f18938x = str;
        return (T) rh();
    }

    public T i(String str) {
        this.f18939z = str;
        return (T) rh();
    }

    public T n(String str) {
        this.yp = str;
        return (T) rh();
    }

    public T sp(String str) {
        this.f18933da = str;
        return (T) rh();
    }

    public T tt(String str) {
        this.f18937u = str;
        return (T) rh();
    }

    public T uj(String str) {
        this.ve = str;
        return (T) rh();
    }

    public T ve(String str) {
        this.tt = str;
        return (T) rh();
    }

    public T x(String str) {
        this.sl = str;
        return (T) rh();
    }

    public T tt(int i10) {
        this.f18934i = i10;
        return (T) rh();
    }

    public T c(String str) {
        this.f18932c = str;
        return (T) rh();
    }

    public T c(long j10) {
        this.f18931a = j10;
        return (T) rh();
    }

    public T c(int i10) {
        this.sp = i10;
        return (T) rh();
    }
}
