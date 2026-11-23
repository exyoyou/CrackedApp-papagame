package com.join.mgps.zxing.decoding;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes3.dex */
public final class f implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener, Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Activity f73487b;

    public f(Activity activityToFinish) {
        this.f73487b = activityToFinish;
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
        this.f73487b.finish();
    }
}
