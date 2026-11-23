package com.byazt.ut;

import com.byazt.nr.m;
import com.byazt.ukr.yp;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 834, 72})
public class da implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final da f20973c = new da();
    public Map<String, Object> tt = new ConcurrentHashMap(1);

    @Override // com.byazt.ut.i
    public void c(String str, Throwable th) {
        m.c("AutoService_boost", "onServiceCreateFailed:".concat(String.valueOf(str)));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("key", str);
            jSONObject.put("msg", "sv cr failed");
        } catch (JSONException unused) {
        }
        yp.c().c("ats_b", jSONObject, th);
    }

    @Override // com.byazt.ut.i
    public void tt(String str, Object obj, Object obj2, int i10, int i11) {
        m.c("AutoService_boost", "onShareServiceUpdate:" + str + " oldVersion=" + i10 + " newVersion=" + i11);
    }

    @Override // com.byazt.ut.i
    public void c(sl slVar, int i10, String str, Throwable th) {
        m.c("AutoService_boost", "onServiceProxyCreateFailed:" + slVar.f20975a + " " + str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("key", slVar.f20975a);
            jSONObject.put("msg", str);
            jSONObject.put("type", i10);
        } catch (JSONException unused) {
        }
        yp.c().c("ats_b_proxy", jSONObject, th);
    }

    @Override // com.byazt.ut.i
    public void c(sl slVar, Object obj, Object obj2, boolean z10, JSONObject jSONObject, Throwable th) {
        Map<String, Object> map;
        if (slVar == null || obj2 == null || (map = this.tt) == null) {
            return;
        }
        map.put(slVar.f20975a, obj2);
    }

    @Override // com.byazt.ut.i
    public void c(String str, Object obj, int i10, int i11) {
        m.c("AutoService_boost", "onServiceRegMsgUpdate:" + str + " " + i10 + " " + i11);
    }

    @Override // com.byazt.ut.i
    public void c(int i10, String str, Throwable th) {
        m.tt("AutoService_boost", "onServiceException:" + str + " , code=" + i10, th);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("msg", str);
            jSONObject.put("code", i10);
        } catch (JSONException unused) {
        }
        yp.c().c("ats_b_e", jSONObject, th);
    }

    @Override // com.byazt.ut.i
    public void c(String str, Object obj, int i10) {
        m.c("AutoService_boost", "onServiceCreate:" + str + " " + i10);
    }

    @Override // com.byazt.ut.i
    public void c(String str, Object obj, Object obj2, int i10, int i11) {
        m.c("AutoService_boost", "onServiceUpdate:" + str + " oldVersion=" + i10 + " newVersion=" + i11);
    }

    public Map<String, Object> c() {
        return this.tt;
    }
}
