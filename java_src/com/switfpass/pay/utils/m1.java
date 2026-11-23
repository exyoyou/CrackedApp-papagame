package com.switfpass.pay.utils;

import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class m1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ l1 f82817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82818c;

    m1(l1 l1Var, Object obj) {
        this.f82817b = l1Var;
        this.f82818c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DialogInfoSdk dialogInfoSdk = new DialogInfoSdk(this.f82817b.f82812a.f82745b, this.f82817b.f82812a.f82745b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82818c.toString(), "确定", 0, null);
        h.e(this.f82817b.f82812a.f82745b, dialogInfoSdk);
        dialogInfoSdk.show();
    }
}
