package com.byazt.ete;

import android.text.TextUtils;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 110})
public class qy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, c> f13857c = new HashMap();

    @com.byazt.zqa.c(c = {0, 1, 8, 1539})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13858c;
        public String tt;
        public String uj;
        public String ve;

        public c(JSONObject jSONObject) {
            try {
                this.f13858c = jSONObject.optInt("type");
                this.tt = jSONObject.optString("url");
                this.ve = jSONObject.optString(ForumPostsTagSelectActivity_.PID_EXTRA);
                this.uj = jSONObject.optString("ecom_live_params");
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
        }

        public JSONObject c() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("type", this.f13858c);
                jSONObject.put("url", this.tt);
                jSONObject.put(ForumPostsTagSelectActivity_.PID_EXTRA, this.ve);
                jSONObject.put("ecom_live_params", this.uj);
                return jSONObject;
            } catch (JSONException e10) {
                throw new RuntimeException(e10);
            }
        }

        public boolean tt() {
            if (3 == this.f13858c) {
                return !TextUtils.isEmpty(this.uj);
            }
            return !TextUtils.isEmpty(this.tt);
        }
    }

    public qy(JSONObject jSONObject, boolean z10) {
        if (z10) {
            try {
                jSONObject = jSONObject.optJSONObject("sub_convert_link");
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
                return;
            }
        }
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                c cVar = new c(jSONObject.optJSONObject(next));
                if (cVar.tt()) {
                    this.f13857c.put(next, cVar);
                }
            }
        }
    }

    public static String n(qy qyVar, String str) {
        c cVar;
        return (qyVar == null || (cVar = qyVar.f13857c.get(str)) == null) ? "" : cVar.uj;
    }

    public static int tt(qy qyVar, String str) {
        c cVar;
        if (qyVar == null || (cVar = qyVar.f13857c.get(str)) == null) {
            return 0;
        }
        return cVar.f13858c;
    }

    public static JSONObject uj(qy qyVar, String str) {
        c cVar;
        if (qyVar == null || (cVar = qyVar.f13857c.get(str)) == null) {
            return null;
        }
        return cVar.c();
    }

    public static String ve(qy qyVar, String str) {
        c cVar;
        return (qyVar == null || (cVar = qyVar.f13857c.get(str)) == null) ? "" : cVar.tt;
    }

    public void c(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, c> entry : this.f13857c.entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue().c());
            }
            jSONObject.put("sub_convert_link", jSONObject2);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    private static qy c(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.u();
    }

    public static boolean c(qy qyVar, String str) {
        return (qyVar == null || !qyVar.f13857c.containsKey(str) || TextUtils.isEmpty(ve(qyVar, str))) ? false : true;
    }

    public static String c(ic icVar, String str) {
        c cVar;
        qy qyVarC = c(icVar);
        return (qyVarC == null || (cVar = qyVarC.f13857c.get(str)) == null) ? "" : cVar.ve;
    }
}
