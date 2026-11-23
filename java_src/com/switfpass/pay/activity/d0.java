package com.switfpass.pay.activity;

import android.app.ProgressDialog;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
final class d0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PayPlugin f82508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Context f82509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f82510d;

    d0(PayPlugin payPlugin, Context context, String str) {
        this.f82508b = payPlugin;
        this.f82509c = context;
        this.f82510d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PayPlugin payPlugin = this.f82508b;
        if (payPlugin.f82470e == null) {
            payPlugin.f82470e = new ProgressDialog(this.f82509c);
        }
        this.f82508b.f82470e.setMessage(this.f82510d);
        this.f82508b.f82470e.show();
    }
}
