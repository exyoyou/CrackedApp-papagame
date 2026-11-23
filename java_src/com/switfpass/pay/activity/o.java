package com.switfpass.pay.activity;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
final class o implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f82530b;

    o(QrcodeActivity qrcodeActivity) {
        this.f82530b = qrcodeActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        QrcodeActivity qrcodeActivity = this.f82530b;
        QrcodeActivity.a(qrcodeActivity, QrcodeActivity.f(qrcodeActivity).a(QrcodeActivity.e(this.f82530b).getService(), QrcodeActivity.g(this.f82530b).getWidth()));
        QrcodeActivity.h(this.f82530b).showAsDropDown(QrcodeActivity.g(this.f82530b));
    }
}
