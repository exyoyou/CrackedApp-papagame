package com.switfpass.pay.activity;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
final class v0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ u0 f82548b;

    v0(u0 u0Var) {
        this.f82548b = u0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        d8.a.b(6, 8, "已退出反扫支付");
        this.f82548b.f82546b.finish();
    }
}
