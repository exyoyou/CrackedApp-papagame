package com.switfpass.pay.utils;

import android.app.Activity;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
final class e1 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ DialogInfoSdk f82787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f82788c;

    e1(DialogInfoSdk dialogInfoSdk, int i10) {
        this.f82787b = dialogInfoSdk;
        this.f82788c = i10;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f82787b.dismiss();
        int i10 = this.f82788c;
        if (i10 == 6) {
            ((Activity) this.f82787b.f82719b).finish();
            return;
        }
        if (i10 == 10) {
            this.f82787b.f82727j.cancel();
        } else {
            if (i10 != 12) {
                return;
            }
            this.f82787b.dismiss();
            this.f82787b.cancel();
            this.f82787b.f82727j.cancel();
        }
    }
}
