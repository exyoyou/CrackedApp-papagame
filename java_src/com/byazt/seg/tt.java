package com.byazt.seg;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 947, 13})
public class tt extends com.byazt.ku.c {
    public tt() {
    }

    public static tt n(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return tt(new JSONObject(str));
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public static tt tt(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        tt ttVar = new tt();
        ttVar.c(jSONObject.optString("name"));
        ttVar.tt(jSONObject.optString("version"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    com.byazt.ku.c.C0364c c0364c = new com.byazt.ku.c.C0364c();
                    c0364c.c(jSONObjectOptJSONObject.optString("url"));
                    c0364c.tt(jSONObjectOptJSONObject.optString(TKDownloadReason.KSAD_TK_MD5));
                    c0364c.c(jSONObjectOptJSONObject.optInt("level"));
                    arrayList.add(c0364c);
                }
            }
        }
        ttVar.c(arrayList);
        if (ttVar.a()) {
            return ttVar;
        }
        return null;
    }

    @Override // com.byazt.ku.c
    public boolean a() {
        return (TextUtils.isEmpty(ve()) || TextUtils.isEmpty(tt())) ? false : true;
    }

    @Override // com.byazt.ku.c
    public String x() {
        if (!a()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", tt());
            jSONObject.putOpt("version", ve());
            JSONArray jSONArray = new JSONArray();
            if (getResources() != null) {
                for (com.byazt.ku.c.C0364c c0364c : getResources()) {
                    if (c0364c != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("url", c0364c.c());
                        jSONObject2.putOpt(TKDownloadReason.KSAD_TK_MD5, c0364c.tt());
                        jSONObject2.putOpt("level", Integer.valueOf(c0364c.ve()));
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            return jSONObject.toString();
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public tt(com.byazt.ku.c cVar) {
        if (cVar != null) {
            c(cVar.tt());
            tt(cVar.ve());
            c(cVar.getResources());
        }
    }
}
