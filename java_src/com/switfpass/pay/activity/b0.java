package com.switfpass.pay.activity;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
final class b0 extends Handler {
    b0() {
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == -1) {
            new StringBuilder().append(message.obj);
        } else {
            if (i10 != 0) {
                return;
            }
            new StringBuilder().append(message.obj);
        }
    }
}
