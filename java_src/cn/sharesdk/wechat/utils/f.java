package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;

/* JADX INFO: loaded from: classes7.dex */
public class f extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WXMediaMessage f2988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2990c;

    public f(Bundle bundle) {
        a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public int a() {
        return 4;
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void b(Bundle bundle) {
        Bundle bundleA = WXMediaMessage.a.a(this.f2988a);
        super.b(bundleA);
        bundle.putString("_wxapi_showmessage_req_lang", this.f2989b);
        bundle.putString("_wxapi_showmessage_req_country", this.f2990c);
        bundle.putAll(bundleA);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f2989b = bundle.getString("_wxapi_showmessage_req_lang");
        this.f2990c = bundle.getString("_wxapi_showmessage_req_country");
        this.f2988a = WXMediaMessage.a.a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public boolean b() {
        WXMediaMessage wXMediaMessage = this.f2988a;
        if (wXMediaMessage == null) {
            SSDKLog.b().a("checkArgs fail, message is null", new Object[0]);
            return false;
        }
        return wXMediaMessage.a();
    }
}
