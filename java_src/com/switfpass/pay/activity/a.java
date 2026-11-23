package com.switfpass.pay.activity;

import android.content.DialogInterface;
import com.switfpass.pay.utils.ProgressInfoDialog;

/* JADX INFO: loaded from: classes2.dex */
final class a implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ProgressInfoDialog f82502c;

    a(PaySDKCaptureActivity paySDKCaptureActivity, ProgressInfoDialog progressInfoDialog) {
        this.f82501b = paySDKCaptureActivity;
        this.f82502c = progressInfoDialog;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        PaySDKCaptureActivity.a(this.f82501b, false);
        ProgressInfoDialog progressInfoDialog = this.f82502c;
        if (progressInfoDialog != null) {
            progressInfoDialog.dismiss();
            this.f82501b.finish();
        }
    }
}
