package com.byazt.kj;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.gqp.da;
import com.byazt.nr.m;
import com.byazt.ukr.yp;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 159, 54})
public class ve extends c {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f16286x;

    public ve(com.byazt.tjs.c cVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        super(cVar, str, str2, jSONObject, str3, str4);
        this.f16286x = "inspect_data";
    }

    @Override // com.byazt.kj.c
    public void c(Context context, String str, com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, Map<String, Object> map) {
    }

    public JSONObject n() {
        try {
            int i10 = this.f16274c.tt().get();
            JSONArray jSONArrayOptJSONArray = this.f16273a.optJSONArray(this.f16286x);
            if (jSONArrayOptJSONArray == null) {
                return null;
            }
            int length = jSONArrayOptJSONArray.length();
            for (int i11 = 0; i11 < length; i11++) {
                JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i11);
                int iOptInt = jSONObject.optInt("jump_number", -1);
                if (iOptInt != -1 && iOptInt == i10) {
                    return jSONObject;
                }
            }
        } catch (Exception e10) {
            m.c(e10);
        }
        return null;
    }

    @Override // com.byazt.kj.c
    public void tt(Context context, String str, com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, Map<String, Object> map) {
    }

    public void uj() {
        JSONObject jSONObject = this.f16273a;
        if (jSONObject == null) {
            return;
        }
        yp.c().uj(jSONObject.toString(), this.f16273a.optString("req_id"));
    }

    @Override // com.byazt.kj.c
    public void ve() {
        this.f16274c.c(new Runnable() { // from class: com.byazt.kj.ve.1
            @Override // java.lang.Runnable
            public void run() {
                ve.this.uj();
            }
        });
    }

    @Override // com.byazt.kj.c
    public void c(String str, String str2) {
    }

    @Override // com.byazt.kj.c
    public void c(JSONObject jSONObject, String str, da daVar, String str2, String str3, Map<String, String> map, Map<String, Object> map2) {
    }

    @Override // com.byazt.kj.c
    public boolean c(WebView webView) {
        return true;
    }

    @Override // com.byazt.kj.c
    public boolean c(da daVar) {
        return true;
    }

    @Override // com.byazt.kj.c
    public void c() {
        try {
            this.f16273a.putOpt("req_id", this.ve);
            this.f16273a.put(this.f16286x, new JSONArray());
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.kj.c
    public void c(String str) {
        int i10 = this.f16274c.tt().get();
        JSONArray jSONArrayOptJSONArray = this.f16273a.optJSONArray(this.f16286x);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("jump_number", i10);
            jSONObject.put("jump_url", str);
            jSONArrayOptJSONArray.put(jSONObject);
            this.f16273a.put("inspect_data", jSONArrayOptJSONArray);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.kj.c
    public void c(com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, c.InterfaceC0361c interfaceC0361c) {
        Uri uriC = ttVar.c();
        if (uriC != null) {
            try {
                String string = uriC.toString();
                String lowerCase = "unknown";
                if (daVar != null && daVar.tt() != null) {
                    lowerCase = daVar.tt().trim().toLowerCase();
                }
                JSONObject jSONObjectN = n();
                if (jSONObjectN != null) {
                    JSONArray jSONArrayOptJSONArray = jSONObjectN.optJSONArray(lowerCase);
                    if (jSONArrayOptJSONArray == null) {
                        jSONArrayOptJSONArray = new JSONArray();
                    }
                    jSONArrayOptJSONArray.put(string);
                    jSONObjectN.putOpt(lowerCase, jSONArrayOptJSONArray);
                } else {
                    m.uj("weblp", "error pageCountJson is null");
                }
            } catch (Exception e10) {
                m.c(e10);
                m.ve("weblp", "error", e10);
            }
        }
        interfaceC0361c.c(false, null);
    }
}
