package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class j extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82670c;

    j(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        this.f82669b = requestMsg;
        this.f82670c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public OrderBena a() throws JSONException {
        com.switfpass.pay.thread.h hVar;
        String str;
        String str2 = MainApplication.f82446f;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_id", this.f82669b.getTokenId());
        jSONObject.put("out_trade_no", this.f82669b.getOutTradeNo());
        jSONObject.put("trade_type", "unified.micropay.reverse");
        String str3 = "token_id=" + this.f82669b.getTokenId() + "&trade_type=unified.micropay.reverse&out_trade_no=" + this.f82669b.getOutTradeNo() + "&device_info=AND_SDK";
        try {
            String unused = d.f82655a;
            new StringBuilder("unifiedReverse params-->").append(str3);
            com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, str3);
            if (fVarD.c()) {
                int i10 = fVarD.f82700c;
                if (i10 == -4) {
                    hVar = this.f82670c;
                    str = "请求连接超时，请稍候再试";
                } else if (i10 == -3) {
                    hVar = this.f82670c;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i10 == -1) {
                    hVar = this.f82670c;
                    str = "网络连接不可用，请检查你网络连接";
                }
                hVar.onError(str);
            } else {
                if (Integer.valueOf(Integer.parseInt(fVarD.f82698a.getString("status"))).intValue() == 0) {
                    OrderBena orderBena = new OrderBena();
                    String unused2 = d.f82655a;
                    new StringBuilder("unifiedReverse result data-->").append(fVarD.f82698a);
                    return orderBena;
                }
                this.f82670c.onError(fVarD.f82698a.getString("message"));
            }
            return null;
        } catch (Exception e10) {
            String unused3 = d.f82655a;
            new StringBuilder("unifiedReverse method error ").append(e10.getMessage());
            return null;
        }
    }
}
