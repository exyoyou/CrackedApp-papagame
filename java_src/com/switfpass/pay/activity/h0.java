package com.switfpass.pay.activity;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
final class h0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PayResultActivity f82519b;

    h0(PayResultActivity payResultActivity) {
        this.f82519b = payResultActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f82519b.f82477g == null || !this.f82519b.f82477g.isMark()) {
            d8.a.b(0, 0, 0);
        } else {
            d8.a.b(6, 7, "支付状态：该笔订单已支付");
        }
        this.f82519b.finish();
    }
}
