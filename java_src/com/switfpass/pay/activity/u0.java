package com.switfpass.pay.activity;

import android.view.View;
import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class u0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82546b;

    u0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f82546b = paySDKCaptureActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.switfpass.pay.utils.h.l(this.f82546b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82546b.getResources().getString(Resourcemap.getById_pay_unFinished()), this.f82546b.getResources().getString(Resourcemap.getById_pay_str_btnCancel()), this.f82546b.getResources().getString(Resourcemap.getById_pay_str_btnOk()), this.f82546b, new v0(this), new w0()).show();
    }
}
