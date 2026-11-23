package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
class FramerateBitrateAdjuster extends BaseBitrateAdjuster {
    private static final int DEFAULT_FRAMERATE_FPS = 30;

    FramerateBitrateAdjuster() {
    }

    @Override // org.hmwebrtc.BaseBitrateAdjuster, org.hmwebrtc.BitrateAdjuster
    public void setTargets(int i10, double d10) {
        this.targetFramerateFps = 30.0d;
        this.targetBitrateBps = (int) (((double) (i10 * 30)) / d10);
    }
}
