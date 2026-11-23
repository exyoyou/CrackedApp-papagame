package com.switfpass.pay.activity;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
final class m implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ l f82527b;

    m(l lVar) {
        this.f82527b = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        d8.a.b(0, 1, QrcodeActivity.e(this.f82527b.f82524b));
        this.f82527b.f82524b.finish();
    }
}
