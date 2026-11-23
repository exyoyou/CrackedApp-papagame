package com.switfpass.pay.utils;

import android.view.View;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes2.dex */
final class g1 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ PopupWindow f82798b;

    g1(PopupWindow popupWindow) {
        this.f82798b = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f82798b.dismiss();
    }
}
