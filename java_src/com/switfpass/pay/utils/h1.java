package com.switfpass.pay.utils;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
final class h1 extends Handler {
    h1() {
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10;
        String str;
        if (message.what != 1) {
            return;
        }
        String strD = new com.switfpass.pay.activity.q((String) message.obj).d();
        new StringBuilder("resultStatus-->").append(strD);
        if (TextUtils.equals(strD, "9000")) {
            i10 = 0;
            str = "支付成功";
        } else if (!TextUtils.equals(strD, "8000")) {
            d8.a.b(1, 1, "支付失败，原因包括用户主动取消支付，或者系统返回的错误");
            return;
        } else {
            i10 = 2;
            str = "支付结果待确认中，最终交易是否成功以服务端异步通知为准";
        }
        d8.a.b(1, i10, str);
    }
}
