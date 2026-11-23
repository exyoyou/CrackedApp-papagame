package com.switfpass.pay.activity;

import com.switfpass.pay.bean.OrderBena;

/* JADX INFO: loaded from: classes2.dex */
final class d extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82507a;

    d(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82507a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        if (PaySDKCaptureActivity.e(this.f82507a) != null) {
            PaySDKCaptureActivity.e(this.f82507a).dismiss();
        }
        if (PaySDKCaptureActivity.f(this.f82507a)) {
            this.f82507a.runOnUiThread(new e(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        PaySDKCaptureActivity paySDKCaptureActivity = this.f82507a;
        com.switfpass.pay.utils.h.e(paySDKCaptureActivity, paySDKCaptureActivity.U);
        this.f82507a.U.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        this.f82507a.U.dismiss();
        if (PaySDKCaptureActivity.e(this.f82507a) != null) {
            PaySDKCaptureActivity.e(this.f82507a).dismiss();
        }
        if (orderBena == null || !PaySDKCaptureActivity.f(this.f82507a)) {
            return;
        }
        PaySDKCaptureActivity.a(this.f82507a, true);
        if (orderBena.getStatus() == null || !orderBena.getStatus().equals("0")) {
            PaySDKCaptureActivity.d(this.f82507a).setOutTradeNo(orderBena.getOutTradeNo());
            PaySDKCaptureActivity paySDKCaptureActivity = this.f82507a;
            PaySDKCaptureActivity.a(paySDKCaptureActivity, PaySDKCaptureActivity.d(paySDKCaptureActivity), "支付确认中，请稍候...", false);
        } else {
            this.f82507a.U.dismiss();
            orderBena.setMark(true);
            PayResultActivity.startActivity(orderBena, PaySDKCaptureActivity.g(this.f82507a));
            this.f82507a.finish();
        }
    }
}
