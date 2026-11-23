package com.switfpass.pay.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes2.dex */
final class g extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ QQWapPayWebView f82517a;

    public g(QQWapPayWebView qQWapPayWebView) {
        this.f82517a = qQWapPayWebView;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        try {
            QQWapPayWebView qQWapPayWebView = this.f82517a;
            qQWapPayWebView.b(true, "加载中...", qQWapPayWebView);
        } catch (Exception e10) {
            new StringBuilder("onPageStarted ").append(e10);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i10, String str, String str2) {
        super.onReceivedError(webView, i10, str, str2);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            QQWapPayWebView qQWapPayWebView = this.f82517a;
            qQWapPayWebView.b(true, "加载中...", qQWapPayWebView);
            Uri uri = Uri.parse(str);
            if (uri.getScheme().equals("mqqapi") && uri.getHost().equals("forward")) {
                this.f82517a.startActivity(new Intent("android.intent.action.VIEW", uri));
                return true;
            }
            if (uri.getScheme().equals("weixin") && uri.getHost().equals("wap")) {
                this.f82517a.startActivity(new Intent("android.intent.action.VIEW", uri));
                return true;
            }
            if (uri.getHost().equals("mclient.alipay.com")) {
                this.f82517a.startActivity(new Intent("android.intent.action.VIEW", uri));
                return true;
            }
            if (!uri.getHost().equals("mobilecodec.alipay.com")) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            this.f82517a.startActivity(new Intent("android.intent.action.VIEW", uri));
            return true;
        } catch (Exception e10) {
            new StringBuilder("shouldOverrideUrlLoading ").append(e10);
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }
}
