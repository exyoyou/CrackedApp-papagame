package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;

/* JADX INFO: loaded from: classes7.dex */
public class g extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2993c;

    @Override // cn.sharesdk.wechat.utils.m
    public int a() {
        return 18;
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putInt("_wxapi_subscribemessage_req_scene", this.f2991a);
        bundle.putString("_wxapi_subscribemessage_req_templateid", this.f2992b);
        bundle.putString("_wxapi_subscribemessage_req_reserved", this.f2993c);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f2991a = bundle.getInt("_wxapi_subscribemessage_req_scene");
        this.f2992b = bundle.getString("_wxapi_subscribemessage_req_templateid");
        this.f2993c = bundle.getString("_wxapi_subscribemessage_req_reserved");
    }

    @Override // cn.sharesdk.wechat.utils.m
    public boolean b() {
        String str = this.f2992b;
        if (str != null && str.length() != 0) {
            if (this.f2992b.length() > 1024) {
                SSDKLog.b().d(OnekeyShare.SHARESDK_TAG, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, templateID is too long");
                return false;
            }
            String str2 = this.f2993c;
            if (str2 == null || str2.length() <= 1024) {
                return true;
            }
            SSDKLog.b().d(OnekeyShare.SHARESDK_TAG, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, reserved is too long");
            return false;
        }
        SSDKLog.b().d(OnekeyShare.SHARESDK_TAG, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, templateID is null");
        return false;
    }
}
