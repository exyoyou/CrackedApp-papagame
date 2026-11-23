package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public class FrameInfoAndEvents {
    private static final String TAG = "FrameInfoAndEvents";
    private RendererCommon.RendererEvents rendererEvents = null;
    private boolean isFirstFrameRendered = false;
    private int rotatedFrameWidth = 0;
    private int rotatedFrameHeight = 0;
    private int frameRotation = 0;

    public void setRendererEvents(RendererCommon.RendererEvents rendererEvents) {
        this.rendererEvents = rendererEvents;
    }

    public void updateFrameDimensionsAndReportEvents(VideoFrame videoFrame) {
        if (!this.isFirstFrameRendered) {
            this.isFirstFrameRendered = true;
            Logging.d(TAG, "Reporting first rendered frame.");
            RendererCommon.RendererEvents rendererEvents = this.rendererEvents;
            if (rendererEvents != null) {
                rendererEvents.onFirstFrameRendered();
            }
        }
        if (this.rotatedFrameWidth == videoFrame.getRotatedWidth() && this.rotatedFrameHeight == videoFrame.getRotatedHeight() && this.frameRotation == videoFrame.getRotation()) {
            return;
        }
        Logging.d(TAG, "Reporting frame resolution changed to " + videoFrame.getBuffer().getWidth() + "x" + videoFrame.getBuffer().getHeight() + " with rotation " + videoFrame.getRotation());
        RendererCommon.RendererEvents rendererEvents2 = this.rendererEvents;
        if (rendererEvents2 != null) {
            rendererEvents2.onFrameResolutionChanged(videoFrame.getBuffer().getWidth(), videoFrame.getBuffer().getHeight(), videoFrame.getRotation());
        }
        this.rotatedFrameWidth = videoFrame.getRotatedWidth();
        this.rotatedFrameHeight = videoFrame.getRotatedHeight();
        this.frameRotation = videoFrame.getRotation();
    }
}
