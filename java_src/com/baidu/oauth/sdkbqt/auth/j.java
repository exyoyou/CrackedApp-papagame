package com.baidu.oauth.sdkbqt.auth;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes6.dex */
class j extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8232a;

    j(i iVar) {
        this.f8232a = iVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 1) {
            this.f8232a.h();
        }
    }
}
