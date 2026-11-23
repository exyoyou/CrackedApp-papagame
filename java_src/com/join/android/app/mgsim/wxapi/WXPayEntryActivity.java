package com.join.android.app.mgsim.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.join.android.app.mgsim.wufun.R;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import p5.a;

/* JADX INFO: loaded from: classes4.dex */
public class WXPayEntryActivity extends Activity implements IWXAPIEventHandler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f48500c = "WXPayEntryActivity";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IWXAPI f48501b;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pay_result);
        IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(this, "wx5e0a2e02d261de17");
        this.f48501b = iwxapiCreateWXAPI;
        iwxapiCreateWXAPI.handleIntent(getIntent(), this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.f48501b.handleIntent(intent, this);
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq req) {
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp resp) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("悟饭 onPayFinish, errCode = ");
        sb2.append(resp.errCode);
        if (resp.getType() == 5) {
            int i10 = resp.errCode;
            Intent intent = new Intent();
            intent.setAction(a.L);
            intent.putExtra("out_trade_no", getPackageName());
            if (i10 == 0) {
                intent.putExtra("return_code", "SUCCESS");
                intent.putExtra("return_msg", "支付成功");
            } else if (i10 == -2) {
                intent.putExtra("return_code", "CANCEL");
                intent.putExtra("return_msg", "取消支付");
            } else {
                intent.putExtra("return_code", "FAIL");
                intent.putExtra("return_msg", "微信客户端返回错误");
            }
            LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
            finish();
        }
    }
}
