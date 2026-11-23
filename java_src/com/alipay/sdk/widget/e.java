package com.alipay.sdk.widget;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes7.dex */
final class e implements DialogInterface.OnKeyListener {
    e() {
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        return i10 == 4;
    }
}
