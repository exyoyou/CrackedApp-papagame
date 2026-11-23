package com.alipay.sdk.util;

import android.app.Activity;

/* JADX INFO: loaded from: classes7.dex */
final class l implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Activity f7250b;

    l(Activity activity) {
        this.f7250b = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7250b.finish();
    }
}
