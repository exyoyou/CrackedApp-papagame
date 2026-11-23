package com.join.mgps.zxing.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;

/* JADX INFO: loaded from: classes3.dex */
final class g implements Camera.PreviewCallback {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f73453e = "g";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f73454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f73455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f73456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73457d;

    g(b configManager, boolean useOneShotPreviewCallback) {
        this.f73454a = configManager;
        this.f73455b = useOneShotPreviewCallback;
    }

    void a(Handler previewHandler, int previewMessage) {
        this.f73456c = previewHandler;
        this.f73457d = previewMessage;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] data, Camera camera) {
        Point pointC = this.f73454a.c();
        if (!this.f73455b) {
            camera.setPreviewCallback(null);
        }
        Handler handler = this.f73456c;
        if (handler != null) {
            handler.obtainMessage(this.f73457d, pointC.x, pointC.y, data).sendToTarget();
            this.f73456c = null;
        }
    }
}
