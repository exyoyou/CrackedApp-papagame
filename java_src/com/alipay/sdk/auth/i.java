package com.alipay.sdk.auth;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes7.dex */
final class i implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f7114b;

    i(g gVar) {
        this.f7114b = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f7114b.f7111b.cancel();
        AuthActivity.this.f7097f = false;
        j.d(AuthActivity.this, AuthActivity.this.f7094c + "?resultCode=150");
        AuthActivity.this.finish();
    }
}
