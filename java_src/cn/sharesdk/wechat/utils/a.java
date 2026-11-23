package cn.sharesdk.wechat.utils;

import android.os.Bundle;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2976b = -1;

    public void a(Bundle bundle) {
        bundle.putString("_wxapi_sendauth_options_callback_classname", this.f2975a);
        bundle.putInt("_wxapi_sendauth_options_callback_flags", this.f2976b);
    }

    public void b(Bundle bundle) {
        this.f2975a = n.a(bundle, "_wxapi_sendauth_options_callback_classname");
        this.f2976b = n.a(bundle, "_wxapi_sendauth_options_callback_flags", -1);
    }
}
