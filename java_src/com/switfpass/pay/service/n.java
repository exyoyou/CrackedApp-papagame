package com.switfpass.pay.service;

import androidx.core.provider.FontsContractCompat;
import com.join.mgps.dto.Constant;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import com.umeng.umcrash.UMCrash;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class n extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82680c;

    n(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        this.f82679b = requestMsg;
        this.f82680c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public OrderBena a() throws JSONException {
        com.switfpass.pay.thread.h hVar;
        String string;
        String str = MainApplication.f82443c;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mchId", this.f82679b.getMchId());
        jSONObject.put("money", this.f82679b.getMoney());
        jSONObject.put("body", this.f82679b.getBody());
        jSONObject.put("notifyUrl", this.f82679b.getNotifyUrl());
        jSONObject.put("outTradeNo", this.f82679b.getOutTradeNo());
        jSONObject.put("appId", this.f82679b.getAppId());
        jSONObject.put(Constant.MD5, this.f82679b.getSign());
        String str2 = "token_id=" + this.f82679b.getTokenId() + "&trade_type=pay.weixin.app&appid=" + this.f82679b.getAppId() + "&device_info=AND_SDK";
        try {
            String unused = d.f82655a;
            StringBuilder sb2 = new StringBuilder("param-->");
            sb2.append(str2);
            sb2.append(",url->");
            sb2.append(str);
            com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(str, jSONObject, null, null, str2);
            String unused2 = d.f82655a;
            new StringBuilder("result.data-->").append(fVarD.f82698a);
            if (fVarD.c()) {
                int i10 = fVarD.f82700c;
                if (i10 == -4) {
                    hVar = this.f82680c;
                    string = "请求连接超时，请稍候再试";
                } else {
                    if (i10 != -3) {
                        if (i10 == -1) {
                            hVar = this.f82680c;
                            string = "网络连接不可用，请检查你网络连接";
                        }
                        return null;
                    }
                    hVar = this.f82680c;
                    string = "请求服务连接失败，请稍候再试";
                }
            } else {
                if (!fVarD.f82698a.getString("status").equals("0")) {
                    this.f82680c.onError(fVarD.f82698a.getString("message"));
                    return null;
                }
                if (Integer.valueOf(Integer.parseInt(fVarD.f82698a.getString(FontsContractCompat.Columns.RESULT_CODE))).intValue() == 0) {
                    OrderBena orderBena = new OrderBena();
                    JSONObject jSONObject2 = new JSONObject(fVarD.f82698a.getString("pay_info"));
                    orderBena.setPartner(jSONObject2.optString("partnerid", ""));
                    orderBena.setPrepayid(jSONObject2.optString("prepayid", ""));
                    orderBena.setSign(jSONObject2.optString(Constant.MD5, ""));
                    orderBena.setAppId(jSONObject2.optString("appid", ""));
                    orderBena.setTimeStamp(jSONObject2.optString(UMCrash.SP_KEY_TIMESTAMP, ""));
                    orderBena.setNonceStr(jSONObject2.optString("noncestr", ""));
                    MainApplication.B = jSONObject2.optString("mch_id", "");
                    MainApplication.C = this.f82679b.getTokenId();
                    return orderBena;
                }
                hVar = this.f82680c;
                string = fVarD.f82698a.getString("err_msg");
            }
            hVar.onError(string);
            return null;
        } catch (Exception e10) {
            String unused3 = d.f82655a;
            new StringBuilder("createNativeOrder method error ").append(e10.getMessage());
            return null;
        }
    }
}
