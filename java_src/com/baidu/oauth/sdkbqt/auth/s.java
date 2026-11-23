package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8244a;

    s(i iVar) {
        this.f8244a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8244a.f8208l != null) {
            this.f8244a.f8208l.setVisibility(8);
        }
        if (this.f8244a.f8203g != null) {
            this.f8244a.f8203g.setVisibility(0);
        }
    }
}
