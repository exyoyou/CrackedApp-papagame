package com.switfpass.pay.utils;

import com.switfpass.pay.bean.OrderBena;

/* JADX INFO: loaded from: classes2.dex */
final class n extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ b0 f82819a;

    n(b0 b0Var) {
        this.f82819a = b0Var;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        this.f82819a.l();
        super.onError(obj);
        if (obj != null) {
            d8.a.b(1, 1, "支付失败，原因包括用户网络出错");
            this.f82819a.f82745b.runOnUiThread(new o(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        b0 b0Var = this.f82819a;
        b0Var.v(b0Var.f82745b, true, "请稍候，正在请求支付宝..");
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        if (orderBena != null) {
            new R(this.f82819a, orderBena).start();
        }
    }
}
