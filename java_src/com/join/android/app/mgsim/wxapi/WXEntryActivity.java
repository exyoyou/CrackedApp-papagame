package com.join.android.app.mgsim.wxapi;

import android.os.Bundle;
import android.widget.Toast;
import cn.sharesdk.wechat.utils.WXAppExtendObject;
import cn.sharesdk.wechat.utils.WXMediaMessage;
import cn.sharesdk.wechat.utils.WechatHandlerActivity;
import com.switfpass.pay.utils.e;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;

/* JADX INFO: loaded from: classes4.dex */
public class WXEntryActivity extends WechatHandlerActivity implements IWXAPIEventHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IWXAPI f48499b;

    @Override // cn.sharesdk.wechat.utils.WechatHandlerActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(this, e.f82770a, false);
        this.f48499b = iwxapiCreateWXAPI;
        try {
            iwxapiCreateWXAPI.handleIntent(getIntent(), this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // cn.sharesdk.wechat.utils.WechatHandlerActivity
    public void onGetMessageFromWXReq(WXMediaMessage msg) {
        if (msg != null) {
            startActivity(getPackageManager().getLaunchIntentForPackage(getPackageName()));
        }
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        if (baseResp.getType() == 19) {
            String str = ((WXLaunchMiniProgram.Resp) baseResp).extMsg;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append("  xxxxxxxxxxxxxx");
        }
    }

    @Override // cn.sharesdk.wechat.utils.WechatHandlerActivity
    public void onShowMessageFromWXReq(WXMediaMessage msg) {
        WXMediaMessage.IMediaObject iMediaObject;
        if (msg == null || (iMediaObject = msg.mediaObject) == null || !(iMediaObject instanceof WXAppExtendObject)) {
            return;
        }
        Toast.makeText(this, ((WXAppExtendObject) iMediaObject).extInfo, 0).show();
    }
}
