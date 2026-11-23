package cn.sharesdk.framework;

import cn.sharesdk.framework.authorize.AuthorizeHelper;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f implements AuthorizeHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Platform f2639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AuthorizeListener f2640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SSOListener f2641c;

    public f(Platform platform) {
        this.f2639a = platform;
    }

    protected void a(SSOListener sSOListener) {
        this.f2641c = sSOListener;
        SSOAuthorizeActivity sSOAuthorizeActivity = new SSOAuthorizeActivity();
        sSOAuthorizeActivity.setSSOListener(sSOListener);
        sSOAuthorizeActivity.show(this);
    }

    public int b() {
        return this.f2639a.getPlatformId();
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public AuthorizeListener getAuthorizeListener() {
        return this.f2640b;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public Platform getPlatform() {
        return this.f2639a;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public SSOListener getSSOListener() {
        return this.f2641c;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public cn.sharesdk.framework.authorize.c getSSOProcessor(SSOAuthorizeActivity sSOAuthorizeActivity) {
        return null;
    }

    protected void b(AuthorizeListener authorizeListener) {
        this.f2640b = authorizeListener;
        WebAuthorizeActivity webAuthorizeActivity = new WebAuthorizeActivity();
        webAuthorizeActivity.setAuthorizeListener(this.f2640b);
        webAuthorizeActivity.show(this);
    }
}
