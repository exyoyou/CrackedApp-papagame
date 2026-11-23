package com.zxing.android.camera;

import android.hardware.Camera;
import android.os.Handler;

/* JADX INFO: loaded from: classes8.dex */
final class a implements Camera.AutoFocusCallback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f90426c = "a";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f90427d = 1500;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f90428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f90429b;

    a() {
    }

    void a(Handler autoFocusHandler, int autoFocusMessage) {
        this.f90428a = autoFocusHandler;
        this.f90429b = autoFocusMessage;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public void onAutoFocus(boolean success, Camera camera) {
        Handler handler = this.f90428a;
        if (handler != null) {
            this.f90428a.sendMessageDelayed(handler.obtainMessage(this.f90429b, Boolean.valueOf(success)), f90427d);
            this.f90428a = null;
        }
    }
}
