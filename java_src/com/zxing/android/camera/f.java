package com.zxing.android.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;

/* JADX INFO: loaded from: classes8.dex */
final class f implements Camera.PreviewCallback {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f90463d = "f";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f90464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f90465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f90466c;

    f(b configManager) {
        this.f90464a = configManager;
    }

    void a(Handler previewHandler, int previewMessage) {
        this.f90465b = previewHandler;
        this.f90466c = previewMessage;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] data, Camera camera) {
        Point pointD = this.f90464a.d();
        Handler handler = this.f90465b;
        if (handler != null) {
            handler.obtainMessage(this.f90466c, pointD.x, pointD.y, data).sendToTarget();
            this.f90465b = null;
        }
    }
}
