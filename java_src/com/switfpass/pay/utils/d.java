package com.switfpass.pay.utils;

import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ b f82768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f82769c;

    d(b bVar, Object obj) {
        this.f82768b = bVar;
        this.f82769c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DialogInfoSdk dialogInfoSdk = new DialogInfoSdk(this.f82768b.f82742a.f82745b, this.f82768b.f82742a.f82745b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82769c.toString(), "确定", 0, null);
        h.e(this.f82768b.f82742a.f82745b, dialogInfoSdk);
        dialogInfoSdk.show();
    }
}
