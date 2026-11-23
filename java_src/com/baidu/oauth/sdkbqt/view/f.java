package com.baidu.oauth.sdkbqt.view;

/* JADX INFO: loaded from: classes6.dex */
class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f8279a;

    f(e eVar) {
        this.f8279a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8279a.f8277a.setVisibility(4);
        this.f8279a.f8278b.oauthWebView.reload();
    }
}
