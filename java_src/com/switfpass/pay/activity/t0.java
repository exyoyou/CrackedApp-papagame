package com.switfpass.pay.activity;

import com.switfpass.pay.utils.DialogInfoSdk;

/* JADX INFO: loaded from: classes2.dex */
final class t0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82544b;

    t0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82544b = paySDKCaptureActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (PaySDKCaptureActivity.a(this.f82544b) <= 0 || PaySDKCaptureActivity.b(this.f82544b) == null) {
            PaySDKCaptureActivity.c(this.f82544b).removeCallbacks(this);
            if (PaySDKCaptureActivity.b(this.f82544b) != null && PaySDKCaptureActivity.b(this.f82544b).isShowing()) {
                PaySDKCaptureActivity.b(this.f82544b).dismiss();
            }
            PaySDKCaptureActivity paySDKCaptureActivity = this.f82544b;
            PaySDKCaptureActivity.a(paySDKCaptureActivity, PaySDKCaptureActivity.d(paySDKCaptureActivity), "支付确认中，请稍候...", false);
            return;
        }
        DialogInfoSdk dialogInfoSdkB = PaySDKCaptureActivity.b(this.f82544b);
        StringBuilder sb2 = new StringBuilder("订单状态确认中，共3次;每隔5秒查询，(");
        sb2.append(PaySDKCaptureActivity.a(this.f82544b));
        sb2.append("秒后)开始(第");
        sb2.append(this.f82544b.count - 1);
        sb2.append("次查询)，请勿中断该操作，请耐心等待查询结果");
        dialogInfoSdkB.i(sb2.toString());
        PaySDKCaptureActivity paySDKCaptureActivity2 = this.f82544b;
        PaySDKCaptureActivity.a(paySDKCaptureActivity2, PaySDKCaptureActivity.a(paySDKCaptureActivity2) - 1);
        PaySDKCaptureActivity.c(this.f82544b).postDelayed(this, 1000L);
    }
}
