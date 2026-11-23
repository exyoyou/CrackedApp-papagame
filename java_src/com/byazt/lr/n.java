package com.byazt.lr;

import com.byazt.hu.u;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 155, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16742a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16743c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f16744da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16745i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16746n = 15;
    public long sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f16747t;
    public c tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f16748u;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f16749x;
    public tt yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f16750z;

    @com.byazt.zqa.c(c = {0, 1, 155, 151})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f16751a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f16752c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public String f16753da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f16754i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f16755n;
        public String sl;
        public List<C0370c> sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public String f16756t;
        public String tt;
        public long uj;
        public long ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f16757x;

        /* JADX INFO: renamed from: com.byazt.lr.n$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 155, 156})
        public static class C0370c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f16758c;
            public String tt;

            public void c(String str) {
                this.f16758c = str;
            }

            public void tt(String str) {
                this.tt = str;
            }
        }

        public void a(String str) {
            this.f16754i = str;
        }

        public void c(String str) {
            this.f16752c = str;
        }

        public void i(String str) {
            this.f16756t = str;
        }

        public void n(String str) {
            this.f16757x = str;
        }

        public void sp(String str) {
            this.f16753da = str;
        }

        public void tt(String str) {
            this.tt = str;
        }

        public void uj(String str) {
            this.f16751a = str;
        }

        public void ve(String str) {
            this.f16755n = str;
        }

        public void x(String str) {
            this.sl = str;
        }

        public void c(long j10) {
            this.ve = j10;
        }

        public void tt(long j10) {
            this.uj = j10;
        }

        public void c(List<C0370c> list) {
            this.sp = list;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 155, 934})
    public static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16759c;
        public String tt;

        public void c(int i10) {
            this.f16759c = i10;
        }

        public void c(String str) {
            this.tt = str;
        }
    }

    public static n sp(String str) {
        n nVar = new n();
        try {
            JSONObject jSONObject = new JSONObject(str);
            c cVarC = c(jSONObject);
            tt ttVarTt = tt(jSONObject);
            nVar.c(cVarC);
            nVar.c(ttVarTt);
            nVar.c(jSONObject.optInt("show_auth", 0) == 1);
            nVar.c(jSONObject.optInt("download_permit"));
            nVar.tt(jSONObject.optInt("appstore_permit"));
            nVar.ve(jSONObject.optInt("market_online_status", 15));
            nVar.uj(jSONObject.optInt("hijack_permit"));
            nVar.c(jSONObject.optString("package_name"));
            nVar.tt(jSONObject.optString("hijack_url"));
            nVar.n(jSONObject.optInt("code"));
            nVar.ve(jSONObject.optString("message"));
            nVar.c(jSONObject.optLong("request_duration", 0L));
            nVar.uj(jSONObject.optString("back_web_url"));
            nVar.n(jSONObject.optString("hw_app_id"));
            nVar.a(jSONObject.optString("deep_link"));
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "ComplianceResult fromJson");
        }
        return nVar;
    }

    public void a(String str) {
        this.f16748u = str;
    }

    public void c(boolean z10) {
        this.f16743c = z10;
    }

    public void n(int i10) {
        this.f16745i = i10;
    }

    public String toString() {
        return c(this);
    }

    public void tt(int i10) {
        this.uj = i10;
    }

    public void uj(int i10) {
        this.f16742a = i10;
    }

    public void ve(int i10) {
        this.f16746n = i10;
    }

    public void c(c cVar) {
        this.tt = cVar;
    }

    public void n(String str) {
        this.f16747t = str;
    }

    public void tt(String str) {
        this.f16749x = str;
    }

    public void uj(String str) {
        this.f16750z = str;
    }

    public void ve(String str) {
        this.f16744da = str;
    }

    private static JSONArray ve(c cVar) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        List<c.C0370c> list = cVar.sp;
        if (list != null && list.size() > 0) {
            for (c.C0370c c0370c : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("permission_name", c0370c.f16758c);
                jSONObject.putOpt("permission_desc", c0370c.tt);
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    public void c(int i10) {
        this.ve = i10;
    }

    public String tt() {
        return this.f16748u;
    }

    private static JSONObject tt(c cVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (cVar != null) {
            jSONObject.putOpt("app_name", cVar.f16752c);
            jSONObject.putOpt(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, cVar.tt);
            jSONObject.putOpt("update_time", Long.valueOf(cVar.ve));
            jSONObject.putOpt("size", Long.valueOf(cVar.uj));
            jSONObject.putOpt("developer_name", cVar.f16755n);
            jSONObject.putOpt("policy_url", cVar.f16754i);
            jSONObject.putOpt("icon_url", cVar.f16753da);
            jSONObject.putOpt(COSHttpResponseKey.DOWNLOAD_URL, cVar.sl);
            jSONObject.putOpt("permissions", ve(cVar));
            jSONObject.putOpt("permission_classify_url", cVar.f16757x);
            jSONObject.putOpt("desc_url", cVar.f16756t);
        }
        return jSONObject;
    }

    public void c(String str) {
        this.sp = str;
    }

    public int c() {
        return this.f16745i;
    }

    public void c(long j10) {
        this.sl = j10;
    }

    public void c(tt ttVar) {
        this.yp = ttVar;
    }

    public static String c(n nVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("show_auth", Integer.valueOf(nVar.f16743c ? 1 : 0));
            jSONObject.putOpt("download_permit", Integer.valueOf(nVar.ve));
            jSONObject.putOpt("appstore_permit", Integer.valueOf(nVar.uj));
            jSONObject.putOpt("market_online_status", Integer.valueOf(nVar.f16746n));
            jSONObject.putOpt("hijack_permit", Integer.valueOf(nVar.f16742a));
            jSONObject.putOpt("package_name", nVar.sp);
            jSONObject.putOpt("hijack_url", nVar.f16749x);
            jSONObject.putOpt("code", Integer.valueOf(nVar.f16745i));
            jSONObject.putOpt("message", nVar.f16744da);
            jSONObject.putOpt("request_duration", Long.valueOf(nVar.sl));
            jSONObject.putOpt("auth_info", tt(nVar.tt));
            jSONObject.putOpt("status", tt(nVar.yp));
            jSONObject.putOpt("back_web_url", nVar.f16750z);
            jSONObject.putOpt("hw_app_id", nVar.f16747t);
            jSONObject.putOpt("deep_link", nVar.f16748u);
        } catch (JSONException e10) {
            com.byazt.dm.ve.c().c(e10, "ComplianceResult toJson");
        }
        return jSONObject.toString();
    }

    private static tt tt(JSONObject jSONObject) {
        tt ttVar = new tt();
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("status");
            if (jSONObjectOptJSONObject != null) {
                ttVar.c(jSONObjectOptJSONObject.optInt("status"));
                ttVar.c(jSONObjectOptJSONObject.optString("message"));
            }
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "ComplianceResult getStatus");
        }
        return ttVar;
    }

    private static JSONObject tt(tt ttVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (ttVar != null) {
            jSONObject.putOpt("status", Integer.valueOf(ttVar.f16759c));
            jSONObject.putOpt("message", ttVar.tt);
        }
        return jSONObject;
    }

    private static c c(JSONObject jSONObject) {
        c cVar = new c();
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("auth_info");
            if (jSONObjectOptJSONObject != null) {
                cVar.c(jSONObjectOptJSONObject.optString("app_name"));
                cVar.tt(jSONObjectOptJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME));
                cVar.c(u.c(jSONObjectOptJSONObject, "update_time"));
                cVar.tt(u.c(jSONObjectOptJSONObject, "size"));
                cVar.ve(jSONObjectOptJSONObject.optString("developer_name"));
                cVar.uj(jSONObjectOptJSONObject.optString("package_name"));
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("permissions");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList = new ArrayList();
                    c(jSONArrayOptJSONArray, arrayList);
                    cVar.c(arrayList);
                }
                cVar.n(jSONObjectOptJSONObject.optString("permission_classify_url"));
                cVar.a(jSONObjectOptJSONObject.optString("policy_url"));
                cVar.sp(jSONObjectOptJSONObject.optString("icon_url"));
                cVar.x(jSONObjectOptJSONObject.optString(COSHttpResponseKey.DOWNLOAD_URL));
                cVar.i(jSONObjectOptJSONObject.optString("desc_url"));
            }
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "ComplianceResult getAuthInfo");
        }
        return cVar;
    }

    private static void c(JSONArray jSONArray, List<c.C0370c> list) {
        if (jSONArray == null || list == null) {
            return;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
            if (jSONObjectOptJSONObject != null) {
                c.C0370c c0370c = new c.C0370c();
                c0370c.c(jSONObjectOptJSONObject.optString("permission_name"));
                c0370c.tt(jSONObjectOptJSONObject.optString("permission_desc"));
                list.add(c0370c);
            }
        }
    }
}
