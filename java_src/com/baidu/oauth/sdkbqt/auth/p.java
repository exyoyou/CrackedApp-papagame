package com.baidu.oauth.sdkbqt.auth;

/* JADX INFO: loaded from: classes6.dex */
class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f8240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ i f8241b;

    p(i iVar, String str) {
        this.f8241b = iVar;
        this.f8240a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8241b.f8205i) {
            return;
        }
        super/*android.webkit.WebView*/.loadUrl(this.f8240a);
    }
}
