package com.switfpass.pay.activity;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.Toast;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.RequestMsg;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class e0 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ProgressDialog f82513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ PayPlugin f82514b;

    public e0(PayPlugin payPlugin) {
        this.f82514b = payPlugin;
    }

    private Map a() {
        String strE = PayPlugin.e(this.f82514b);
        new StringBuilder("doInBackground, url = ").append("https://pay.swiftpass.cn/pay/gateway");
        new StringBuilder("doInBackground, entity = ").append(strE);
        com.switfpass.pay.service.b bVar = new com.switfpass.pay.service.b();
        byte[] bArrN = com.switfpass.pay.utils.l0.n("https://pay.swiftpass.cn/pay/gateway", strE);
        if (bArrN != null && bArrN.length != 0) {
            String str = new String(bArrN);
            new StringBuilder("doInBackground, content = ").append(str);
            bVar.a(str);
            try {
                return com.switfpass.pay.utils.p0.a(str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        return a();
    }

    @Override // android.os.AsyncTask
    protected final void onCancelled() {
        super.onCancelled();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        Map map = (Map) obj;
        ProgressDialog progressDialog = this.f82513a;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        if (map == null || !((String) map.get("status")).equals("0")) {
            PayPlugin payPlugin = this.f82514b;
            Toast.makeText(payPlugin, payPlugin.getString(com.join.android.app.mgsim.wufun.R.drawable._ic_launcher_foreground__0_res_0x7f080006), 1).show();
            return;
        }
        Toast.makeText(this.f82514b, com.join.android.app.mgsim.wufun.R.drawable._avd_show_password__2_res_0x7f080005, 1).show();
        String str = (String) map.get("services");
        RequestMsg requestMsg = new RequestMsg();
        requestMsg.setTokenId((String) map.get("token_id"));
        requestMsg.setServerType(str);
        requestMsg.setAppId("wx2a5538052969956e");
        requestMsg.setMoney(1.0d);
        requestMsg.setTradeType(MainApplication.f82464x);
        PayPlugin.k(this.f82514b, requestMsg);
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        PayPlugin payPlugin = this.f82514b;
        this.f82513a = ProgressDialog.show(payPlugin, "", payPlugin.getString(com.join.android.app.mgsim.wufun.R.drawable._m3_avd_hide_password__0_res_0x7f080007));
    }
}
