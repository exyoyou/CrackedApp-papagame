package com.byazt.qx;

import com.byazt.el.SSWebView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 184})
public class zb extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SSWebView f19370c;
    public String tt;

    public zb(SSWebView sSWebView, String str) {
        this.f19370c = sSWebView;
        this.tt = str;
    }

    public JSONObject ve() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.byazt.omf.x.m().c(com.byazt.omf.gt.getContext()) && this.f19370c != null) {
                jSONObject.put("code", 0);
                jSONObject.put("codeMsg", "success");
                this.f19370c.O_();
                return jSONObject;
            }
            jSONObject.put("code", -1);
            jSONObject.put("codeMsg", "unavailable");
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static void c(com.byazt.pct.nu nuVar, SSWebView sSWebView, String str) {
        nuVar.c("close_wobble_observer", (com.byazt.pct.n<?, ?>) new zb(sSWebView, str));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        return ve();
    }
}
