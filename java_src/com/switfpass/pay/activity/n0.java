package com.switfpass.pay.activity;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
final class n0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ m0 f82529b;

    n0(m0 m0Var) {
        this.f82529b = m0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f82529b.f82528a.payReverse(PaySDKCaptureActivity.d(this.f82529b.f82528a));
        if (this.f82529b.f82528a.af != null) {
            this.f82529b.f82528a.af.dismiss();
        }
    }
}
