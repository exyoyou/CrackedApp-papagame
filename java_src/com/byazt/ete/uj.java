package com.byazt.ete;

import android.text.TextUtils;
import com.byazt.quv.AbsServerManager;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13900a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13901c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f13902da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f13903i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13904n;
    public JSONArray sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f13905t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public JSONObject f13906u;
    public List<c> uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f13907x;

    @com.byazt.zqa.c(c = {0, 1, 8, 123})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f13908c;
        public final String tt;

        public c(JSONObject jSONObject) {
            this.f13908c = jSONObject.optString("permission_name");
            this.tt = jSONObject.optString("permission_desc");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject c() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("permission_desc", this.tt);
            } catch (JSONException e10) {
                com.byazt.nr.m.c(e10);
            }
            try {
                jSONObject.put("permission_name", this.f13908c);
            } catch (JSONException e11) {
                com.byazt.nr.m.c(e11);
            }
            return jSONObject;
        }
    }

    public uj(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AbsServerManager.PACKAGE_QUERY_BINDER);
            this.f13901c = jSONObjectOptJSONObject.optString("app_name");
            this.tt = jSONObjectOptJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME);
            this.ve = jSONObjectOptJSONObject.optString("developer_name");
            this.uj = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("permissions");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    this.uj.add(new c(jSONArrayOptJSONArray.optJSONObject(i10)));
                }
            }
            this.f13904n = jSONObjectOptJSONObject.optString("policy_url");
            String strOptString = jSONObjectOptJSONObject.optString(AbsServerManager.PACKAGE_QUERY_BINDER);
            this.f13900a = strOptString;
            if (TextUtils.isEmpty(strOptString)) {
                this.f13900a = jSONObjectOptJSONObject.optString("package_name");
            }
            this.sp = jSONObjectOptJSONObject.optString("icon_url");
            this.f13903i = jSONObjectOptJSONObject.optString("desc_url");
            this.f13902da = jSONObjectOptJSONObject.optString("reg_number");
            this.f13905t = jSONObjectOptJSONObject.optString("reg_url");
            this.f13906u = jSONObjectOptJSONObject.optJSONObject("reg_info");
        } catch (Throwable unused) {
        }
    }

    public String a() {
        return this.f13905t;
    }

    public String c() {
        return this.f13901c;
    }

    public String n() {
        return this.f13903i;
    }

    public boolean sp() {
        List<c> list;
        return (TextUtils.isEmpty(this.f13901c) || TextUtils.isEmpty(this.tt) || TextUtils.isEmpty(ve()) || (list = this.uj) == null || list.size() == 0 || TextUtils.isEmpty(this.f13904n) || TextUtils.isEmpty(this.f13903i)) ? false : true;
    }

    public String tt() {
        return this.tt;
    }

    public String uj() {
        return this.sp;
    }

    public String ve() {
        return this.ve;
    }

    public String x() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", this.f13901c);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        try {
            jSONObject.put("app_version", this.tt);
        } catch (JSONException e11) {
            com.byazt.nr.m.c(e11);
        }
        try {
            jSONObject.put("developer_name", this.ve);
        } catch (JSONException e12) {
            com.byazt.nr.m.c(e12);
        }
        try {
            jSONObject.put("package_name", this.f13900a);
        } catch (JSONException e13) {
            com.byazt.nr.m.c(e13);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<c> it2 = this.uj.iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next().c());
        }
        try {
            jSONObject.put("permissions", jSONArray);
        } catch (JSONException e14) {
            com.byazt.nr.m.c(e14);
        }
        try {
            jSONObject.put("privacy_policy_url", this.f13904n);
        } catch (JSONException e15) {
            com.byazt.nr.m.c(e15);
        }
        try {
            jSONObject.put("score", this.f13907x);
        } catch (JSONException e16) {
            com.byazt.nr.m.c(e16);
        }
        try {
            jSONObject.put("creative_tags", this.sl);
        } catch (JSONException e17) {
            com.byazt.nr.m.c(e17);
        }
        try {
            jSONObject.put("desc_url", this.f13903i);
        } catch (JSONException e18) {
            com.byazt.nr.m.c(e18);
        }
        try {
            jSONObject.put("reg_number", this.f13902da);
        } catch (JSONException e19) {
            com.byazt.nr.m.c(e19);
        }
        try {
            jSONObject.put("icon_url", this.sp);
        } catch (JSONException e20) {
            com.byazt.nr.m.c(e20);
        }
        try {
            jSONObject.put("reg_url", this.f13905t);
        } catch (JSONException e21) {
            com.byazt.nr.m.c(e21);
        }
        try {
            jSONObject.put("reg_info", this.f13906u);
        } catch (JSONException e22) {
            com.byazt.nr.m.c(e22);
        }
        return jSONObject.toString();
    }

    public void c(float f10) {
        this.f13907x = f10;
    }

    public void c(JSONArray jSONArray) {
        this.sl = jSONArray;
    }
}
