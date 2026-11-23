package com.baidu.oauth.sdkbqt.auth;

import android.app.Activity;

/* JADX INFO: loaded from: classes6.dex */
class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f8242a;

    q(i iVar) {
        this.f8242a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8242a.f8212p != null) {
            com.baidu.oauth.sdkbqt.a.h.a((Activity) this.f8242a.getContext());
            this.f8242a.f8212p.a();
        }
    }
}
