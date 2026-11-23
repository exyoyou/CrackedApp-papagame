package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class e extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f82657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82658c;

    e(String str, com.switfpass.pay.thread.h hVar) {
        this.f82657b = str;
        this.f82658c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public OrderBena a() throws JSONException {
        String string;
        JSONObject jSONObject = new JSONObject();
        OrderBena orderBena = new OrderBena();
        jSONObject.put("openid", this.f82657b);
        com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(String.valueOf(MainApplication.f82449i) + "spay/sendRedPack", jSONObject, null, null, null);
        try {
            if (fVarD.c() || (string = fVarD.f82698a.getString("status")) == null || !Boolean.parseBoolean(string)) {
                return null;
            }
            return orderBena;
        } catch (Exception unused) {
            this.f82658c.onError("红包发送失败，请稍后再试..");
        }
        return null;
    }
}
