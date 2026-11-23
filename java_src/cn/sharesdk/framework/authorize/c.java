package cn.sharesdk.framework.authorize;

import android.content.Intent;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected SSOAuthorizeActivity f2616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f2617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected SSOListener f2618c;

    public c(SSOAuthorizeActivity sSOAuthorizeActivity) {
        this.f2616a = sSOAuthorizeActivity;
        this.f2618c = sSOAuthorizeActivity.getHelper().getSSOListener();
    }

    public abstract void a();

    public void a(int i10, int i11, Intent intent) {
    }

    protected void a(Intent intent) {
    }

    public void a(int i10) {
        this.f2617b = i10;
    }
}
