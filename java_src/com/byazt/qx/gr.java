package com.byazt.qx;

import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 196})
public class gr extends com.byazt.pct.uj<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<com.byazt.omf.d> f19329c;

    public gr(com.byazt.omf.d dVar) {
        this.f19329c = new WeakReference<>(dVar);
    }

    @Override // com.byazt.pct.uj
    public void uj() {
        this.f19329c = null;
    }

    public static void c(com.byazt.pct.nu nuVar, final com.byazt.omf.d dVar) {
        nuVar.c("mallTopbarClick", new com.byazt.pct.uj.tt() { // from class: com.byazt.qx.gr.1
            @Override // com.byazt.pct.uj.tt
            public com.byazt.pct.uj c() {
                return new gr(dVar);
            }
        });
    }

    @Override // com.byazt.pct.uj
    public void c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        com.byazt.omf.x.m().hd();
        WeakReference<com.byazt.omf.d> weakReference = this.f19329c;
        if (weakReference == null) {
            return;
        }
        if (weakReference.get() != null && jSONObject != null) {
            String strOptString = jSONObject.optString("schema");
            if (strOptString.isEmpty()) {
                ve();
                return;
            } else {
                c(strOptString, jSONObject.optBoolean("sync_auth", false));
                return;
            }
        }
        ve();
    }

    private void c(final String str, boolean z10) throws JSONException {
        final JSONObject jSONObject = new JSONObject();
        if (2 == com.byazt.apd.tt.c().n()) {
            c(str, jSONObject);
            return;
        }
        int iC = com.byazt.apd.tt.c().c(new com.byazt.cn.tt() { // from class: com.byazt.qx.gr.2
            @Override // com.byazt.cn.tt
            public void c(Object obj) {
                if (obj instanceof Map) {
                    Map map = (Map) obj;
                    if (map.containsKey("code")) {
                        Object obj2 = map.get("code");
                        if (obj2 instanceof String) {
                            try {
                                int i10 = Integer.parseInt((String) obj2);
                                if (i10 == 1) {
                                    gr.this.c(str, jSONObject);
                                    return;
                                }
                                try {
                                    jSONObject.putOpt("code", Integer.valueOf(i10));
                                } catch (JSONException unused) {
                                }
                                gr.this.c(i10, "授权失败");
                                gr.this.c(jSONObject);
                                return;
                            } catch (NumberFormatException unused2) {
                            }
                        }
                    }
                }
                try {
                    jSONObject.putOpt("code", -1);
                } catch (JSONException unused3) {
                }
                gr.this.c(-1, "授权失败");
                gr.this.c(jSONObject);
            }
        }, z10);
        jSONObject.putOpt("code", Integer.valueOf(iC));
        if (iC != 1) {
            c(iC, "执行授权失败");
            c(jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, JSONObject jSONObject) {
        int iC = com.byazt.apd.tt.c().c(str);
        try {
            jSONObject.putOpt("code", Integer.valueOf(iC));
        } catch (JSONException unused) {
        }
        if (iC != 1) {
            c(iC, "schema 解析失败");
        }
        c(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str) {
        com.byazt.nr.m.tt("MallTopBarClickMethod", "code = " + i10 + ", msg = " + str);
        com.byazt.nr.h.c(com.byazt.omf.gt.getContext(), "努力加载中，请稍后再试", 1);
    }
}
