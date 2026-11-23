package com.byazt.bh;

import com.alipay.sdk.authjs.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 892, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11924a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11925c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11928n;
    public String tt;
    public boolean uj;
    public String ve;
    public final Map<String, String> sp = new HashMap();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<C0258c> f11929x = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<C0258c> f11927i = new ArrayList();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final List<C0258c> f11926da = new ArrayList();

    /* JADX INFO: renamed from: com.byazt.bh.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 892, 44})
    public static class C0258c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f11930c;
        public String tt;

        public C0258c(String str, String str2) {
            this.f11930c = str;
            this.tt = str2;
        }

        public String c() {
            return this.f11930c;
        }

        public String tt() {
            return this.tt;
        }
    }

    public c(JSONObject jSONObject) {
        c(jSONObject);
    }

    public Map<String, String> a() {
        return this.sp;
    }

    public String c() {
        return this.f11925c;
    }

    public List<C0258c> i() {
        return this.f11926da;
    }

    public int n() {
        return this.f11928n;
    }

    public List<C0258c> sp() {
        return this.f11929x;
    }

    public String tt() {
        return this.tt;
    }

    public boolean uj() {
        return this.uj;
    }

    public String ve() {
        return this.ve;
    }

    public List<C0258c> x() {
        return this.f11927i;
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f11925c = jSONObject.optString("name");
        this.f11924a = jSONObject.optInt("index");
        this.tt = jSONObject.optString("scheme");
        this.ve = jSONObject.optString("condition");
        this.uj = jSONObject.optBoolean("enableCondition");
        this.f11928n = jSONObject.optInt("priority", Integer.MAX_VALUE);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.sp.put(next, jSONObjectOptJSONObject.optString(next));
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("next");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject2 != null) {
                    this.f11929x.add(new C0258c(jSONObjectOptJSONObject2.optString("name"), jSONObjectOptJSONObject2.optString("condition")));
                }
            }
        } else {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("next");
            if (jSONObjectOptJSONObject3 != null) {
                this.f11929x.add(new C0258c(jSONObjectOptJSONObject3.optString("name"), jSONObjectOptJSONObject3.optString("condition")));
            }
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject(a.f7124i);
        if (jSONObjectOptJSONObject4 == null) {
            jSONObjectOptJSONObject4 = new JSONObject();
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject4.optJSONArray("success");
        if (jSONArrayOptJSONArray2 == null) {
            jSONArrayOptJSONArray2 = new JSONArray();
        }
        for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
            JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray2.optJSONObject(i11);
            if (jSONObjectOptJSONObject5 != null) {
                this.f11927i.add(new C0258c(jSONObjectOptJSONObject5.optString("name"), jSONObjectOptJSONObject5.optString("condition")));
            }
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject4.optJSONArray("fail");
        if (jSONArrayOptJSONArray3 == null) {
            jSONArrayOptJSONArray3 = new JSONArray();
        }
        for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
            JSONObject jSONObjectOptJSONObject6 = jSONArrayOptJSONArray3.optJSONObject(i12);
            if (jSONObjectOptJSONObject6 != null) {
                this.f11926da.add(new C0258c(jSONObjectOptJSONObject6.optString("name"), jSONObjectOptJSONObject6.optString("condition")));
            }
        }
    }
}
