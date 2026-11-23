package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class ci implements ao.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cb f7715a;

    ci(cb cbVar) {
        this.f7715a = cbVar;
    }

    @Override // com.baidu.mobads.sdk.internal.ao.a
    public void a() {
        if (this.f7715a.A) {
            this.f7715a.A = false;
            this.f7715a.a(false, "remote update Network access failed");
        }
    }
}
