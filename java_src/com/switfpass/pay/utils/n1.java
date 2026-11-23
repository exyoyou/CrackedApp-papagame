package com.switfpass.pay.utils;

import android.text.TextUtils;
import android.widget.Toast;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;

/* JADX INFO: loaded from: classes2.dex */
final class n1 extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ b0 f82821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82822b;

    n1(b0 b0Var, RequestMsg requestMsg) {
        this.f82821a = b0Var;
        this.f82822b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        this.f82821a.l();
        if (obj != null) {
            try {
                this.f82821a.f82745b.runOnUiThread(new o1(this, obj));
                d8.a.b(9, -1, obj.toString());
            } catch (Exception e10) {
                new StringBuilder().append(e10);
            }
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        b0 b0Var = this.f82821a;
        b0Var.v(b0Var.f82745b, true, "请稍候，正在请求QQ钱包H5支付..");
        super.onPreExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        this.f82821a.l();
        if (orderBena != null) {
            try {
                d8.a.b(9, 0, "success");
                if (!b0.o(this.f82821a.f82745b)) {
                    Toast.makeText(this.f82821a.f82745b, "手机QQ没有安装，请先安装手机QQ", 0).show();
                    return;
                }
                if (!TextUtils.isEmpty(orderBena.getOutTradeNo())) {
                    this.f82822b.setOutTradeNo(orderBena.getOutTradeNo());
                }
                QQWapPayWebView.startActivity(this.f82821a.f82745b, orderBena.getUuId(), this.f82822b.getTokenId(), this.f82822b.getOutTradeNo());
            } catch (Exception e10) {
                new StringBuilder("qqWapPays ").append(e10);
            }
        }
    }
}
