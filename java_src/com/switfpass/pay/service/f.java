package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;

/* JADX INFO: loaded from: classes2.dex */
final class f extends com.switfpass.pay.thread.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f82660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f82661d;

    f(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        this.f82659b = requestMsg;
        this.f82660c = str;
        this.f82661d = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public OrderBena a() {
        com.switfpass.pay.thread.h hVar;
        String str;
        String str2 = MainApplication.f82443c;
        String str3 = "token_id=" + this.f82659b.getTokenId() + "&trade_type=" + this.f82660c;
        String unused = d.f82655a;
        new StringBuilder("request param-->").append(str3);
        try {
            com.switfpass.pay.thread.f fVarD = com.switfpass.pay.thread.d.c().d(str2, null, null, null, str3);
            if (fVarD.c()) {
                int i10 = fVarD.f82700c;
                if (i10 == -4) {
                    hVar = this.f82661d;
                    str = "请求连接超时，请稍候再试";
                } else if (i10 == -3) {
                    hVar = this.f82661d;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i10 == -1) {
                    hVar = this.f82661d;
                    str = "网络连接不可用，请检查你网络连接";
                }
                hVar.onError(str);
            } else {
                if (Integer.valueOf(Integer.parseInt(fVarD.f82698a.getString("status"))).intValue() == 0) {
                    OrderBena orderBena = new OrderBena();
                    orderBena.set_input_charset(fVarD.f82698a.optString("pay_info", ""));
                    return orderBena;
                }
                this.f82661d.onError(fVarD.f82698a.getString("message"));
            }
            return null;
        } catch (Exception e10) {
            String unused2 = d.f82655a;
            new StringBuilder("createNativeOrder method error ").append(e10.getMessage());
            return null;
        }
    }
}
