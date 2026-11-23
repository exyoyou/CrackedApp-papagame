package com.byazt.kj;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.aas.z;
import com.byazt.gqp.da;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.nys.PluginConstants;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.omf.x;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.umcrash.UMCrash;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 159, 20})
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONObject f16273a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.tjs.c f16274c;
    public String sp;
    public String tt;
    public String ve;
    public AtomicBoolean uj = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicBoolean f16275n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.byazt.kj.c$c, reason: collision with other inner class name */
    public interface InterfaceC0361c {
        void c(boolean z10, Map<String, Object> map);
    }

    public c(com.byazt.tjs.c cVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        this.f16274c = cVar;
        this.tt = str;
        this.sp = str4;
        this.ve = str2;
        JSONObject jSONObject2 = new JSONObject();
        this.f16273a = jSONObject2;
        try {
            if (this instanceof tt) {
                jSONObject2.putOpt("log_extra", str3);
                this.f16273a.putOpt("resource_type", "union");
                this.f16273a.putOpt("ts", Long.valueOf(System.currentTimeMillis() / 1000));
            } else if (this instanceof ve) {
                jSONObject2.putOpt(UMCrash.SP_KEY_TIMESTAMP, Long.valueOf(System.currentTimeMillis() / 1000));
                this.f16273a.putOpt(MediationConstant.EXTRA_ADID, jSONObject.optString(MediationConstant.EXTRA_ADID));
                this.f16273a.putOpt("customer_id", jSONObject.optString("customer_id"));
            }
            this.f16273a.putOpt("cid", str);
            this.f16273a.putOpt("ac", Integer.valueOf(rh.ve(gt.getContext())));
            this.f16273a.putOpt("app_name", x.m().qy());
            this.f16273a.putOpt(PluginConstants.KEY_APP_ID, x.m().rl());
            this.f16273a.putOpt("app_version", com.byazt.fh.c.n());
            this.f16273a.putOpt("sdk_version", p.f18094n);
            this.f16273a.putOpt(PluginConstants.KEY_PLUGIN_VERSION, "7.6.1.1");
            this.f16273a.putOpt("platform", "Android");
            this.f16273a.putOpt("device_id", z.c());
            this.f16273a.putOpt("web_url", str4);
        } catch (JSONException e10) {
            m.c(e10);
        }
        c(str, str2);
    }

    public abstract void c();

    public abstract void c(Context context, String str, com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, Map<String, Object> map);

    public abstract void c(com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, InterfaceC0361c interfaceC0361c);

    public abstract void c(String str);

    public abstract void c(String str, String str2);

    public abstract void c(JSONObject jSONObject, String str, da daVar, String str2, String str3, Map<String, String> map, Map<String, Object> map2);

    public abstract boolean c(WebView webView);

    public abstract boolean c(da daVar);

    public void tt() {
        c();
    }

    public abstract void tt(Context context, String str, com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, Map<String, Object> map);

    public abstract void ve();
}
