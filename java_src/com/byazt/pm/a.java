package com.byazt.pm;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.n0;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1355, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f18746c;
    public List<c> tt;
    public boolean ve = false;
    public int uj = 0;

    @com.byazt.zqa.c(c = {0, 1, 1355, 464})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Map<String, Object> f18747a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f18748c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public Map<String, Object> f18749n;
        public String tt;
        public String uj;
        public String ve = "global";

        public String c() {
            return this.ve;
        }

        public String n() {
            return this.tt;
        }

        public String toString() {
            return "Action{scheme='" + this.ve + "', name='" + this.uj + "', params=" + this.f18749n + ", host='" + this.tt + "', origin='" + this.f18748c + "', extra=" + this.f18747a + '}';
        }

        public String tt() {
            return this.uj;
        }

        public String uj() {
            return this.f18748c;
        }

        public Map<String, Object> ve() {
            return this.f18749n;
        }

        public void c(String str) {
            this.ve = str;
        }

        public void tt(String str) {
            this.uj = str;
        }

        public void uj(String str) {
            this.tt = str;
        }

        public void ve(String str) {
            this.f18748c = str;
        }

        public void c(Map<String, Object> map) {
            this.f18749n = map;
        }
    }

    public c c() {
        return this.f18746c;
    }

    public List<c> tt() {
        return this.tt;
    }

    public int uj() {
        return this.uj;
    }

    public boolean ve() {
        return this.ve;
    }

    public static a c(JSONObject jSONObject, JSONObject jSONObject2) {
        c cVarC;
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        Object objOpt = jSONObject.opt(n0.f93598d);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("handlers");
        c cVarC2 = objOpt instanceof String ? t.c((String) objOpt, jSONObject2) : objOpt instanceof JSONObject ? t.c((JSONObject) objOpt, jSONObject2) : null;
        if (cVarC2 != null) {
            aVar.f18746c = cVarC2;
        }
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            Object objOpt2 = jSONArrayOptJSONArray.opt(i10);
            if (objOpt2 instanceof String) {
                c cVarC3 = t.c((String) objOpt2, jSONObject2);
                if (cVarC3 != null) {
                    arrayList.add(cVarC3);
                }
            } else if ((objOpt2 instanceof JSONObject) && (cVarC = t.c((JSONObject) objOpt2, jSONObject2)) != null) {
                arrayList.add(cVarC);
            }
        }
        aVar.tt = arrayList;
        if (jSONObject.has("delay")) {
            aVar.uj = com.byazt.cd.ve.c(com.byazt.wj.tt.c(jSONObject.optString("delay"), jSONObject2), 0);
        }
        if (jSONObject.has("disable")) {
            aVar.ve = com.byazt.cd.ve.c(com.byazt.wj.tt.c(jSONObject.optString("disable"), jSONObject2), false);
        }
        return aVar;
    }
}
