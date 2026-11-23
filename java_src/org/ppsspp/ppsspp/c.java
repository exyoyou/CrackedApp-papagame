package org.ppsspp.ppsspp;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.YuvImage;
import android.hardware.Camera;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
@TargetApi(23)
class c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f95926g = "CameraHelper";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Camera f95927a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f95928b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f95929c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f95930d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Camera.PreviewCallback f95932f = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SurfaceTexture f95931e = new SurfaceTexture(10);

    class a implements Camera.PreviewCallback {
        a() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - c.this.f95930d < 100) {
                return;
            }
            c.this.f95930d = jCurrentTimeMillis;
            YuvImage yuvImage = new YuvImage(bArr, 17, c.this.f95928b, c.this.f95929c, null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect((c.this.f95928b - 480) / 2, (c.this.f95929c - 272) / 2, c.this.f95928b - ((c.this.f95928b - 480) / 2), c.this.f95929c - ((c.this.f95929c - 272) / 2)), 80, byteArrayOutputStream);
            NativeApp.pushCameraImage(byteArrayOutputStream.toByteArray());
        }
    }

    c(Context context) {
    }

    void e() {
        try {
            Camera cameraOpen = Camera.open();
            this.f95927a = cameraOpen;
            Camera.Parameters parameters = cameraOpen.getParameters();
            List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
            this.f95928b = supportedPreviewSizes.get(0).width;
            this.f95929c = supportedPreviewSizes.get(0).height;
            for (int i10 = 0; i10 < supportedPreviewSizes.size(); i10++) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("getSupportedPreviewSizes[");
                sb2.append(i10);
                sb2.append("]: ");
                sb2.append(supportedPreviewSizes.get(i10).height);
                sb2.append(" ");
                sb2.append(supportedPreviewSizes.get(i10).width);
                if (supportedPreviewSizes.get(i10).width <= 640 && supportedPreviewSizes.get(i10).height <= 480) {
                    this.f95928b = supportedPreviewSizes.get(i10).width;
                    this.f95929c = supportedPreviewSizes.get(i10).height;
                    break;
                }
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("setPreviewSize(");
            sb3.append(this.f95928b);
            sb3.append(", ");
            sb3.append(this.f95929c);
            sb3.append(")");
            parameters.setPreviewSize(this.f95928b, this.f95929c);
            List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
            int[] iArr = supportedPreviewFpsRange.get(0);
            for (int i11 = 0; i11 < supportedPreviewFpsRange.size(); i11++) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("getSupportedPreviewFpsRange[");
                sb4.append(i11);
                sb4.append("]: ");
                sb4.append(supportedPreviewFpsRange.get(i11)[0]);
                sb4.append(" ");
                sb4.append(supportedPreviewFpsRange.get(i11)[1]);
                if (supportedPreviewFpsRange.get(i11)[0] <= iArr[0] && supportedPreviewFpsRange.get(i11)[1] <= iArr[1]) {
                    iArr = supportedPreviewFpsRange.get(i11);
                }
            }
            StringBuilder sb5 = new StringBuilder();
            sb5.append("setPreviewFpsRange(");
            sb5.append(iArr[0]);
            sb5.append(", ");
            sb5.append(iArr[1]);
            sb5.append(")");
            parameters.setPreviewFpsRange(iArr[0], iArr[1]);
            this.f95927a.setParameters(parameters);
            this.f95927a.setPreviewTexture(this.f95931e);
            this.f95927a.setPreviewCallback(this.f95932f);
            this.f95927a.startPreview();
        } catch (IOException e10) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Cannot start camera: ");
            sb6.append(e10.toString());
        }
    }

    void f() {
        Camera camera = this.f95927a;
        if (camera != null) {
            camera.setPreviewCallback(null);
            this.f95927a.stopPreview();
            this.f95927a.release();
            this.f95927a = null;
        }
    }
}
