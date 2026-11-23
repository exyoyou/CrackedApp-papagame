package com.switfpass.pay.activity;

import android.content.Intent;
import com.switfpass.pay.bean.OrderBena;

/* JADX INFO: loaded from: classes2.dex */
final class f extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ QQWapPayWebView f82515a;

    f(QQWapPayWebView qQWapPayWebView) {
        this.f82515a = qQWapPayWebView;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        Intent intent = new Intent();
        intent.putExtra("resultCode", "NOTPAY");
        this.f82515a.setResult(-1, intent);
        this.f82515a.finish();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        if (orderBena != null) {
            Intent intent = new Intent();
            intent.putExtra("resultCode", orderBena.getStatus());
            this.f82515a.setResult(-1, intent);
        } else {
            Intent intent2 = new Intent();
            intent2.putExtra("resultCode", "NOTPAY");
            this.f82515a.setResult(-1, intent2);
        }
        this.f82515a.finish();
    }
}
