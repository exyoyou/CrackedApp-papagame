package com.switfpass.pay.utils;

import android.text.TextUtils;
import android.widget.Toast;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;

/* JADX INFO: loaded from: classes2.dex */
final class l1 extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ b0 f82812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82813b;

    l1(b0 b0Var, RequestMsg requestMsg) {
        this.f82812a = b0Var;
        this.f82813b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        this.f82812a.f82755l.dismiss();
        if (this.f82812a.f82761r != null) {
            this.f82812a.f82761r.dismiss();
        }
        if (this.f82812a.f82762s) {
            this.f82812a.f82762s = true;
            super.onError(obj);
            if (obj != null) {
                this.f82812a.f82745b.runOnUiThread(new m1(this, obj));
            }
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        h.e(this.f82812a.f82745b, this.f82812a.f82755l);
        this.f82812a.f82755l.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        this.f82812a.f82755l.dismiss();
        if (this.f82812a.f82761r != null) {
            this.f82812a.f82761r.dismiss();
        }
        if (orderBena == null || !this.f82812a.f82762s) {
            this.f82812a.f82762s = true;
            return;
        }
        if (!TextUtils.isEmpty(orderBena.getOutTradeNo())) {
            this.f82813b.setOutTradeNo(orderBena.getOutTradeNo());
        }
        if (b0.i(this.f82812a.f82745b)) {
            QQWapPayWebView.startActivity(this.f82812a.f82745b, orderBena.getUuId(), this.f82813b.getTokenId(), this.f82813b.getOutTradeNo());
        } else {
            Toast.makeText(this.f82812a.f82745b, "手机没有安装微信，请先安装微信", 0).show();
        }
    }
}
