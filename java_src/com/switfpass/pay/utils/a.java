package com.switfpass.pay.utils;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
final class a implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ b0 f82740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ProgressInfoDialog f82741c;

    a(b0 b0Var, ProgressInfoDialog progressInfoDialog) {
        this.f82740b = b0Var;
        this.f82741c = progressInfoDialog;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f82740b.f82762s = false;
        ProgressInfoDialog progressInfoDialog = this.f82741c;
        if (progressInfoDialog != null) {
            progressInfoDialog.dismiss();
        }
    }
}
