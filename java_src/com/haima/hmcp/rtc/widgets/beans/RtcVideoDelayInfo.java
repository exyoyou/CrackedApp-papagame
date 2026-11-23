package com.haima.hmcp.rtc.widgets.beans;

import android.text.TextUtils;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.utils.ping.PingManager;
import com.haima.hmcp.utils.ping.PingResult;
import com.sdk.base.framework.utils.log.LogUtils;
import org.webrtc.haima.HmFrameDelayInfo;

/* JADX INFO: loaded from: classes5.dex */
public class RtcVideoDelayInfo extends VideoDelayInfo {
    private String audioDeviceState;
    private int audioLevel;
    private long bitrateAudio;
    private String boardType;
    private String codecImplementationName;
    private String codecName;
    private String contentType;
    private long currentRoundTripTime;
    private int decodeVariance;
    private int fecPacketsPercent;
    private int fecRecoveredPercent;
    private long frameDelay;
    private long frameHeightReceived;
    private long frameRateDecode;
    private long frameRateOutput;
    private long frameWidthReceived;
    private int freezeCount;
    private int jankCount;
    private long jitterBuffer;
    private long lastBitRate;
    private long lastBitRateAudio;
    private long nacksSent;
    private final double netLevel;
    private final String originVideoInfo;
    private long packetsLost;
    private String packetsLostRate;
    private long pliSent;
    private long realFrameRateDecode;
    private int remoteToLocalClockTimeOffset;
    private int renderVariance;
    private String reportString;
    private long targetDelay;
    private long totalBitrate;
    private long videoInputFps;
    private long videoSendFps;
    private long videoSendKbps;
    private final int SERVER_ENCODE_DELAY_MIN = 18;
    private final int SERVER_ENCODE_DELAY_MAX = 22;
    private final int B_2_b = 8;
    private final int bps_2_kbps = 1000;
    private int audioChannel = 2;
    private String audioEncodeMode = "opus";

    public RtcVideoDelayInfo(HmFrameDelayInfo hmFrameDelayInfo, int i10, boolean z10) {
        this.videoInputFps = -1L;
        this.videoSendFps = -1L;
        this.videoSendKbps = -1L;
        this.originVideoInfo = hmFrameDelayInfo.getOriginVideoInfo().getReportString();
        long bitrateAudio = hmFrameDelayInfo.getBitrateAudio();
        this.bitrateAudio = bitrateAudio;
        if (bitrateAudio > 0) {
            this.lastBitRateAudio = bitrateAudio;
        }
        this.audioLevel = hmFrameDelayInfo.getAudioLevel();
        this.audioDeviceState = hmFrameDelayInfo.getAudioDeviceState();
        this.timeStamp = System.currentTimeMillis();
        this.netDelay = (int) hmFrameDelayInfo.getCurrentRoundTripTime();
        this.decodeDelay = hmFrameDelayInfo.getDecodeTime();
        this.renderDelay = hmFrameDelayInfo.getVideoRenderDelay();
        long delayTime = hmFrameDelayInfo.getDelayTime();
        this.delayTime = delayTime <= 0 ? 0L : delayTime;
        long nowDelayTime = hmFrameDelayInfo.getNowDelayTime();
        this.nowDelayTime = nowDelayTime <= 0 ? 0L : nowDelayTime;
        this.frameSize = (int) hmFrameDelayInfo.getReceiveFrameSize();
        this.receiveFrameSize = hmFrameDelayInfo.getReceiveFrameSize();
        this.receiveFrameCount = hmFrameDelayInfo.getReciveFrameCount();
        this.clockDiffUse = i10;
        this.gameFps = hmFrameDelayInfo.getGameFps();
        this.gameRealFps = hmFrameDelayInfo.getGameRealFps();
        this.realFrameRateDecode = hmFrameDelayInfo.getRealFrameRateDecode();
        this.realFrameRateOutput = hmFrameDelayInfo.getRealFrameRateOutput();
        this.frameRateEglRender = hmFrameDelayInfo.getFrameRateEglRender();
        this.packetsLost = hmFrameDelayInfo.getPacketsLost();
        this.packetsLostRate = hmFrameDelayInfo.getPacketsLostRate();
        this.contentType = hmFrameDelayInfo.getContentType();
        this.frameHeightReceived = hmFrameDelayInfo.getFrameHeightReceived();
        this.frameWidthReceived = hmFrameDelayInfo.getFrameWidthReceived();
        this.frameRateDecode = hmFrameDelayInfo.getFrameRateDecode();
        this.frameRateOutput = hmFrameDelayInfo.getFrameRateOutput();
        this.jitterBuffer = hmFrameDelayInfo.getJitterBuffer();
        this.nacksSent = hmFrameDelayInfo.getNacksSent();
        this.pliSent = hmFrameDelayInfo.getPliSent();
        this.freezeCount = hmFrameDelayInfo.getFreezeCount();
        this.jankCount = hmFrameDelayInfo.getJankCount();
        this.jankAndFreezeDuration = hmFrameDelayInfo.getJankDuration() + hmFrameDelayInfo.getFreezeDuration();
        this.decodeVariance = hmFrameDelayInfo.getDecodeVariance();
        this.renderVariance = hmFrameDelayInfo.getRenderVariance();
        long targetDelay = hmFrameDelayInfo.getTargetDelay();
        this.targetDelay = targetDelay;
        this.frameDelay = targetDelay;
        this.currentRoundTripTime = hmFrameDelayInfo.getCurrentRoundTripTime();
        long videoBitrate = hmFrameDelayInfo.getVideoBitrate();
        this.bitRate = videoBitrate;
        if (videoBitrate > 0) {
            this.lastBitRate = videoBitrate;
        }
        this.codecName = hmFrameDelayInfo.getCodecName();
        this.codecImplementationName = hmFrameDelayInfo.getCodecImplementationName();
        this.fecPacketsPercent = hmFrameDelayInfo.getFecPacketsPercent();
        this.fecRecoveredPercent = hmFrameDelayInfo.getFecRecoveredPercent();
        this.remoteToLocalClockTimeOffset = hmFrameDelayInfo.getRemoteToLocalClockOffset();
        this.totalBitrate = hmFrameDelayInfo.getTotalBitrate();
        this.serverEncodeDelay = ((int) (Math.random() * 5.0d)) + 18;
        this.netLevel = hmFrameDelayInfo.estimateNetLevel();
        this.videoInputFps = hmFrameDelayInfo.getStreamerInputFps();
        this.videoSendFps = hmFrameDelayInfo.getStreamerSendFps();
        this.videoSendKbps = hmFrameDelayInfo.getStreamerSendKbps();
        setVideoCaptureDelay(hmFrameDelayInfo.getVideoCaptureDelay());
        setVideoEncodeDelay(hmFrameDelayInfo.getVideoEncodeDelay());
        setVideoDecodeDelay(hmFrameDelayInfo.getVideoDecodeDelay());
        setVideoRenderDelay(hmFrameDelayInfo.getVideoRenderDelay());
        setAudioCaptureDelay(hmFrameDelayInfo.getAudioCaptureDelay());
        setAudioEncodeDelay(hmFrameDelayInfo.getAudioEncodeDelay());
        setAudioDecodeDelay(hmFrameDelayInfo.getAudioDecodeDelay());
        setAudioRenderDelay(hmFrameDelayInfo.getAudioRenderDelay());
        setJitterDelay(hmFrameDelayInfo.getNetJitterDelay());
        if (z10) {
            StringBuffer stringBuffer = new StringBuffer();
            PingResult pingResult = PingManager.getInstance().getPingResult();
            if (pingResult == null || pingResult.isTimeout() || !pingResult.isValidate()) {
                stringBuffer.append("|");
                stringBuffer.append("0-0-0-0");
            } else {
                stringBuffer.append("|");
                stringBuffer.append(pingResult.toReportString());
            }
            if (this.videoFps == 0) {
                this.videoFps = this.gameRealFps;
            }
            this.reportString = hmFrameDelayInfo.toReportString(i10, stringBuffer.toString());
        }
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public long getAudioBitrate() {
        return (this.bitrateAudio * 8) / 1000;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public int getAudioCaptureDelay() {
        return this.audioCaptureDelay;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public int getAudioEncodeDelay() {
        return this.audioEncodeDelay;
    }

    public String getCodecImplementationName() {
        return this.codecImplementationName;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public String getCodecName() {
        return this.codecName;
    }

    public long getFrameRateDecode() {
        return this.frameRateDecode;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public long getFrameRateOutput() {
        return this.frameRateOutput;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public long getJitterBuffer() {
        return this.jitterBuffer;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public String getPacketsLostRate() {
        return this.packetsLostRate;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public long getReceivedBitrate() {
        return (this.totalBitrate * 8) / 1000;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public long getRoundTrip() {
        return this.currentRoundTripTime;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public int getVideoCaptureDelay() {
        return this.videoCaptureDelay;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public int getVideoEncodeDelay() {
        return this.videoEncodeDelay;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public long getVideoInputFps() {
        return this.videoInputFps;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public long getVideoSendBitrate() {
        return this.videoSendKbps;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public long getVideoSendFps() {
        return this.videoSendFps;
    }

    public void setBoardType(String str) {
        this.boardType = str;
    }

    public void setGameRealFps(int i10) {
        this.gameRealFps = i10;
    }

    public void setRealFrameRateDecode(long j10) {
        this.realFrameRateDecode = j10;
    }

    public void setRealFrameRateOutput(long j10) {
        this.realFrameRateOutput = j10;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo, com.haima.hmcp.beans.AbsVideoDelayInfo
    public String toReportString() {
        String str = this.reportString;
        return str != null ? str : "";
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("BitrateAudio ：");
        long j10 = this.bitrateAudio;
        if (j10 == 0) {
            j10 = this.lastBitRateAudio;
        }
        stringBuffer.append(VideoDelayInfo.formatedSize(j10));
        stringBuffer.append(" | ");
        stringBuffer.append("audioChannel ：");
        stringBuffer.append(this.audioChannel);
        stringBuffer.append("\n");
        stringBuffer.append("audioEncodeMode ：");
        stringBuffer.append(this.audioEncodeMode);
        stringBuffer.append("\n");
        stringBuffer.append("audioLevel ：");
        stringBuffer.append(this.audioLevel);
        stringBuffer.append("\n");
        stringBuffer.append("BitRate : ");
        long j11 = this.bitRate;
        if (j11 == 0) {
            j11 = this.lastBitRate;
        }
        stringBuffer.append(VideoDelayInfo.formatedSize(j11));
        stringBuffer.append("\n");
        stringBuffer.append("Resolution ：");
        stringBuffer.append(this.frameWidthReceived);
        stringBuffer.append(" * ");
        stringBuffer.append(this.frameHeightReceived);
        stringBuffer.append("\n");
        stringBuffer.append("CodecName : ");
        stringBuffer.append(this.codecName);
        stringBuffer.append("\n");
        stringBuffer.append("CodecImp : ");
        stringBuffer.append(this.codecImplementationName);
        stringBuffer.append("\n");
        stringBuffer.append("packetsLost : ");
        long j12 = this.packetsLost;
        if (j12 < 0) {
            j12 = 0;
        }
        stringBuffer.append(j12);
        stringBuffer.append(" | ");
        stringBuffer.append("ContentType : ");
        stringBuffer.append(this.contentType);
        stringBuffer.append("\n");
        stringBuffer.append("CurDelay : ");
        stringBuffer.append(this.delayTime);
        stringBuffer.append(LogUtils.CSTR_TIMES_END);
        stringBuffer.append("Decode : ");
        stringBuffer.append(this.decodeDelay);
        stringBuffer.append(LogUtils.CSTR_TIMES_END);
        stringBuffer.append("RateDecoded : ");
        stringBuffer.append(this.frameRateDecode);
        stringBuffer.append(" | ");
        stringBuffer.append("RateOutput : ");
        stringBuffer.append(this.frameRateOutput);
        stringBuffer.append("\n");
        stringBuffer.append("RateReceived : ");
        stringBuffer.append(this.gameFps);
        stringBuffer.append("\n");
        stringBuffer.append("JitterBuffer : ");
        stringBuffer.append(this.jitterBuffer);
        stringBuffer.append(LogUtils.CSTR_TIMES_END);
        stringBuffer.append("NacksSent : ");
        stringBuffer.append(this.nacksSent);
        stringBuffer.append("\n");
        stringBuffer.append("RenderDelay : ");
        stringBuffer.append(this.renderDelay);
        stringBuffer.append("ms | ");
        stringBuffer.append("TargetDelay : ");
        stringBuffer.append(this.targetDelay);
        stringBuffer.append(LogUtils.CSTR_TIMES_END);
        stringBuffer.append("CRTTime : ");
        stringBuffer.append(this.currentRoundTripTime);
        stringBuffer.append(LogUtils.CSTR_TIMES_END);
        stringBuffer.append("BitRate : ");
        long j13 = this.bitRate;
        if (j13 == 0) {
            j13 = this.lastBitRate;
        }
        stringBuffer.append(VideoDelayInfo.formatedSize(j13));
        stringBuffer.append("\n");
        stringBuffer.append("PacketsLostRate : ");
        stringBuffer.append(this.packetsLostRate);
        stringBuffer.append("\n");
        if (!TextUtils.isEmpty(this.boardType)) {
            stringBuffer.append("BoardType : ");
            stringBuffer.append(this.boardType);
            stringBuffer.append("\n");
        }
        stringBuffer.append("ServerEncodeDelay : ");
        stringBuffer.append(this.serverEncodeDelay);
        stringBuffer.append("\n");
        stringBuffer.append("VideoInputFps : ");
        stringBuffer.append(this.videoInputFps);
        stringBuffer.append("\n");
        stringBuffer.append("VideoSendFps : ");
        stringBuffer.append(this.videoSendFps);
        stringBuffer.append("\n");
        stringBuffer.append("VideoSendKbps : ");
        stringBuffer.append(this.videoSendKbps);
        return stringBuffer.toString();
    }
}
