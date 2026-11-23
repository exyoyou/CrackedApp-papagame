package com.switfpass.pay.activity;

import com.switfpass.pay.bean.OrderBena;

/* JADX INFO: loaded from: classes2.dex */
final class k0 extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82523a;

    k0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82523a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        if (PaySDKCaptureActivity.e(this.f82523a) != null) {
            PaySDKCaptureActivity.e(this.f82523a).dismiss();
        }
        this.f82523a.U.dismiss();
        if (PaySDKCaptureActivity.f(this.f82523a)) {
            PaySDKCaptureActivity.a(this.f82523a, true);
            this.f82523a.runOnUiThread(new l0(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        PaySDKCaptureActivity paySDKCaptureActivity = this.f82523a;
        com.switfpass.pay.utils.h.e(paySDKCaptureActivity, paySDKCaptureActivity.U);
        this.f82523a.U.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        this.f82523a.U.dismiss();
        if (PaySDKCaptureActivity.e(this.f82523a) != null) {
            PaySDKCaptureActivity.e(this.f82523a).dismiss();
        }
        if (orderBena != null) {
            d8.a.b(6, 8, "支付状态：该笔订单已冲正");
            this.f82523a.showToastInfo("该笔订单已经冲正成功，请重新发起支付请求");
            this.f82523a.finish();
        }
    }
}
