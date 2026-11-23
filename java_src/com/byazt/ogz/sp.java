package com.byazt.ogz;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1190, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17840c = false;
    public boolean tt = false;
    public boolean ve = false;
    public boolean uj = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f17841n = false;

    public static sp c(String str) {
        sp spVar = new sp();
        if (TextUtils.isEmpty(str)) {
            com.byazt.bzd.sp.c().delete();
            return spVar;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            spVar.f17840c = jSONObject.optBoolean("use_csj_main", false);
            spVar.tt = jSONObject.optBoolean("use_layze_layout", false);
            spVar.ve = jSONObject.optBoolean("create_ad_in_io", false);
            spVar.uj = jSONObject.optBoolean("opt_panel_view", false);
            boolean zOptBoolean = jSONObject.optBoolean("so_lock", false);
            spVar.f17841n = zOptBoolean;
            if (zOptBoolean) {
                com.byazt.bzd.sp.c().mkdirs();
            } else {
                com.byazt.bzd.sp.c().delete();
            }
        } catch (Throwable unused) {
        }
        return spVar;
    }

    @NonNull
    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("use_csj_main", this.f17840c);
            jSONObject.put("use_layze_layout", this.tt);
            jSONObject.put("create_ad_in_io", this.ve);
            jSONObject.put("opt_panel_view", this.uj);
            jSONObject.put("so_lock", this.f17841n);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
