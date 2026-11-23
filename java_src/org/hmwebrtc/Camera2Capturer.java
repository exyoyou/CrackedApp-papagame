package org.hmwebrtc;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.camera2.CameraManager;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@TargetApi(21)
public class Camera2Capturer extends CameraCapturer {

    @Nullable
    private final CameraManager cameraManager;
    private final Context context;

    public Camera2Capturer(Context context, String str, CameraVideoCapturer.CameraEventsHandler cameraEventsHandler) {
        super(str, cameraEventsHandler, new Camera2Enumerator(context));
        this.context = context;
        this.cameraManager = (CameraManager) context.getSystemService("camera");
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void changeCaptureFormat(int i10, int i11, int i12) {
        super.changeCaptureFormat(i10, i11, i12);
    }

    @Override // org.hmwebrtc.CameraCapturer
    protected void createCameraSession(CameraSession.CreateSessionCallback createSessionCallback, CameraSession.Events events, Context context, SurfaceTextureHelper surfaceTextureHelper, String str, int i10, int i11, int i12) {
        Camera2Session.create(createSessionCallback, events, context, this.cameraManager, surfaceTextureHelper, str, i10, i11, i12);
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void dispose() {
        super.dispose();
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void initialize(SurfaceTextureHelper surfaceTextureHelper, Context context, CapturerObserver capturerObserver) {
        super.initialize(surfaceTextureHelper, context, capturerObserver);
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.VideoCapturer
    public /* bridge */ /* synthetic */ boolean isScreencast() {
        return super.isScreencast();
    }

    @Override // org.hmwebrtc.CameraCapturer
    public /* bridge */ /* synthetic */ void printStackTrace() {
        super.printStackTrace();
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void startCapture(int i10, int i11, int i12) {
        super.startCapture(i10, i11, i12);
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.CameraVideoCapturer
    public /* bridge */ /* synthetic */ void startCaptureWithSpecifiedCamera(CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler, int i10, int i11, int i12, String str) {
        super.startCaptureWithSpecifiedCamera(cameraSwitchHandler, i10, i11, i12, str);
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.VideoCapturer
    public /* bridge */ /* synthetic */ void stopCapture() {
        super.stopCapture();
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.CameraVideoCapturer
    public /* bridge */ /* synthetic */ void switchCamera(CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler) {
        super.switchCamera(cameraSwitchHandler);
    }

    @Override // org.hmwebrtc.CameraCapturer, org.hmwebrtc.CameraVideoCapturer
    public /* bridge */ /* synthetic */ void switchCamera(CameraVideoCapturer.CameraSwitchHandler cameraSwitchHandler, String str) {
        super.switchCamera(cameraSwitchHandler, str);
    }
}
