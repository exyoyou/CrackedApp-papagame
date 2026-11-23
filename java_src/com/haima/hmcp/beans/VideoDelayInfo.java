package com.haima.hmcp.beans;

import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class VideoDelayInfo extends AbsVideoDelayInfo {
    protected long bitRate;
    protected long clockDiffUse;
    protected int decodeDelay;
    protected int frameSize;
    protected int jankAndFreezeDuration;
    protected int netDelay;
    protected long realFrameRateOutput;
    protected int renderDelay;
    protected long timeStamp;
    protected long videoFps;
    protected long delayTime = 0;
    protected long nowDelayTime = 0;
    protected int receiveFrameCount = 0;
    protected long receiveFrameSize = 0;
    protected int gameFps = 0;
    protected int gameRealFps = 0;
    protected int frameRateEglRender = 0;
    protected int serverEncodeDelay = -1;
    protected int videoCaptureDelay = 0;
    protected int videoEncodeDelay = 0;
    protected int videoDecodeDelay = 0;
    protected int videoRenderDelay = 0;
    protected int audioCaptureDelay = 0;
    protected int audioEncodeDelay = 0;
    protected int audioDecodeDelay = 0;
    protected int audioRenderDelay = 0;
    protected int jitterDelay = 0;
    protected int haimaCpu = 0;
    protected int systemCpu = -1;
    protected int delayFromVideoCapToDecoded = -1;

    public static String formatedSize(long j10) {
        if (j10 >= 100000) {
            return String.format(Locale.US, "%.2f MB", Float.valueOf((j10 / 1000.0f) / 1000.0f));
        }
        return j10 >= 100 ? String.format(Locale.US, "%.1f KB", Float.valueOf(j10 / 1000.0f)) : String.format(Locale.US, "%d B", Long.valueOf(j10));
    }

    private int getFrameSize() {
        return this.frameSize;
    }

    public long getAudioBitrate() {
        return -1L;
    }

    public int getAudioCaptureDelay() {
        return this.audioCaptureDelay;
    }

    public int getAudioDecodeDelay() {
        return this.audioDecodeDelay;
    }

    public int getAudioEncodeDelay() {
        return this.audioEncodeDelay;
    }

    public int getAudioRenderDelay() {
        return this.audioRenderDelay;
    }

    public long getBitRate() {
        return this.bitRate;
    }

    public String getCodecName() {
        return "H264";
    }

    public int getDecodeDelay() {
        return this.decodeDelay;
    }

    public long getDelayTime() {
        return this.delayTime;
    }

    public long getFrameRateOutput() {
        return -1L;
    }

    public int getGameFps() {
        return this.gameFps;
    }

    public int getGameRealFps() {
        return this.gameRealFps;
    }

    public int getJankAndFreezeDuration() {
        return this.jankAndFreezeDuration;
    }

    public long getJitterBuffer() {
        return -1L;
    }

    public int getJitterDelay() {
        return this.jitterDelay;
    }

    public int getNetDelay() {
        return this.netDelay;
    }

    public String getPacketsLostRate() {
        return "";
    }

    public long getPingPongDelay() {
        return this.clockDiffUse;
    }

    public long getRealFrameRateOutput() {
        return this.realFrameRateOutput;
    }

    public int getReceiveFrameCount() {
        return this.receiveFrameCount;
    }

    public long getReceiveFrameSize() {
        return this.receiveFrameSize;
    }

    public long getReceivedBitrate() {
        return -1L;
    }

    public int getRenderDelay() {
        return this.renderDelay;
    }

    public long getRoundTrip() {
        return 0L;
    }

    public int getServerEncodeDelay() {
        return this.serverEncodeDelay;
    }

    public long getTimeStamp() {
        return this.timeStamp;
    }

    public int getVideoCaptureDelay() {
        return this.videoCaptureDelay;
    }

    public int getVideoDecodeDelay() {
        return this.videoDecodeDelay;
    }

    public int getVideoEncodeDelay() {
        return this.videoEncodeDelay;
    }

    public long getVideoFps() {
        return this.videoFps;
    }

    public long getVideoInputFps() {
        return -1L;
    }

    public int getVideoRenderDelay() {
        return this.videoRenderDelay;
    }

    public long getVideoSendBitrate() {
        return -1L;
    }

    public long getVideoSendFps() {
        return -1L;
    }

    public boolean isVaild() {
        int i10 = this.netDelay;
        return !(i10 == 0 && this.decodeDelay == 0 && this.renderDelay == 0) && i10 < 10000 && this.videoFps > 0 && i10 > 0 && this.nowDelayTime > 0;
    }

    public void setAudioCaptureDelay(int i10) {
        this.audioCaptureDelay = i10;
    }

    public void setAudioDecodeDelay(int i10) {
        this.audioDecodeDelay = i10;
    }

    public void setAudioEncodeDelay(int i10) {
        this.audioEncodeDelay = i10;
    }

    public void setAudioRenderDelay(int i10) {
        this.audioRenderDelay = i10;
    }

    public void setBitRate(long j10) {
        this.bitRate = j10;
    }

    public void setDelayFromVideoCapToDecoded(int i10) {
        this.delayFromVideoCapToDecoded = i10;
    }

    public void setDelayTime(long j10) {
        this.delayTime = j10;
    }

    public void setHaimaCpu(int i10) {
        this.haimaCpu = i10;
    }

    public void setJitterDelay(int i10) {
        this.jitterDelay = i10;
    }

    public void setSystemCpu(int i10) {
        this.systemCpu = i10;
    }

    public void setTimeStamp(long j10) {
        this.timeStamp = j10;
    }

    public void setVideoCaptureDelay(int i10) {
        this.videoCaptureDelay = i10;
    }

    public void setVideoDecodeDelay(int i10) {
        this.videoDecodeDelay = i10;
    }

    public void setVideoEncodeDelay(int i10) {
        this.videoEncodeDelay = i10;
    }

    public void setVideoFps(long j10) {
        this.videoFps = j10;
    }

    public void setVideoRenderDelay(int i10) {
        this.videoRenderDelay = i10;
    }

    @Override // com.haima.hmcp.beans.AbsVideoDelayInfo
    public String toReportString() {
        return this.timeStamp + "|" + this.netDelay + "|" + this.decodeDelay + "|" + this.renderDelay + "|" + this.delayTime + "|" + this.nowDelayTime + "|" + this.frameSize + "|" + this.videoFps + "|" + this.gameFps + "|" + this.bitRate + "|" + this.clockDiffUse;
    }
}
