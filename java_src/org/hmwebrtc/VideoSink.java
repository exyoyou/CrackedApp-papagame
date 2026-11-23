package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public interface VideoSink {
    @CalledByNative
    void onFrame(VideoFrame videoFrame);
}
