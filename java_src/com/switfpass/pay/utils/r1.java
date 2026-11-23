package com.switfpass.pay.utils;

import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class r1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ q1 f82839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82840c;

    r1(q1 q1Var, Object obj) {
        this.f82839b = q1Var;
        this.f82840c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DialogInfoSdk dialogInfoSdk = new DialogInfoSdk(this.f82839b.f82835a.f82745b, this.f82839b.f82835a.f82745b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82840c.toString(), "确定", 0, null);
        h.e(this.f82839b.f82835a.f82745b, dialogInfoSdk);
        dialogInfoSdk.show();
    }
}
