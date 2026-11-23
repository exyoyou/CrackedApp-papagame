package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class h extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f82664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f82665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82666d;

    h(String str, String str2, com.switfpass.pay.thread.h hVar) {
        this.f82664b = str;
        this.f82665c = str2;
        this.f82666d = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public OrderBena a() throws JSONException {
        com.switfpass.pay.thread.h hVar;
        String str;
        String str2 = MainApplication.f82447g;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mchId", this.f82664b);
        try {
            com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, "uuid=" + this.f82665c);
            if (fVarD.c()) {
                int i10 = fVarD.f82700c;
                if (i10 == -4) {
                    hVar = this.f82666d;
                    str = "请求连接超时，请稍候再试";
                } else {
                    if (i10 != -3) {
                        if (i10 == -1) {
                            hVar = this.f82666d;
                            str = "网络连接不可用，请检查你网络连接";
                        }
                        return null;
                    }
                    hVar = this.f82666d;
                    str = "请求服务连接失败，请稍候再试";
                }
                hVar.onError(str);
                return null;
            }
            OrderBena orderBena = new OrderBena();
            String unused = d.f82655a;
            new StringBuilder("result data-->").append(fVarD.f82698a);
            orderBena.setMoeny(fVarD.f82698a.optString("money", ""));
            orderBena.setOutTradeNo(fVarD.f82698a.optString("out_trade_no", ""));
            orderBena.setStatus(fVarD.f82698a.optString("status", ""));
            orderBena.setService(fVarD.f82698a.optString("trade_type", ""));
            orderBena.setTradeName(fVarD.f82698a.optString("trade_name", ""));
            orderBena.setTradeTime(fVarD.f82698a.optString("trade_time", ""));
            orderBena.setTransactionId(fVarD.f82698a.optString("transaction_id", ""));
            orderBena.setBody(fVarD.f82698a.optString("body", ""));
            orderBena.setMchOrderNo(fVarD.f82698a.optString("order_no", ""));
            orderBena.setMchName(fVarD.f82698a.optString("mch_name", ""));
            orderBena.setOpenID(fVarD.f82698a.optString("sub_openid", ""));
            return orderBena;
        } catch (Exception e10) {
            String unused2 = d.f82655a;
            new StringBuilder("createNativeOrder method error ").append(e10.getMessage());
            return null;
        }
    }
}
