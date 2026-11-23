package org.webrtc.haima;

import java.lang.reflect.Field;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes10.dex */
public class HmFrameDelayInfo implements Cloneable {
    private int audioCaptureDelay;
    private int audioDecodeDelay;
    private String audioDeviceState;
    private int audioEncodeDelay;
    private int audioLevel;
    private int audioRenderDelay;
    private long bitrateAudio;
    private long bytesAudioReceived;
    private long bytesVideoReceived;
    private String codecImplementationName;
    private String codecName;
    private String contentType;
    private long currentRoundTripTime;
    private int decodeTime;
    private int decodeVariance;
    private long delayTime;
    private long discardFrameCount;
    private int discardFrameRate;
    private long fecPackets;
    private long fecRecovered;
    private long frameHeightReceived;
    private long frameRateDecode;
    private int frameRateEglRender;
    private long frameRateOutput;
    private int frameSize;
    private long frameWidthReceived;
    private int freezeCount;
    private int freezeDuration;
    private int freezeDurationFromJava;
    private int gameFps;
    private int gameRealFps;
    private int haimaCpu;
    private int jankCount;
    private int jankDuration;
    private int jankDurationFromJava;
    private long jitterBuffer;
    private int jitterDelay;
    private long lastAudioBytesReceived;
    private long lastFecPackets;
    private long lastFramesDecoded;
    private int lastFreezeDuration;
    private int lastJankDuration;
    private long lastPacketsLost;
    private long lastPacketsReceived;
    private long lastVideoBytesReceived;
    private long lastfecRecovered;
    private JankInfo mDiffJankInfo;
    private JankInfo mJankInfo;
    private Field[] mJankInfoFields;
    private long mStreamerInputFps;
    private long mStreamerSendFps;
    private long mStreamerVideoSendKbps;
    private long nacksSent;
    private long netTime;
    private long nowDelayTime;
    private long operationDelayMs;
    private long packetsLost;
    private long packetsReceived;
    private long pliSent;
    private long realFrameRateDecode;
    private long realFrameRateOutput;
    private long receiveFrameSize;
    private int reciveFrameCount;
    private int remoteToLocalClockOffset;
    private int renderTime;
    private int renderVariance;
    private ConcurrentHashMap<String, HmRtcSsrcStats> ssrcStats;
    private int systemCpu;
    private long targetDelay;
    private int uploadAvgEncodeDelayMs;
    private long videBitrate;
    private int videoCaptureDelay;
    private int videoDecodeDelay;
    private int videoEncodeDelay;
    private int videoRenderDelay;
    private int lastFreezeDurationFromJava = -1;
    private int lastJankDurationFromJava = -1;
    private int intervalFromVideoCaptureToDecoded = -1;
    private HmOriginVideoInfo originVideoInfo = new HmOriginVideoInfo();

    static class HmRtcSsrcStats {
        public long bitrateSsrc;
        public long bytesRecved;
        public long lastBytesRecved;

        HmRtcSsrcStats() {
        }
    }

    private static class JankInfo {
        public long originJankDurationMs = -1;
        public long originBJankDurationMs = -1;
        public long haimaSmallJankNum = -1;
        public long haimaSmallJankDuration = -1;
        public long haimaRecvSJankDuration = -1;
        public long haimaRecvJankDuration = -1;
        public long haimaRecvBJankDuration = -1;
        public long haimaDecSJankDuration = -1;
        public long haimaDecJankDuration = -1;
        public long haimaDecBJankDuration = -1;
        public long Streamer_utcTimeMs = 0;
        public long Streamer_captureSJankDurationMs = -1;
        public long Streamer_captureJankDurationMs = -1;
        public long Streamer_captureBJankDurationMs = -1;
        public long Streamer_encodeSJankDurationMs = -1;
        public long Streamer_encodeJankDurationMs = -1;
        public long Streamer_encodeBJankDurationMs = -1;
        public long Streamer_sentSJankDurationMs = -1;
        public long Streamer_sentJankDurationMs = -1;
        public long Streamer_sentBJankDurationMs = -1;
        public long Streamer_rtpSJankDurationMs = -1;
        public long Streamer_rtpJankDurationMs = -1;
        public long Streamer_rtpBJankDurationMs = -1;
        public long Streamer_realSJankDurationMs = -1;
        public long Streamer_realJankDurationMs = -1;
        public long Streamer_realBJankDurationMs = -1;

        public static long diffValue(long j10, long j11) {
            return (j10 < 0 || j11 < 0 || j10 < j11) ? j10 : j10 - j11;
        }

        public void copyFrom(JankInfo jankInfo) {
            this.originJankDurationMs = jankInfo.originJankDurationMs;
            this.originBJankDurationMs = jankInfo.originBJankDurationMs;
            this.haimaSmallJankNum = jankInfo.haimaSmallJankNum;
            this.haimaSmallJankDuration = jankInfo.haimaSmallJankDuration;
            this.haimaRecvSJankDuration = jankInfo.haimaRecvSJankDuration;
            this.haimaRecvJankDuration = jankInfo.haimaRecvJankDuration;
            this.haimaRecvBJankDuration = jankInfo.haimaRecvBJankDuration;
            this.haimaDecSJankDuration = jankInfo.haimaDecSJankDuration;
            this.haimaDecJankDuration = jankInfo.haimaDecJankDuration;
            this.haimaDecBJankDuration = jankInfo.haimaDecBJankDuration;
            this.Streamer_utcTimeMs = jankInfo.Streamer_utcTimeMs;
            this.Streamer_captureSJankDurationMs = jankInfo.Streamer_captureSJankDurationMs;
            this.Streamer_captureJankDurationMs = jankInfo.Streamer_captureJankDurationMs;
            this.Streamer_captureBJankDurationMs = jankInfo.Streamer_captureBJankDurationMs;
            this.Streamer_encodeSJankDurationMs = jankInfo.Streamer_encodeSJankDurationMs;
            this.Streamer_encodeJankDurationMs = jankInfo.Streamer_encodeJankDurationMs;
            this.Streamer_encodeBJankDurationMs = jankInfo.Streamer_encodeBJankDurationMs;
            this.Streamer_sentSJankDurationMs = jankInfo.Streamer_sentSJankDurationMs;
            this.Streamer_sentJankDurationMs = jankInfo.Streamer_sentJankDurationMs;
            this.Streamer_sentBJankDurationMs = jankInfo.Streamer_sentBJankDurationMs;
            this.Streamer_rtpSJankDurationMs = jankInfo.Streamer_rtpSJankDurationMs;
            this.Streamer_rtpJankDurationMs = jankInfo.Streamer_rtpJankDurationMs;
            this.Streamer_rtpBJankDurationMs = jankInfo.Streamer_rtpBJankDurationMs;
            this.Streamer_realSJankDurationMs = jankInfo.Streamer_realSJankDurationMs;
            this.Streamer_realJankDurationMs = jankInfo.Streamer_realJankDurationMs;
            this.Streamer_realBJankDurationMs = jankInfo.Streamer_realBJankDurationMs;
        }
    }

    public HmFrameDelayInfo() {
        ConcurrentHashMap<String, HmRtcSsrcStats> concurrentHashMap = this.ssrcStats;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
        this.ssrcStats = new ConcurrentHashMap<>();
        initValue();
        this.mJankInfo = new JankInfo();
        this.mDiffJankInfo = new JankInfo();
    }

    private double getPkgLostRate() {
        double d10 = this.packetsLost - this.lastPacketsLost;
        double d11 = (this.packetsReceived - this.lastPacketsReceived) + d10;
        if (d11 >= 1.0d) {
            return (d10 * 100.0d) / d11;
        }
        return -1.0d;
    }

    private void initValue() {
        this.audioLevel = 0;
        this.bitrateAudio = 0L;
        this.netTime = 0L;
        this.decodeTime = 0;
        this.renderTime = 0;
        this.frameSize = 0;
        this.delayTime = 0L;
        this.nowDelayTime = 0L;
        this.reciveFrameCount = 0;
        this.receiveFrameSize = 0L;
        this.gameFps = 0;
        this.videBitrate = 0L;
    }

    protected Object clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        HmFrameDelayInfo hmFrameDelayInfo = (HmFrameDelayInfo) objClone;
        hmFrameDelayInfo.ssrcStats = new ConcurrentHashMap<>();
        for (String str : this.ssrcStats.keySet()) {
            HmRtcSsrcStats hmRtcSsrcStats = this.ssrcStats.get(str);
            if (hmRtcSsrcStats != null) {
                HmRtcSsrcStats hmRtcSsrcStats2 = new HmRtcSsrcStats();
                hmRtcSsrcStats2.bitrateSsrc = hmRtcSsrcStats.bitrateSsrc;
                hmRtcSsrcStats2.bytesRecved = hmRtcSsrcStats.bytesRecved;
                hmRtcSsrcStats2.lastBytesRecved = hmRtcSsrcStats.lastBytesRecved;
                hmFrameDelayInfo.ssrcStats.put(str, hmRtcSsrcStats2);
            }
        }
        JankInfo jankInfo = new JankInfo();
        jankInfo.copyFrom(this.mJankInfo);
        hmFrameDelayInfo.mJankInfo = jankInfo;
        JankInfo jankInfo2 = new JankInfo();
        jankInfo2.copyFrom(this.mDiffJankInfo);
        hmFrameDelayInfo.mDiffJankInfo = jankInfo2;
        return objClone;
    }

    public String dumpJankInfo() {
        JankInfo jankInfo = this.mJankInfo;
        return ((((((("[jank] " + jankInfo.Streamer_utcTimeMs + ",") + "render:" + jankInfo.haimaSmallJankDuration + "," + getJankDuration() + "," + getFreezeDuration()) + ",ori :-1," + jankInfo.originJankDurationMs + "," + jankInfo.originBJankDurationMs) + ",dec :" + jankInfo.haimaDecSJankDuration + "," + jankInfo.haimaDecJankDuration + "," + jankInfo.haimaDecBJankDuration) + ",recv:" + jankInfo.haimaRecvSJankDuration + "," + jankInfo.haimaRecvJankDuration + "," + jankInfo.haimaRecvBJankDuration) + ",sent:" + jankInfo.Streamer_sentSJankDurationMs + "," + jankInfo.Streamer_sentJankDurationMs + "," + jankInfo.Streamer_sentBJankDurationMs) + ",enc :" + jankInfo.Streamer_encodeSJankDurationMs + "," + jankInfo.Streamer_encodeJankDurationMs + "," + jankInfo.Streamer_encodeBJankDurationMs) + ",rtp :" + jankInfo.Streamer_rtpSJankDurationMs + "," + jankInfo.Streamer_rtpJankDurationMs + "," + jankInfo.Streamer_rtpBJankDurationMs;
    }

    public int estimateNetLevel() {
        return (int) Math.min(Math.max(Math.min(Math.exp(0.1d - (getPkgLostRate() / 8.0d)) * 100.0d, 100.0d), 1.0d), Math.max(Math.min(Math.exp(1.0d - (this.currentRoundTripTime / 40.0d)) * 100.0d, 100.0d), 1.0d));
    }

    public boolean fillJankInfo(String str, String str2) {
        if (str == null || str2 == null || this.mJankInfo == null || !(str.startsWith("haima") || str.startsWith("Streamer_"))) {
            return false;
        }
        try {
            if (this.mJankInfoFields == null) {
                this.mJankInfoFields = JankInfo.class.getFields();
            }
            for (Field field : this.mJankInfoFields) {
                String name = field.getName();
                if (str.equalsIgnoreCase(name)) {
                    long j10 = Long.parseLong(str2);
                    field.setAccessible(true);
                    long j11 = field.getLong(this.mJankInfo);
                    field.setLong(this.mJankInfo, j10);
                    if (name.equalsIgnoreCase("Streamer_utcTimeMs")) {
                        field.setLong(this.mDiffJankInfo, j11);
                    } else {
                        field.setLong(this.mDiffJankInfo, JankInfo.diffValue(j10, j11));
                    }
                    field.setAccessible(false);
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public int getAudioCaptureDelay() {
        return this.audioCaptureDelay;
    }

    public int getAudioDecodeDelay() {
        return this.audioDecodeDelay;
    }

    public String getAudioDeviceState() {
        return this.audioDeviceState;
    }

    public int getAudioEncodeDelay() {
        return this.audioEncodeDelay;
    }

    public int getAudioLevel() {
        return this.audioLevel;
    }

    public int getAudioRenderDelay() {
        return this.audioRenderDelay;
    }

    public long getBitrateAudio() {
        return this.bitrateAudio;
    }

    public long getBytesAudioReceived() {
        return this.bytesAudioReceived;
    }

    public String getCodecImplementationName() {
        return this.codecImplementationName;
    }

    public String getCodecName() {
        return this.codecName;
    }

    public String getContentType() {
        return this.contentType;
    }

    public long getCurrentRoundTripTime() {
        return this.currentRoundTripTime;
    }

    public int getDecodeTime() {
        return this.decodeTime;
    }

    public int getDecodeVariance() {
        return this.decodeVariance;
    }

    public long getDelayTime() {
        return this.delayTime;
    }

    public long getDiscardFrameCount() {
        return this.discardFrameCount;
    }

    public int getDiscardFrameRate() {
        return this.discardFrameRate;
    }

    public int getFecPacketsPercent() {
        int i10 = (int) (this.packetsReceived - this.lastPacketsReceived);
        if (i10 <= 0) {
            return 0;
        }
        return (((int) (this.fecPackets - this.lastFecPackets)) * 100) / i10;
    }

    public int getFecRecoveredPercent() {
        int i10 = (int) (this.packetsLost - this.lastPacketsLost);
        if (i10 <= 0) {
            return 0;
        }
        return (((int) (this.fecRecovered - this.lastfecRecovered)) * 100) / i10;
    }

    public long getFrameHeightReceived() {
        return this.frameHeightReceived;
    }

    public long getFrameRateDecode() {
        return this.frameRateDecode;
    }

    public int getFrameRateEglRender() {
        return this.frameRateEglRender;
    }

    public long getFrameRateOutput() {
        return this.frameRateOutput;
    }

    public int getFrameSize() {
        return this.frameSize;
    }

    public long getFrameWidthReceived() {
        return this.frameWidthReceived;
    }

    public int getFreezeCount() {
        return this.freezeCount;
    }

    public int getFreezeDuration() {
        return this.lastFreezeDurationFromJava >= 0 ? this.freezeDurationFromJava : this.freezeDuration;
    }

    public int getFreezeDurationDifference() {
        int i10 = this.lastFreezeDurationFromJava;
        int i11 = i10 >= 0 ? this.freezeDurationFromJava - i10 : this.freezeDuration - this.lastFreezeDuration;
        if (i11 < 0) {
            return 0;
        }
        return i11;
    }

    public int getGameFps() {
        return this.gameFps;
    }

    public int getGameRealFps() {
        return this.gameRealFps;
    }

    public int getHaimaCpu() {
        return this.haimaCpu;
    }

    public int getIntervalFromVideoCaptureToDecoded() {
        return this.intervalFromVideoCaptureToDecoded;
    }

    public int getJankCount() {
        return this.jankCount;
    }

    public int getJankDuration() {
        return this.lastJankDurationFromJava >= 0 ? this.jankDurationFromJava : this.jankDuration;
    }

    public int getJankDurationDifference() {
        int i10 = this.lastJankDurationFromJava;
        int i11 = i10 >= 0 ? this.jankDurationFromJava - i10 : this.jankDuration - this.lastJankDuration;
        if (i11 < 0) {
            return 0;
        }
        return i11;
    }

    public long getJitterBuffer() {
        return this.jitterBuffer;
    }

    public long getLastAudioBytesReceived() {
        return this.lastAudioBytesReceived;
    }

    public long getLastVideoBytesReceived() {
        return this.lastVideoBytesReceived;
    }

    public long getNacksSent() {
        return this.nacksSent;
    }

    public int getNetJitterDelay() {
        return this.jitterDelay;
    }

    public long getNetTime() {
        return this.netTime;
    }

    public long getNowDelayTime() {
        return this.nowDelayTime;
    }

    public long getOperationDelayMs() {
        return this.operationDelayMs;
    }

    public HmOriginVideoInfo getOriginVideoInfo() {
        return this.originVideoInfo;
    }

    public long getPacketsLost() {
        return this.packetsLost;
    }

    public String getPacketsLostRate() {
        double pkgLostRate = getPkgLostRate();
        if (pkgLostRate <= 0.0d) {
            return "0.00";
        }
        Locale locale = Locale.US;
        DecimalFormat decimalFormat = new DecimalFormat("0.00", new DecimalFormatSymbols(locale));
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        return String.format(locale, decimalFormat.format(pkgLostRate), new Object[0]);
    }

    public long getPacketsPercentDiff() {
        return this.packetsReceived - this.lastPacketsReceived;
    }

    public long getPliSent() {
        return this.pliSent;
    }

    public long getRealFrameRateDecode() {
        return this.realFrameRateDecode;
    }

    public long getRealFrameRateOutput() {
        return this.realFrameRateOutput;
    }

    public long getReceiveFrameSize() {
        long j10 = this.bytesVideoReceived - this.lastVideoBytesReceived;
        long j11 = ((long) this.reciveFrameCount) - this.lastFramesDecoded;
        if (j11 == 0) {
            this.receiveFrameSize = 0L;
        } else {
            this.receiveFrameSize = j10 / j11;
        }
        return this.receiveFrameSize;
    }

    public int getReciveFrameCount() {
        return this.reciveFrameCount;
    }

    public int getRemoteToLocalClockOffset() {
        return this.remoteToLocalClockOffset;
    }

    public int getRenderTime() {
        return this.renderTime;
    }

    public int getRenderVariance() {
        return this.renderVariance;
    }

    public long getStreamerInputFps() {
        long j10 = this.mStreamerInputFps;
        if (j10 == 0) {
            return -1L;
        }
        return j10;
    }

    public long getStreamerSendFps() {
        long j10 = this.mStreamerSendFps;
        if (j10 == 0) {
            return -1L;
        }
        return j10;
    }

    public long getStreamerSendKbps() {
        long j10 = this.mStreamerVideoSendKbps;
        if (j10 == 0) {
            return -1L;
        }
        return j10;
    }

    public int getSystemCpu() {
        return this.systemCpu;
    }

    public long getTargetDelay() {
        return this.targetDelay;
    }

    public long getTotalBitrate() {
        long j10 = 0;
        if (this.ssrcStats.size() <= 0) {
            return 0L;
        }
        Iterator<String> it2 = this.ssrcStats.keySet().iterator();
        while (it2.hasNext()) {
            HmRtcSsrcStats hmRtcSsrcStats = this.ssrcStats.get(it2.next());
            if (hmRtcSsrcStats != null) {
                j10 += hmRtcSsrcStats.bitrateSsrc;
            }
        }
        return j10;
    }

    public int getUploadAvgEncodeDelayMs() {
        return this.uploadAvgEncodeDelayMs;
    }

    public long getVideoBitrate() {
        return this.videBitrate;
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

    public int getVideoRenderDelay() {
        return this.videoRenderDelay;
    }

    public boolean isValid() {
        long j10 = this.nowDelayTime;
        if (j10 <= 0) {
            j10 = 0;
        }
        long j11 = this.currentRoundTripTime;
        return !(j11 == 0 && this.decodeTime == 0 && this.renderTime == 0) && j11 < 10000 && j11 > 0 && j10 > 0;
    }

    public void setAudioCaptureDelay(int i10) {
        this.audioCaptureDelay = i10;
    }

    public void setAudioDecodeDelay(int i10) {
        this.audioDecodeDelay = i10;
    }

    public void setAudioDeviceState(String str) {
        this.audioDeviceState = str;
    }

    public void setAudioEncodeDelay(int i10) {
        this.audioEncodeDelay = i10;
    }

    public void setAudioLevel(int i10) {
        this.audioLevel = i10;
    }

    public void setAudioRenderDelay(int i10) {
        this.audioRenderDelay = i10;
    }

    public void setBitrateAudio(long j10) {
        this.bitrateAudio = j10;
    }

    public void setBytesAudioReceived(long j10) {
        this.lastAudioBytesReceived = this.bytesAudioReceived;
        this.bytesAudioReceived = j10;
    }

    public void setCodecImplementationName(String str) {
        this.codecImplementationName = str;
    }

    public void setCodecName(String str) {
        this.codecName = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setCurrentRoundTripTime(long j10) {
        this.currentRoundTripTime = j10;
    }

    public void setDecodeTime(int i10) {
        this.decodeTime = i10;
    }

    public void setDecodeVariance(int i10) {
        this.decodeVariance = i10;
    }

    public void setDelayTime(long j10) {
        this.delayTime = j10;
    }

    public void setDiscardFrameCount(long j10) {
        this.discardFrameCount = j10;
    }

    public void setDiscardFrameRate(int i10) {
        this.discardFrameRate = i10;
    }

    public void setFecPackets(int i10) {
        this.lastFecPackets = this.fecPackets;
        this.fecPackets = i10;
    }

    public void setFecRecovered(int i10) {
        this.lastfecRecovered = this.fecRecovered;
        this.fecRecovered = i10;
    }

    public void setFrameHeightReceived(long j10) {
        this.frameHeightReceived = j10;
    }

    public void setFrameRateDecode(long j10) {
        this.frameRateDecode = j10;
    }

    public void setFrameRateEglRender(int i10) {
        this.frameRateEglRender = i10;
    }

    public void setFrameRateOutput(long j10) {
        this.frameRateOutput = j10;
    }

    public void setFrameSize(int i10) {
        this.frameSize = i10;
    }

    public void setFrameWidthReceived(long j10) {
        this.frameWidthReceived = j10;
    }

    public void setFreezeCount(int i10) {
        this.freezeCount = i10;
    }

    public void setFreezeDuration(int i10) {
        this.lastFreezeDuration = this.freezeDuration;
        this.freezeDuration = i10;
    }

    public void setFreezeDurationFromJava(int i10) {
        this.lastFreezeDurationFromJava = this.freezeDurationFromJava;
        this.freezeDurationFromJava = i10;
    }

    public void setGameFps(int i10) {
        this.gameFps = i10;
    }

    public void setGameRealFps(int i10) {
        this.gameRealFps = i10;
    }

    public void setHaimaCpu(int i10) {
        this.haimaCpu = i10;
    }

    public void setIntervalFromVideoCaptureToDecoded(int i10) {
        this.intervalFromVideoCaptureToDecoded = i10;
    }

    public void setJankCount(int i10) {
        this.jankCount = i10;
    }

    public void setJankDuration(int i10) {
        this.lastJankDuration = this.jankDuration;
        this.jankDuration = i10;
    }

    public void setJankDurationFromJava(int i10) {
        this.lastJankDurationFromJava = this.jankDurationFromJava;
        this.jankDurationFromJava = i10;
    }

    public void setJitterBuffer(long j10) {
        this.jitterBuffer = j10;
    }

    public void setNacksSent(long j10) {
        this.nacksSent = j10;
    }

    public void setNetJitterDelay(int i10) {
        this.jitterDelay = i10;
    }

    public void setNetTime(long j10) {
        this.netTime = j10;
    }

    public void setNowDelayTime(long j10) {
        this.nowDelayTime = j10;
    }

    public void setOperationDelayMs(long j10) {
        this.operationDelayMs = j10;
    }

    public void setOriginDecodeVariance(int i10) {
        this.originVideoInfo.setDecodeVariance(i10);
    }

    public void setOriginFrameRateDecode(int i10) {
        this.originVideoInfo.setFrameRateDecode(i10);
    }

    public void setOriginFrameRateReceived(int i10) {
        this.originVideoInfo.setFrameRateReceived(i10);
    }

    public void setOriginFrameRateRendered(int i10) {
        this.originVideoInfo.setFrameRateRendered(i10);
    }

    public void setOriginFreezeCount(long j10) {
        this.originVideoInfo.setFreezeCount(j10);
    }

    public void setOriginFreezeDuration(long j10) {
        this.originVideoInfo.setFreezeDuration(j10);
        this.mJankInfo.originBJankDurationMs = j10;
    }

    public void setOriginJankCount(long j10) {
        this.originVideoInfo.setJankCount(j10);
    }

    public void setOriginJankDuration(long j10) {
        this.originVideoInfo.setJankDuration(j10);
        this.mJankInfo.originJankDurationMs = j10;
    }

    public void setOriginRenderVariance(int i10) {
        this.originVideoInfo.setRenderVariance(i10);
    }

    public void setPacketsLost(long j10) {
        this.lastPacketsLost = this.packetsLost;
        this.packetsLost = j10;
    }

    public void setPacketsReceived(long j10) {
        this.lastPacketsReceived = this.packetsReceived;
        this.packetsReceived = j10;
    }

    public void setPliSent(long j10) {
        this.pliSent = j10;
    }

    public void setRealFrameRateDecode(long j10) {
        this.realFrameRateDecode = j10;
    }

    public void setRealFrameRateOutput(long j10) {
        this.realFrameRateOutput = j10;
    }

    public void setReciveFrameCount(int i10) {
        this.lastFramesDecoded = this.reciveFrameCount;
        this.reciveFrameCount = i10;
    }

    public void setRemoteToLocalClockOffset(int i10) {
        this.remoteToLocalClockOffset = i10;
    }

    public void setRenderTime(int i10) {
        this.renderTime = i10;
    }

    public void setRenderVariance(int i10) {
        this.renderVariance = i10;
    }

    public void setStreamerInputFps(long j10) {
        this.mStreamerInputFps = j10;
    }

    public void setStreamerSendFps(long j10) {
        this.mStreamerSendFps = j10;
    }

    public void setStreamerSendKbps(long j10) {
        this.mStreamerVideoSendKbps = j10;
    }

    public void setSystemCpu(int i10) {
        this.systemCpu = i10;
    }

    public void setTargetDelay(long j10) {
        this.targetDelay = j10;
    }

    public void setUploadAvgEncodeDelayMs(int i10) {
        this.uploadAvgEncodeDelayMs = i10;
    }

    public void setVideoBitrate(long j10) {
        this.videBitrate = j10;
    }

    public void setVideoBytesReceived(long j10) {
        this.lastVideoBytesReceived = this.bytesVideoReceived;
        this.bytesVideoReceived = j10;
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

    public void setVideoRenderDelay(int i10) {
        this.videoRenderDelay = i10;
    }

    public String toReportString(int i10, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append("|");
        stringBuffer.append(this.currentRoundTripTime);
        stringBuffer.append("|");
        stringBuffer.append(this.decodeTime);
        stringBuffer.append("|");
        int i11 = this.videoRenderDelay;
        if (i11 == 0) {
            i11 = this.renderTime;
        }
        stringBuffer.append(i11);
        stringBuffer.append("|");
        long j10 = this.delayTime;
        if (j10 <= 0) {
            j10 = 0;
        }
        stringBuffer.append(j10);
        stringBuffer.append("|");
        stringBuffer.append(this.targetDelay);
        stringBuffer.append("|");
        stringBuffer.append(this.receiveFrameSize);
        stringBuffer.append("|");
        stringBuffer.append(this.gameRealFps);
        stringBuffer.append("|");
        stringBuffer.append(this.realFrameRateOutput);
        stringBuffer.append("|");
        stringBuffer.append(this.videBitrate);
        stringBuffer.append("|");
        stringBuffer.append(i10);
        stringBuffer.append("|");
        stringBuffer.append(this.targetDelay);
        stringBuffer.append("|");
        stringBuffer.append(getPacketsLostRate());
        stringBuffer.append("|");
        stringBuffer.append(this.nacksSent);
        stringBuffer.append("|");
        stringBuffer.append(this.packetsLost);
        stringBuffer.append(str);
        stringBuffer.append("|0|0|0|0|0|0|0");
        stringBuffer.append("|");
        stringBuffer.append(getFecPacketsPercent());
        stringBuffer.append("|");
        stringBuffer.append(getFecRecoveredPercent());
        stringBuffer.append("|");
        stringBuffer.append(this.remoteToLocalClockOffset);
        stringBuffer.append("|");
        stringBuffer.append(getTotalBitrate());
        stringBuffer.append("|");
        stringBuffer.append(this.pliSent);
        stringBuffer.append("|");
        stringBuffer.append(this.jankCount);
        stringBuffer.append("|");
        stringBuffer.append(this.freezeCount);
        stringBuffer.append("|");
        stringBuffer.append(this.decodeVariance);
        stringBuffer.append("|");
        stringBuffer.append(this.renderVariance);
        stringBuffer.append("|");
        stringBuffer.append(getJankDuration() + getFreezeDuration());
        stringBuffer.append("|");
        stringBuffer.append(this.realFrameRateDecode);
        stringBuffer.append("|");
        stringBuffer.append(this.frameRateEglRender);
        stringBuffer.append("|");
        stringBuffer.append(this.bitrateAudio);
        stringBuffer.append("|");
        stringBuffer.append(this.audioLevel);
        stringBuffer.append("|");
        stringBuffer.append(getStreamerInputFps());
        stringBuffer.append("|");
        stringBuffer.append(getStreamerSendFps());
        stringBuffer.append("|");
        stringBuffer.append(getStreamerSendKbps());
        stringBuffer.append("|");
        stringBuffer.append(this.audioDeviceState);
        stringBuffer.append("|");
        stringBuffer.append(this.videoCaptureDelay);
        stringBuffer.append("|");
        stringBuffer.append(this.videoEncodeDelay);
        stringBuffer.append("|");
        stringBuffer.append(this.videoDecodeDelay);
        stringBuffer.append("|");
        stringBuffer.append(this.videoRenderDelay);
        stringBuffer.append("|");
        stringBuffer.append(this.jitterDelay);
        stringBuffer.append(this.originVideoInfo.getReportString());
        stringBuffer.append("|");
        stringBuffer.append(this.haimaCpu);
        stringBuffer.append("|");
        stringBuffer.append(this.systemCpu);
        stringBuffer.append("|");
        stringBuffer.append(getJankDurationDifference() + getFreezeDurationDifference());
        stringBuffer.append("|");
        stringBuffer.append(this.intervalFromVideoCaptureToDecoded);
        JankInfo jankInfo = this.mDiffJankInfo;
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.haimaSmallJankNum);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.haimaSmallJankDuration);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.haimaRecvSJankDuration);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.haimaRecvJankDuration);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.haimaRecvBJankDuration);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.haimaDecSJankDuration);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.haimaDecJankDuration);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.haimaDecBJankDuration);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_utcTimeMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_captureSJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_captureJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_captureBJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_encodeSJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_encodeJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_encodeBJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_sentSJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_sentJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_sentBJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_rtpSJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_rtpJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_rtpBJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_realSJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_realJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(jankInfo.Streamer_realBJankDurationMs);
        stringBuffer.append("|");
        stringBuffer.append(this.operationDelayMs);
        return stringBuffer.toString();
    }

    public void updateTotalBitrate(Map<String, Object> map, int i10) {
        try {
            long j10 = Long.parseLong(map.get("bytesReceived").toString());
            String str = map.get("localCandidateId").toString() + map.get("remoteCandidateId").toString();
            HmRtcSsrcStats hmRtcSsrcStats = this.ssrcStats.get(str);
            if (hmRtcSsrcStats == null) {
                hmRtcSsrcStats = new HmRtcSsrcStats();
            }
            long j11 = hmRtcSsrcStats.bytesRecved;
            hmRtcSsrcStats.lastBytesRecved = j11;
            hmRtcSsrcStats.bytesRecved = j10;
            hmRtcSsrcStats.bitrateSsrc = (j10 - j11) / ((long) i10);
            this.ssrcStats.remove(str);
            this.ssrcStats.put(str, hmRtcSsrcStats);
        } catch (Exception unused) {
        }
    }

    public void updateTotalBitrate(long j10, String str, String str2, int i10) {
        String str3 = str + str2;
        HmRtcSsrcStats hmRtcSsrcStats = this.ssrcStats.get(str3);
        if (hmRtcSsrcStats == null) {
            hmRtcSsrcStats = new HmRtcSsrcStats();
        }
        long j11 = hmRtcSsrcStats.bytesRecved;
        hmRtcSsrcStats.lastBytesRecved = j11;
        hmRtcSsrcStats.bytesRecved = j10;
        hmRtcSsrcStats.bitrateSsrc = (j10 - j11) / ((long) i10);
        this.ssrcStats.remove(str3);
        this.ssrcStats.put(str3, hmRtcSsrcStats);
    }
}
