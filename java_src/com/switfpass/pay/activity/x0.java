package com.switfpass.pay.activity;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
final class x0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82550b;

    x0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82550b = paySDKCaptureActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        d8.a.b(6, 8, "已退出反扫支付");
        this.f82550b.finish();
    }
}
