package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class m0 implements com.switfpass.pay.utils.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82528a;

    m0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82528a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.utils.i
    public final void a(String str) {
        com.switfpass.pay.utils.h.h("温馨提示", "确定是否冲正？", com.join.android.app.mgsim.wufun.R.drawable._mtrl_checkbox_button_unchecked_checked__0_res_0x7f08001e, com.join.android.app.mgsim.wufun.R.drawable._mtrl_checkbox_button_unchecked_checked__1_res_0x7f08001f, this.f82528a, new n0(this)).show();
    }

    @Override // com.switfpass.pay.utils.i
    public final void cancel() {
        PaySDKCaptureActivity paySDKCaptureActivity = this.f82528a;
        PaySDKCaptureActivity.a(paySDKCaptureActivity, PaySDKCaptureActivity.d(paySDKCaptureActivity), "支付确认中，请稍候...", true);
    }
}
