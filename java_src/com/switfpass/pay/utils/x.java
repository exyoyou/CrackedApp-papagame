package com.switfpass.pay.utils;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
final class x implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ b0 f82859b;

    x(b0 b0Var) {
        this.f82859b = b0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f82859b.f82756m.setTradeType(b0.f82744w);
        b0 b0Var = this.f82859b;
        b0Var.F(b0Var.f82756m);
    }
}
