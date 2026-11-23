package cn.sharesdk.wechat.utils;

import android.os.Bundle;

/* JADX INFO: loaded from: classes7.dex */
public class c extends WechatResp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2986f = false;

    public c(Bundle bundle) {
        a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public int a() {
        return 1;
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putString("_wxapi_sendauth_resp_token", this.f2981a);
        bundle.putString("_wxapi_sendauth_resp_state", this.f2982b);
        bundle.putString("_wxapi_sendauth_resp_url", this.f2983c);
        bundle.putString("_wxapi_sendauth_resp_lang", this.f2984d);
        bundle.putString("_wxapi_sendauth_resp_country", this.f2985e);
        bundle.putBoolean("_wxapi_sendauth_resp_auth_result", this.f2986f);
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f2981a = bundle.getString("_wxapi_sendauth_resp_token");
        this.f2982b = bundle.getString("_wxapi_sendauth_resp_state");
        this.f2983c = bundle.getString("_wxapi_sendauth_resp_url");
        this.f2984d = bundle.getString("_wxapi_sendauth_resp_lang");
        this.f2985e = bundle.getString("_wxapi_sendauth_resp_country");
        this.f2986f = bundle.getBoolean("_wxapi_sendauth_resp_auth_result");
    }
}
