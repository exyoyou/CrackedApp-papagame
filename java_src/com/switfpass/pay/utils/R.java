package com.switfpass.pay.utils;

import android.os.Message;
import com.alipay.sdk.app.PayTask;
import com.switfpass.pay.bean.OrderBena;

/* JADX INFO: loaded from: classes2.dex */
final class R extends Thread {
    private /* synthetic */ b0 dH;
    private final /* synthetic */ OrderBena dR;

    R(b0 b0Var, OrderBena orderBena) {
        this.dH = b0Var;
        this.dR = orderBena;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        String strPay = new PayTask(this.dH.f82745b).pay(this.dR.get_input_charset());
        new StringBuilder("result = ").append(strPay);
        Message message = new Message();
        message.what = 1;
        message.obj = strPay;
        this.dH.f82765v.sendMessage(message);
    }
}
