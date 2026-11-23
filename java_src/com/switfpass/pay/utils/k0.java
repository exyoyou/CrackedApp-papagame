package com.switfpass.pay.utils;

import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class k0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ i0 f82808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82809c;

    k0(i0 i0Var, Object obj) {
        this.f82808b = i0Var;
        this.f82809c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DialogInfoSdk dialogInfoSdk = new DialogInfoSdk(this.f82808b.f82800a.f82745b, this.f82808b.f82800a.f82745b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82809c.toString(), "确定", 0, null);
        h.e(this.f82808b.f82800a.f82745b, dialogInfoSdk);
        dialogInfoSdk.show();
    }
}
