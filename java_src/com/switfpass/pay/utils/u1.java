package com.switfpass.pay.utils;

import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class u1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ t1 f82852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82853c;

    u1(t1 t1Var, Object obj) {
        this.f82852b = t1Var;
        this.f82853c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DialogInfoSdk dialogInfoSdk = new DialogInfoSdk(this.f82852b.f82848a.f82745b, this.f82852b.f82848a.f82745b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82853c.toString(), "确定", 0, null);
        h.e(this.f82852b.f82848a.f82745b, dialogInfoSdk);
        dialogInfoSdk.show();
    }
}
