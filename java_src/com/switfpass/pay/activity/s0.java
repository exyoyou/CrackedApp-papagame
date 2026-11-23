package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class s0 implements com.switfpass.pay.utils.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82541a;

    s0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82541a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.utils.i
    public final void a(String str) {
        if (str == null) {
            this.f82541a.showToastInfo(com.join.android.app.mgsim.wufun.R.drawable._mtrl_checkbox_button_icon_unchecked_indeterminate__2_res_0x7f08001d);
        } else {
            this.f82541a.submitData(str, false);
            PaySDKCaptureActivity.j(this.f82541a).dismiss();
        }
    }

    @Override // com.switfpass.pay.utils.i
    public final void cancel() {
    }
}
