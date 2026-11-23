package com.baidu.oauth.sdkbqt.auth;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: loaded from: classes6.dex */
class v implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ JsResult f8247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ u f8248b;

    v(u uVar, JsResult jsResult) {
        this.f8248b = uVar;
        this.f8247a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        this.f8247a.confirm();
    }
}
