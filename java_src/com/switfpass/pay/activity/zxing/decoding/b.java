package com.switfpass.pay.activity.zxing.decoding;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Activity f82610b;

    public b(Activity activity) {
        this.f82610b = activity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f82610b.finish();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f82610b.finish();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f82610b.finish();
    }
}
