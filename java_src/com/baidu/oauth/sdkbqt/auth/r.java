package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8243a;

    r(i iVar) {
        this.f8243a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8243a.f8208l != null) {
            this.f8243a.f8208l.setVisibility(8);
        }
        this.f8243a.f8202f.f8228a = this.f8243a.f8211o.f8231b;
        if (this.f8243a.f8204h != null) {
            this.f8243a.f8204h.setVisibility(0);
        }
    }
}
