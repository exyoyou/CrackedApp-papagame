package com.switfpass.pay.utils;

import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class m implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ l f82814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82815c;

    m(l lVar, Object obj) {
        this.f82814b = lVar;
        this.f82815c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DialogInfoSdk dialogInfoSdk = new DialogInfoSdk(this.f82814b.f82811a.f82745b, this.f82814b.f82811a.f82745b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82815c.toString(), "确定", 0, null);
        h.e(this.f82814b.f82811a.f82745b, dialogInfoSdk);
        dialogInfoSdk.show();
    }
}
