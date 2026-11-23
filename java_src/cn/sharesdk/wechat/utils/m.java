package cn.sharesdk.wechat.utils;

import android.os.Bundle;

/* JADX INFO: loaded from: classes7.dex */
public abstract class m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f3085e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f3086f;

    public abstract int a();

    public void a(Bundle bundle) {
        this.f3085e = n.a(bundle, "_wxapi_basereq_transaction");
        this.f3086f = n.a(bundle, "_wxapi_basereq_openid");
    }

    public void b(Bundle bundle) {
        bundle.putInt("_wxapi_command_type", a());
        bundle.putString("_wxapi_basereq_transaction", this.f3085e);
        bundle.putString("_wxapi_basereq_openid", this.f3086f);
    }

    public abstract boolean b();
}
