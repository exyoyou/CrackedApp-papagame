package com.switfpass.pay.utils;

import android.app.Activity;
import android.view.View;
import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
final class f1 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ DialogInfoSdk f82791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f82792c;

    f1(DialogInfoSdk dialogInfoSdk, int i10) {
        this.f82791b = dialogInfoSdk;
        this.f82792c = i10;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = this.f82792c;
        if (i10 != 0) {
            if (i10 == 1) {
                this.f82791b.dismiss();
                Toast.makeText(this.f82791b.getContext(), "提交成功!", 0).show();
                return;
            }
            if (i10 == 3) {
                this.f82791b.dismiss();
                this.f82791b.cancel();
                this.f82791b.f82727j.a(null);
                return;
            }
            if (i10 == 6) {
                ((Activity) this.f82791b.f82719b).finish();
                return;
            }
            if (i10 == 12) {
                this.f82791b.dismiss();
                this.f82791b.cancel();
                this.f82791b.f82727j.a(null);
                this.f82791b.f82727j.cancel();
                return;
            }
            if (i10 == 9) {
                this.f82791b.dismiss();
                this.f82791b.cancel();
                this.f82791b.f82727j.a(this.f82791b.f82730m.getText().toString());
                return;
            } else if (i10 != 10) {
                return;
            } else {
                this.f82791b.f82727j.a(null);
            }
        }
        this.f82791b.dismiss();
        this.f82791b.cancel();
    }
}
