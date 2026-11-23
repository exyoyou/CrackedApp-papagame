package com.byazt.nys;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.Util.o0;
import com.join.mgps.dto.Constant;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.tencent.cos.common.COSHttpResponseKey;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 430, 71})
public class x implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f17728c;
    public String tt;
    public final Map<String, String> uj = a.tt();
    public String ve;

    @com.byazt.zqa.c(c = {0, 1, 430, 62})
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17729a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f17730c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public boolean f17731da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f17732i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f17733n;
        public int sp;
        public int tt;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f17734x;

        public String toString() {
            try {
                return new JSONObject().put("package_name", this.f17730c).put("version_code", this.tt).put(Constant.MD5, this.uj).put("max_version", this.sp).put("min_version", this.f17729a).put("is_revert", this.f17731da).put(TKDownloadReason.KSAD_TK_MD5, this.f17733n).put("plugin_file", this.f17732i).toString();
            } catch (JSONException unused) {
                return "";
            }
        }
    }

    public x(Context context) {
        this.f17728c = context;
    }

    private JSONObject tt() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("conn_type", com.byazt.zyp.n.tt(this.f17728c));
            jSONObject.put(bm.f84421x, 1);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("sdk_version", "7.6.1.1");
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.1.1");
            jSONObject.put("app_version", uj());
            jSONObject.put("package_name", this.ve);
            jSONObject.put("vendor", Build.MANUFACTURER);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            String str = this.uj.get("appid");
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put(PluginConstants.KEY_APP_ID, str);
            jSONObject.put("req_sign", com.byazt.zyp.uj.c(str != null ? str.concat(String.valueOf(jCurrentTimeMillis)).concat("7.6.1.1") : ""));
            jSONObject.put("channel", "main");
            jSONObject.put("imei", this.uj.get("imei"));
            jSONObject.put("source", 0);
            jSONObject.put("device_abi", com.byazt.th.tt.c());
            jSONObject.put("pl_update_type", com.byazt.zyp.ve.tt() ? 2 : 1);
            jSONObject.put("plugins", ve());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private String uj() {
        Context context;
        if (TextUtils.isEmpty(this.tt) && (context = this.f17728c) != null) {
            try {
                this.ve = context.getPackageName();
                this.tt = this.f17728c.getPackageManager().getPackageInfo(this.ve, 0).versionName;
            } catch (Throwable unused) {
            }
        }
        return this.tt;
    }

    private JSONObject ve() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(PluginConstants.KEY_APP_ID, this.uj.get("appid"));
        jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.1.1");
        jSONObject2.put("sdk_version", "7.6.1.1");
        jSONObject2.put("plugin_update_network", "2");
        jSONObject.put("com.byted.pangle", jSONObject2);
        return jSONObject;
    }

    public void c() throws Throwable {
        if (com.byazt.zyp.n.c(this.f17728c)) {
            run();
        }
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        n.c("plugin_download", "start run");
        String strC = com.byazt.uc.ve.c().c(true, "https://api-access.pangolin-sdk-toutiao.com/api/ad/union/sdk/settings/plugins", com.byazt.zyp.tt.c(tt()).toString().getBytes());
        if (strC == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(strC);
            if (jSONObject.optInt("cypher") == 3) {
                String strTt = com.byazt.zyp.tt.tt(jSONObject.optString("message"));
                if (TextUtils.isEmpty(strTt)) {
                    return;
                }
                ve.c(this.f17728c).c(c(new JSONObject(strTt).optJSONArray("plugins")));
            }
        } catch (JSONException e10) {
            n.c("plugin_download", "failed:".concat(String.valueOf(e10)));
        }
    }

    private List<c> c(JSONArray jSONArray) {
        n.c("plugin_download", "parse start");
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
            if (jSONObjectOptJSONObject != null) {
                c cVar = new c();
                cVar.f17730c = jSONObjectOptJSONObject.optString("package_name");
                cVar.tt = jSONObjectOptJSONObject.optInt("version_code");
                cVar.ve = jSONObjectOptJSONObject.optString(COSHttpResponseKey.DOWNLOAD_URL);
                cVar.uj = jSONObjectOptJSONObject.optString(Constant.MD5);
                cVar.f17729a = c(jSONObjectOptJSONObject.optString("min_version"));
                cVar.sp = c(jSONObjectOptJSONObject.optString("max_version"));
                cVar.f17734x = jSONObjectOptJSONObject.optInt("plugin_update_network");
                arrayList.add(cVar);
                n.c("plugin_download", "parse " + i10 + " : " + cVar);
            }
        }
        return arrayList;
    }

    private int c(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return Integer.parseInt(str.replace(o0.f49827a, ""));
            }
        } catch (NumberFormatException unused) {
        }
        return 0;
    }
}
