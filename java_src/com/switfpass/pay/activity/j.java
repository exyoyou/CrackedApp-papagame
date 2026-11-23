package com.switfpass.pay.activity;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
final class j implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f82521b;

    j(QrcodeActivity qrcodeActivity) {
        this.f82521b = qrcodeActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        d8.a.b(0, 1, QrcodeActivity.e(this.f82521b));
        this.f82521b.finish();
    }
}
