package com.heepay.plugin.c;

import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    public static Message a(int i10, com.heepay.plugin.domain.f fVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i10;
        messageObtain.obj = fVar.b();
        return messageObtain;
    }

    public static Message b(int i10, com.heepay.plugin.domain.f fVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i10;
        messageObtain.obj = fVar.c();
        return messageObtain;
    }

    public static Message a(int i10, Exception exc, String str) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i10;
        if (exc.getMessage() != null) {
            messageObtain.obj = exc.getMessage();
        } else {
            messageObtain.obj = str;
        }
        return messageObtain;
    }

    public static Message a(int i10, String str) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i10;
        messageObtain.obj = str;
        return messageObtain;
    }
}
