package com.alipay.sdk.app;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes7.dex */
final class d implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f7046b;

    d(c cVar) {
        this.f7046b = cVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f7046b.f7045c.f7039b = true;
        this.f7046b.f7044b.proceed();
        dialogInterface.dismiss();
    }
}
