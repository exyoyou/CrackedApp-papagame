package com.join.mgps.zxing.camera;

import android.hardware.Camera;
import android.os.Handler;

/* JADX INFO: loaded from: classes3.dex */
final class a implements Camera.AutoFocusCallback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f73403c = "a";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f73404d = 1500;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f73405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f73406b;

    a() {
    }

    void a(Handler autoFocusHandler, int autoFocusMessage) {
        this.f73405a = autoFocusHandler;
        this.f73406b = autoFocusMessage;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public void onAutoFocus(boolean success, Camera camera) {
        Handler handler = this.f73405a;
        if (handler != null) {
            this.f73405a.sendMessageDelayed(handler.obtainMessage(this.f73406b, Boolean.valueOf(success)), f73404d);
            this.f73405a = null;
        }
    }
}
