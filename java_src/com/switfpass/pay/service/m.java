package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class m extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f82677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82678d;

    m(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        this.f82676b = requestMsg;
        this.f82677c = str;
        this.f82678d = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public OrderBena a() throws JSONException {
        com.switfpass.pay.thread.h hVar;
        String string;
        String str = MainApplication.f82443c;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_id", this.f82676b.getTokenId());
        jSONObject.put("trade_type", this.f82677c);
        String str2 = "token_id=" + this.f82676b.getTokenId() + "&trade_type=" + this.f82677c + "&device_info=AND_SDK";
        String unused = d.f82655a;
        StringBuilder sb2 = new StringBuilder("createNativeOrder-token_id->");
        sb2.append(this.f82676b.getTokenId());
        sb2.append(",param-->");
        sb2.append(str2);
        try {
            com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(str, jSONObject, null, null, str2);
            if (fVarD.c()) {
                int i10 = fVarD.f82700c;
                if (i10 == -4) {
                    hVar = this.f82678d;
                    string = "请求连接超时，请稍候再试";
                } else {
                    if (i10 != -3) {
                        if (i10 == -1) {
                            hVar = this.f82678d;
                            string = "网络连接不可用，请检查你网络连接";
                        }
                        return null;
                    }
                    hVar = this.f82678d;
                    string = "请求服务连接失败，请稍候再试";
                }
            } else {
                if (Integer.valueOf(Integer.parseInt(fVarD.f82698a.getString("status"))).intValue() == 0) {
                    OrderBena orderBena = new OrderBena();
                    orderBena.setUuId(fVarD.f82698a.optString("code_url", ""));
                    orderBena.setMoeny(fVarD.f82698a.optString("money", ""));
                    orderBena.setOutTradeNo(fVarD.f82698a.optString("out_trade_no", ""));
                    orderBena.setBody(fVarD.f82698a.optString("body", ""));
                    orderBena.setService(this.f82677c);
                    orderBena.setTradeName(this.f82676b.getTradeName());
                    orderBena.setTokenId(this.f82676b.getTokenId());
                    orderBena.setMchId(this.f82676b.getMchId());
                    orderBena.setCashierName(this.f82676b.getCashierName());
                    orderBena.setBankType(this.f82676b.getBankType());
                    if (this.f82676b.getPay_logo() != null && !"".equals(this.f82676b.getPay_logo())) {
                        orderBena.setPay_logo(this.f82676b.getPay_logo());
                    }
                    if (this.f82676b.getSubOpenID() != null && !"".equals(this.f82676b.getSubOpenID())) {
                        orderBena.setRedPack(this.f82676b.getSubOpenID());
                    }
                    return orderBena;
                }
                hVar = this.f82678d;
                string = fVarD.f82698a.getString("message");
            }
            hVar.onError(string);
            return null;
        } catch (Exception e10) {
            String unused2 = d.f82655a;
            new StringBuilder("createNativeOrder method error ").append(e10.getMessage());
            this.f82678d.onError("生成二维码失败");
            return null;
        }
    }
}
