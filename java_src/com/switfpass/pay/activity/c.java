package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class c implements com.switfpass.pay.utils.d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82505a;

    c(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82505a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.utils.d0
    public final void a() {
        PaySDKCaptureActivity paySDKCaptureActivity = this.f82505a;
        PaySDKCaptureActivity.a(paySDKCaptureActivity, "交易进行中，确认是否中断交易？", paySDKCaptureActivity.U);
    }
}
