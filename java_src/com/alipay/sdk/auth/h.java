package com.alipay.sdk.auth;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes7.dex */
final class h implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f7113b;

    h(g gVar) {
        this.f7113b = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        AuthActivity.this.f7097f = true;
        this.f7113b.f7111b.proceed();
        dialogInterface.dismiss();
    }
}
