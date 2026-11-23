package com.baidu.oauth.sdkbqt.view;

import android.content.Intent;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
class d implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f8276a;

    d(a aVar) {
        this.f8276a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("android.settings.SETTINGS");
        intent.setFlags(270532608);
        this.f8276a.startActivity(intent);
    }
}
