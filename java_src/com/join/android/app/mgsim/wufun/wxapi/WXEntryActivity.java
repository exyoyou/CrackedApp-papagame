package com.join.android.app.mgsim.wufun.wxapi;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import cn.sharesdk.wechat.utils.WXAppExtendObject;
import cn.sharesdk.wechat.utils.WXMediaMessage;
import cn.sharesdk.wechat.utils.WechatHandlerActivity;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.t2;
import com.switfpass.pay.utils.e;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.net.URLDecoder;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class WXEntryActivity extends WechatHandlerActivity implements IWXAPIEventHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IWXAPI f48494b;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f48495b;

        a(final IntentDateBean val$intentDateBean) {
            this.f48495b = val$intentDateBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            IntentUtil.getInstance().checkAndStartMain(WXEntryActivity.this, this.f48495b, 603979776);
        }
    }

    @Override // cn.sharesdk.wechat.utils.WechatHandlerActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(this, e.f82770a, false);
        this.f48494b = iwxapiCreateWXAPI;
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
        WXAppExtendObject wXAppExtendObject;
        if (msg == null || (iMediaObject = msg.mediaObject) == null || !(iMediaObject instanceof WXAppExtendObject) || (wXAppExtendObject = (WXAppExtendObject) iMediaObject) == null) {
            return;
        }
        String str = wXAppExtendObject.extInfo;
        if (t2.i(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("type") && jSONObject.optInt("type") == 1 && jSONObject.has("data")) {
                    String string = jSONObject.getString("data");
                    if (t2.i(string)) {
                        Uri uri = Uri.parse(string);
                        IntentDateBean intentDateBean = new IntentDateBean();
                        intentDateBean.setLink_type(3);
                        intentDateBean.setJump_type(1);
                        if (uri != null) {
                            try {
                                String queryParameter = uri.getQueryParameter("link_type");
                                String queryParameter2 = uri.getQueryParameter("jump_type");
                                String queryParameter3 = uri.getQueryParameter("link_type_val");
                                String queryParameter4 = uri.getQueryParameter("crc_link_type_val");
                                String queryParameter5 = uri.getQueryParameter("tpl_type");
                                String queryParameter6 = uri.getQueryParameter("object");
                                intentDateBean.setLink_type(Integer.parseInt(queryParameter));
                                intentDateBean.setJump_type(Integer.parseInt(queryParameter2));
                                intentDateBean.setLink_type_val(queryParameter3);
                                intentDateBean.setCrc_link_type_val(URLDecoder.decode(queryParameter4));
                                intentDateBean.setTpl_type(queryParameter5);
                                intentDateBean.setObject(queryParameter6);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        new Handler().postDelayed(new a(intentDateBean), 500L);
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }
}
