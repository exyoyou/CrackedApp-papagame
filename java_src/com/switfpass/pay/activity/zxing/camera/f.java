package com.switfpass.pay.activity.zxing.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
final class f implements Camera.PreviewCallback {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f82600e = "f";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f82601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f82602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f82603c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f82604d;

    f(d dVar, boolean z10) {
        this.f82601a = dVar;
        this.f82602b = z10;
    }

    final void a(Handler handler, int i10) {
        this.f82603c = handler;
        this.f82604d = i10;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        Point pointF = this.f82601a.f();
        if (!this.f82602b) {
            camera.setPreviewCallback(null);
        }
        Handler handler = this.f82603c;
        if (handler != null) {
            handler.obtainMessage(this.f82604d, pointF.x, pointF.y, bArr).sendToTarget();
            this.f82603c = null;
        }
    }
}
