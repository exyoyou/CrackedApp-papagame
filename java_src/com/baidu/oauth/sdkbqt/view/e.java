package com.baidu.oauth.sdkbqt.view;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
class e implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f8277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f8278b;

    e(a aVar, View view) {
        this.f8278b = aVar;
        this.f8277a = view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f8278b.runOnUiThread(new f(this));
    }
}
