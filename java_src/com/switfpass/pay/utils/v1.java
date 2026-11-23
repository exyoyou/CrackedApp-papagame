package com.switfpass.pay.utils;

import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;

/* JADX INFO: loaded from: classes2.dex */
final class v1 extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ b0 f82854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82855b;

    v1(b0 b0Var, RequestMsg requestMsg) {
        this.f82854a = b0Var;
        this.f82855b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        this.f82854a.l();
        if (obj != null) {
            this.f82854a.f82745b.runOnUiThread(new w1(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        b0 b0Var = this.f82854a;
        b0Var.v(b0Var.f82745b, true, "请稍候，正在请求微信支付...");
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        this.f82854a.l();
        if (orderBena == null || !this.f82854a.f82762s) {
            return;
        }
        b0.c(this.f82854a, orderBena, this.f82855b);
    }
}
