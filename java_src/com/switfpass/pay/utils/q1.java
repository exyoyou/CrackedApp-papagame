package com.switfpass.pay.utils;

import android.text.TextUtils;
import android.widget.Toast;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;

/* JADX INFO: loaded from: classes2.dex */
final class q1 extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ b0 f82835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82836b;

    q1(b0 b0Var, RequestMsg requestMsg) {
        this.f82835a = b0Var;
        this.f82836b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        this.f82835a.f82755l.dismiss();
        if (this.f82835a.f82761r != null) {
            this.f82835a.f82761r.dismiss();
        }
        if (this.f82835a.f82762s) {
            this.f82835a.f82762s = true;
            super.onError(obj);
            if (obj != null) {
                this.f82835a.f82745b.runOnUiThread(new r1(this, obj));
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
        h.e(this.f82835a.f82745b, this.f82835a.f82755l);
        this.f82835a.f82755l.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        this.f82835a.f82755l.dismiss();
        if (this.f82835a.f82761r != null) {
            this.f82835a.f82761r.dismiss();
        }
        if (orderBena == null || !this.f82835a.f82762s) {
            this.f82835a.f82762s = true;
        } else {
            if (!b0.o(this.f82835a.f82745b)) {
                Toast.makeText(this.f82835a.f82745b, "手机QQ没有安装，请先安装手机QQ", 0).show();
                return;
            }
            if (!TextUtils.isEmpty(orderBena.getOutTradeNo())) {
                this.f82836b.setOutTradeNo(orderBena.getOutTradeNo());
            }
            QQWapPayWebView.startActivity(this.f82835a.f82745b, orderBena.getUuId(), this.f82836b.getTokenId(), this.f82836b.getOutTradeNo());
        }
    }
}
