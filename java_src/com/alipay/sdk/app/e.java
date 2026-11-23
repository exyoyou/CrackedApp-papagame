package com.alipay.sdk.app;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes7.dex */
final class e implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f7047b;

    e(c cVar) {
        this.f7047b = cVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f7047b.f7044b.cancel();
        this.f7047b.f7045c.f7039b = false;
        h.f7050a = h.a();
        this.f7047b.f7045c.f7038a.finish();
    }
}
