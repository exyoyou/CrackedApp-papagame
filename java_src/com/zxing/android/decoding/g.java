package com.zxing.android.decoding;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes8.dex */
public final class g implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener, Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Activity f90497b;

    public g(Activity activityToFinish) {
        this.f90497b = activityToFinish;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        run();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        run();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f90497b.finish();
    }
}
