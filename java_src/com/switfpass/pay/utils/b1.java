package com.switfpass.pay.utils;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes2.dex */
final class b1 implements DialogInterface.OnKeyListener {
    b1() {
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        return i10 == 4;
    }
}
