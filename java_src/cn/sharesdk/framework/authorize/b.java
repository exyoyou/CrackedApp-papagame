package cn.sharesdk.framework.authorize;

import android.webkit.WebView;
import cn.sharesdk.framework.h;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b extends h {
    protected WebAuthorizeActivity activity;
    protected String authorizeUrl;
    protected AuthorizeListener listener;
    protected String redirectUri;

    public b(WebAuthorizeActivity webAuthorizeActivity) {
        this.activity = webAuthorizeActivity;
        AuthorizeHelper helper = webAuthorizeActivity.getHelper();
        this.authorizeUrl = helper.getAuthorizeUrl();
        this.redirectUri = helper.getRedirectUri();
        this.listener = helper.getAuthorizeListener();
    }

    protected abstract void onComplete(String str);

    @Override // cn.sharesdk.framework.h, android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        webView.stopLoading();
        AuthorizeListener authorizeListener = this.activity.getHelper().getAuthorizeListener();
        this.activity.finish();
        if (authorizeListener != null) {
            authorizeListener.onError(new Throwable(str + " (" + i10 + "): " + str2));
        }
    }
}
