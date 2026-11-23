package com.switfpass.pay.activity;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes2.dex */
final class w implements DialogInterface.OnKeyListener {
    w() {
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        return i10 == 4;
    }
}
