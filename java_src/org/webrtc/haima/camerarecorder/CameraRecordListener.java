package org.webrtc.haima.camerarecorder;

/* JADX INFO: loaded from: classes10.dex */
public interface CameraRecordListener {
    void onCameraThreadFinish();

    void onError(Exception exc);

    void onGetFlashSupport(boolean z10);

    void onRecordComplete();

    void onRecordStart();
}
