package com.switfpass.pay.activity;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
final class c0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PayPlugin f82506b;

    c0(PayPlugin payPlugin) {
        this.f82506b = payPlugin;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        new e0(this.f82506b).execute(new Void[0]);
    }
}
