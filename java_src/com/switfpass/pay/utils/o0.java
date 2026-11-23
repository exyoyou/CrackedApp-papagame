package com.switfpass.pay.utils;

import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class o0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ n0 f82825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82826c;

    o0(n0 n0Var, Object obj) {
        this.f82825b = n0Var;
        this.f82826c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DialogInfoSdk dialogInfoSdk = new DialogInfoSdk(this.f82825b.f82820a.f82745b, this.f82825b.f82820a.f82745b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82826c.toString(), "确定", 0, null);
        h.e(this.f82825b.f82820a.f82745b, dialogInfoSdk);
        dialogInfoSdk.show();
    }
}
