package org.hmwebrtc;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class b1 {
    public static void a(VideoProcessor videoProcessor, VideoFrame videoFrame, VideoProcessor.FrameAdaptationParameters frameAdaptationParameters) {
        VideoFrame videoFrameB = b(videoFrame, frameAdaptationParameters);
        if (videoFrameB != null) {
            videoProcessor.onFrameCaptured(videoFrameB);
            videoFrameB.release();
        }
    }

    @Nullable
    public static VideoFrame b(VideoFrame videoFrame, VideoProcessor.FrameAdaptationParameters frameAdaptationParameters) {
        if (frameAdaptationParameters.drop) {
            return null;
        }
        return new VideoFrame(videoFrame.getBuffer().cropAndScale(frameAdaptationParameters.cropX, frameAdaptationParameters.cropY, frameAdaptationParameters.cropWidth, frameAdaptationParameters.cropHeight, frameAdaptationParameters.scaleWidth, frameAdaptationParameters.scaleHeight), videoFrame.getRotation(), frameAdaptationParameters.timestampNs, videoFrame.getTrackId(), videoFrame.getCaptureId(), videoFrame.getInputTimestampMs());
    }
}
