package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public interface CapturerObserver {
    void onCapturerStarted(boolean z10);

    void onCapturerStopped();

    void onFrameCaptured(VideoFrame videoFrame);
}
