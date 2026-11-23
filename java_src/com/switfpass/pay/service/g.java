package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class g extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82663c;

    g(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        this.f82662b = requestMsg;
        this.f82663c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public OrderBena a() {
        com.switfpass.pay.thread.h hVar;
        String string;
        String str = MainApplication.f82446f;
        JSONObject jSONObject = new JSONObject();
        String str2 = "token_id=" + this.f82662b.getTokenId() + "&trade_type=unified.trade.query&out_trade_no=" + this.f82662b.getOutTradeNo();
        String unused = d.f82655a;
        new StringBuilder("unfiedQueryOrder params-->").append(str2);
        try {
            com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(str, jSONObject, null, null, str2);
            if (fVarD.c()) {
                int i10 = fVarD.f82700c;
                if (i10 == -4) {
                    hVar = this.f82663c;
                    string = "请求连接超时，请稍候再试";
                } else {
                    if (i10 != -3) {
                        if (i10 == -1) {
                            hVar = this.f82663c;
                            string = "网络连接不可用，请检查你网络连接";
                        }
                        return null;
                    }
                    hVar = this.f82663c;
                    string = "请求服务连接失败，请稍候再试";
                }
            } else {
                String unused2 = d.f82655a;
                new StringBuilder("unfiedQueryOrder result data-->").append(fVarD.f82698a);
                if (Integer.valueOf(Integer.parseInt(fVarD.f82698a.getString("status"))).intValue() == 0) {
                    OrderBena orderBena = new OrderBena();
                    orderBena.setMoeny(fVarD.f82698a.optString("money", ""));
                    orderBena.setOutTradeNo(fVarD.f82698a.optString("out_trade_no", ""));
                    orderBena.setStatus(fVarD.f82698a.optString("trade_state", ""));
                    orderBena.setService(fVarD.f82698a.optString("trade_type", ""));
                    orderBena.setTradeName(fVarD.f82698a.optString("trade_name", ""));
                    orderBena.setTradeTime(fVarD.f82698a.optString("trade_time", ""));
                    orderBena.setTransactionId(fVarD.f82698a.optString("transaction_id", ""));
                    orderBena.setBody(fVarD.f82698a.optString("body", ""));
                    orderBena.setMchOrderNo(fVarD.f82698a.optString("order_no", ""));
                    orderBena.setMchName(fVarD.f82698a.optString("mch_name", ""));
                    orderBena.setOpenID(fVarD.f82698a.optString("sub_openid", ""));
                    orderBena.setMessage(fVarD.f82698a.optString("message", ""));
                    orderBena.setResCode(fVarD.f82698a.optString("status", ""));
                    return orderBena;
                }
                hVar = this.f82663c;
                string = fVarD.f82698a.getString("message");
            }
            hVar.onError(string);
            return null;
        } catch (Exception e10) {
            String unused3 = d.f82655a;
            new StringBuilder("createNativeOrder method error ").append(e10.getMessage());
            this.f82663c.onError("查询确认结果失败");
            return null;
        }
    }
}
