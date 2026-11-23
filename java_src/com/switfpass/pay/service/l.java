package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class l extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f82674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82675d;

    l(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        this.f82673b = requestMsg;
        this.f82674c = str;
        this.f82675d = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public OrderBena a() throws JSONException {
        com.switfpass.pay.thread.h hVar;
        String string;
        String str = MainApplication.f82443c;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_id", this.f82673b.getTokenId());
        jSONObject.put("trade_type", this.f82674c);
        String str2 = "token_id=" + this.f82673b.getTokenId() + "&trade_type=" + this.f82674c + "&device_info=AND_SDK";
        String unused = d.f82655a;
        StringBuilder sb2 = new StringBuilder("WapPay-token_id->");
        sb2.append(this.f82673b.getTokenId());
        sb2.append(",param-->");
        sb2.append(str2);
        try {
            com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(str, jSONObject, null, null, str2);
            if (fVarD.c()) {
                int i10 = fVarD.f82700c;
                if (i10 == -4) {
                    hVar = this.f82675d;
                    string = "请求连接超时，请稍候再试";
                } else {
                    if (i10 != -3) {
                        if (i10 == -1) {
                            hVar = this.f82675d;
                            string = "网络连接不可用，请检查你网络连接";
                        }
                        return null;
                    }
                    hVar = this.f82675d;
                    string = "请求服务连接失败，请稍候再试";
                }
            } else {
                String unused2 = d.f82655a;
                new StringBuilder("WapPay-result.data->").append(fVarD.f82698a);
                if (Integer.valueOf(Integer.parseInt(fVarD.f82698a.getString("status"))).intValue() == 0) {
                    OrderBena orderBena = new OrderBena();
                    orderBena.setUuId(fVarD.f82698a.optString("code_img_url", ""));
                    orderBena.setOutTradeNo(fVarD.f82698a.optString("out_trade_no", ""));
                    return orderBena;
                }
                hVar = this.f82675d;
                string = fVarD.f82698a.getString("message");
            }
            hVar.onError(string);
            return null;
        } catch (Exception e10) {
            String unused3 = d.f82655a;
            new StringBuilder("createNativeOrder method error ").append(e10.getMessage());
            this.f82675d.onError("生成二维码失败");
            return null;
        }
    }
}
