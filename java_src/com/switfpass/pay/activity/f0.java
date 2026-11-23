package com.switfpass.pay.activity;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
final class f0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PayResultActivity f82516b;

    f0(PayResultActivity payResultActivity) {
        this.f82516b = payResultActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        d8.a.b(0, 0, 0);
        this.f82516b.finish();
    }
}
