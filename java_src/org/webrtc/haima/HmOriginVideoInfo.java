package org.webrtc.haima;

/* JADX INFO: loaded from: classes10.dex */
public class HmOriginVideoInfo {
    private int decodeVariance;
    private int frameRateDecode;
    private int frameRateReceived;
    private int frameRateRendered;
    private final TimeDiffStatistics freezeCount;
    private final TimeDiffStatistics freezeDuration;
    private final TimeDiffStatistics jankCount;
    private final TimeDiffStatistics jankDuration;
    private int renderVariance;

    private static class TimeDiffStatistics {
        private long lastUpdateTime;
        private long lastValue;
        private long value;

        private TimeDiffStatistics() {
            this.lastUpdateTime = System.currentTimeMillis();
        }

        public long getDiff() {
            return this.value - this.lastValue;
        }

        public long getDiffValuePerSec() {
            if (this.value < 0) {
                return -1L;
            }
            return ((this.value - this.lastValue) * 1000) / Math.max(System.currentTimeMillis() - this.lastUpdateTime, 1000L);
        }

        public long getLastUpdateTime() {
            return this.lastUpdateTime;
        }

        public long getValue() {
            return this.value;
        }

        public void setValue(long j10) {
            this.lastUpdateTime = System.currentTimeMillis();
            this.lastValue = this.value;
            this.value = j10;
        }
    }

    public HmOriginVideoInfo() {
        this.freezeCount = new TimeDiffStatistics();
        this.jankCount = new TimeDiffStatistics();
        this.freezeDuration = new TimeDiffStatistics();
        this.jankDuration = new TimeDiffStatistics();
    }

    public long getFreezeCountPerSec() {
        return this.freezeCount.getDiffValuePerSec();
    }

    public long getJankCountPerSec() {
        return this.jankCount.getDiffValuePerSec();
    }

    public long getJankDurationPerSec() {
        if (this.jankDuration.getDiffValuePerSec() < 0 || this.freezeDuration.getDiffValuePerSec() < 0) {
            return -1L;
        }
        return this.jankDuration.getDiffValuePerSec() + this.freezeDuration.getDiffValuePerSec();
    }

    public String getReportString() {
        long value = this.freezeDuration.getValue() + this.jankDuration.getValue();
        if (value < 0) {
            value = -1;
        }
        return "|" + this.frameRateReceived + "|" + this.frameRateDecode + "|" + this.frameRateRendered + "|" + this.freezeCount.getValue() + "|" + this.jankCount.getValue() + "|" + value + "|" + this.decodeVariance + "|" + this.renderVariance + "|" + getFreezeCountPerSec() + "|" + getJankCountPerSec() + "|" + getJankDurationPerSec();
    }

    public void setDecodeVariance(int i10) {
        this.decodeVariance = i10;
    }

    public void setFrameRateDecode(int i10) {
        this.frameRateDecode = i10;
    }

    public void setFrameRateReceived(int i10) {
        this.frameRateReceived = i10;
    }

    public void setFrameRateRendered(int i10) {
        this.frameRateRendered = i10;
    }

    public void setFreezeCount(long j10) {
        this.freezeCount.setValue(j10);
    }

    public void setFreezeDuration(long j10) {
        this.freezeDuration.setValue(j10);
    }

    public void setJankCount(long j10) {
        this.jankCount.setValue(j10);
    }

    public void setJankDuration(long j10) {
        this.jankDuration.setValue(j10);
    }

    public void setRenderVariance(int i10) {
        this.renderVariance = i10;
    }
}
