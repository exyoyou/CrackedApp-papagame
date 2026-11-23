package com.switfpass.pay.activity.zxing.camera;

import android.hardware.Camera;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
final class c implements Camera.AutoFocusCallback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f82587c = "c";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f82588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f82589b;

    c() {
    }

    final void a(Handler handler, int i10) {
        this.f82588a = handler;
        this.f82589b = i10;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public final void onAutoFocus(boolean z10, Camera camera) {
        Handler handler = this.f82588a;
        if (handler != null) {
            this.f82588a.sendMessageDelayed(handler.obtainMessage(this.f82589b, Boolean.valueOf(z10)), 1500L);
            this.f82588a = null;
        }
    }
}
