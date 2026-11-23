package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;

/* JADX INFO: loaded from: classes7.dex */
public class b extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2979c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f2980d;

    @Override // cn.sharesdk.wechat.utils.m
    public int a() {
        return 1;
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putString("_wxapi_sendauth_req_scope", this.f2977a);
        bundle.putString("_wxapi_sendauth_req_state", this.f2978b);
        bundle.putString("_wxapi_sendauth_req_ext_data", this.f2979c);
        a aVar = this.f2980d;
        if (aVar != null) {
            aVar.a(bundle);
        }
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f2977a = bundle.getString("_wxapi_sendauth_req_scope");
        this.f2978b = bundle.getString("_wxapi_sendauth_req_state");
        this.f2979c = bundle.getString("_wxapi_sendauth_req_ext_data");
        a aVar = new a();
        this.f2980d = aVar;
        aVar.b(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public boolean b() {
        String str = this.f2977a;
        if (str != null && str.length() != 0 && this.f2977a.length() <= 1024) {
            String str2 = this.f2978b;
            if (str2 == null || str2.length() <= 1024) {
                return true;
            }
            SSDKLog.b().a("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, state is invalid");
            return false;
        }
        SSDKLog.b().a("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, scope is invalid");
        return false;
    }
}
