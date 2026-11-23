package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
class BaseBitrateAdjuster implements BitrateAdjuster {
    protected int targetBitrateBps;
    protected double targetFramerateFps;

    BaseBitrateAdjuster() {
    }

    @Override // org.hmwebrtc.BitrateAdjuster
    public int getAdjustedBitrateBps() {
        return this.targetBitrateBps;
    }

    @Override // org.hmwebrtc.BitrateAdjuster
    public double getAdjustedFramerateFps() {
        return this.targetFramerateFps;
    }

    @Override // org.hmwebrtc.BitrateAdjuster
    public void reportEncodedFrame(int i10) {
    }

    @Override // org.hmwebrtc.BitrateAdjuster
    public void setTargets(int i10, double d10) {
        this.targetBitrateBps = i10;
        this.targetFramerateFps = d10;
    }
}
