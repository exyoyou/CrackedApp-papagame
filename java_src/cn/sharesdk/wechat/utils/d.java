package cn.sharesdk.wechat.utils;

import android.os.Bundle;

/* JADX INFO: loaded from: classes7.dex */
public class d extends WechatResp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WXMediaMessage f2987a;

    public d(Bundle bundle) {
        a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public int a() {
        return 3;
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putAll(WXMediaMessage.a.a(this.f2987a));
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f2987a = WXMediaMessage.a.a(bundle);
    }
}
