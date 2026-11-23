package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.MchBean;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class k extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f82671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82672c;

    k(String str, com.switfpass.pay.thread.h hVar) {
        this.f82671b = str;
        this.f82672c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public List a() throws JSONException {
        com.switfpass.pay.thread.h hVar;
        String str;
        String str2 = String.valueOf(MainApplication.f82443c) + "/spay/queryByMchId";
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mchId", this.f82671b);
        try {
            com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, null);
            if (fVarD.c()) {
                int i10 = fVarD.f82700c;
                if (i10 == -4) {
                    hVar = this.f82672c;
                    str = "请求连接超时，请稍候再试";
                } else if (i10 == -3) {
                    hVar = this.f82672c;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i10 == -1) {
                    hVar = this.f82672c;
                    str = "网络连接不可用，请检查你网络连接";
                }
                hVar.onError(str);
            } else {
                if (Integer.valueOf(Integer.parseInt(fVarD.f82698a.getString("result"))).intValue() == 200) {
                    ArrayList arrayList = new ArrayList();
                    JSONArray jSONArray = new JSONArray(fVarD.f82698a.getString("message"));
                    for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                        MchBean mchBean = new MchBean();
                        mchBean.setTradeType(jSONArray.getJSONObject(i11).optString("tradeType", ""));
                        arrayList.add(mchBean);
                    }
                    return arrayList;
                }
                this.f82672c.onError(fVarD.f82698a.getString("message"));
            }
            return null;
        } catch (Exception e10) {
            String unused = d.f82655a;
            new StringBuilder("createNativeOrder method error ").append(e10.getMessage());
            return null;
        }
    }
}
