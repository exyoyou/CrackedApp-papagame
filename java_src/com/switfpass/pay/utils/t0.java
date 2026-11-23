package com.switfpass.pay.utils;

import android.text.TextUtils;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;

/* JADX INFO: loaded from: classes2.dex */
final class t0 extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ b0 f82846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82847b;

    t0(b0 b0Var, RequestMsg requestMsg) {
        this.f82846a = b0Var;
        this.f82847b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        this.f82846a.l();
        if (obj != null) {
            try {
                this.f82846a.f82745b.runOnUiThread(new u0(this, obj));
                d8.a.b(9, -1, obj.toString());
            } catch (Exception e10) {
                new StringBuilder().append(e10);
            }
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        b0 b0Var = this.f82846a;
        b0Var.v(b0Var.f82745b, true, "请稍候，正在请求支付宝支付..");
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        this.f82846a.l();
        if (orderBena != null) {
            d8.a.b(9, 0, "success");
            if (!TextUtils.isEmpty(orderBena.getOutTradeNo())) {
                this.f82847b.setOutTradeNo(orderBena.getOutTradeNo());
            }
            QQWapPayWebView.startActivity(this.f82846a.f82745b, orderBena.getUuId(), this.f82847b.getTokenId(), this.f82847b.getOutTradeNo());
        }
    }
}
