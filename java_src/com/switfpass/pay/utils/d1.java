package com.switfpass.pay.utils;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
final class d1 implements DialogInterface.OnClickListener {
    d1() {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        h.c(dialogInterface);
    }
}
