package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class o0 implements com.switfpass.pay.utils.d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82531a;

    o0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82531a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.utils.d0
    public final void a() {
        PaySDKCaptureActivity paySDKCaptureActivity = this.f82531a;
        PaySDKCaptureActivity.a(paySDKCaptureActivity, "交易进行中，确认是否中断交易？", paySDKCaptureActivity.V);
    }
}
