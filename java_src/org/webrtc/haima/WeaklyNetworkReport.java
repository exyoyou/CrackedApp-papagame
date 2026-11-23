package org.webrtc.haima;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public class WeaklyNetworkReport {
    public static int START_STREAMER_WEAKLY_INFO = 4;
    private long decodedHeight;
    private long decodedWidth;
    private String freezeIntervals;
    private long lastReceivingAudioPackets;
    private String packetsLostRate;
    private long receivingAudioPackets;
    private long receivingRtt;
    private long reportTime;
    private long resolutionChangedTime;
    private long receivingVideoBitrate = -1;
    private long receivingVideoPacketsRate = -1;
    private long receivingAudioPacketsRate = -1;
    private long maxJitter = -1;
    private long minJitter = -1;
    private long avgJitter = -1;
    private long medianJitter = -1;
    private long deltaJitter = -1;
    private int remoteToLocalClockOffset = Integer.MAX_VALUE;
    private ArrayList<StreamerWeaklyNetInfo> streamerWeaklyNetList = new ArrayList<>();

    public static class StreamerWeaklyNetInfo {
        private long avgEncodeMs;
        private ArrayList<Bwe> estimatedBweList = new ArrayList<>();
        private long frameRateInput;
        private long frameRateSent;
        private long qpSum;
        private long streamerReportTime;

        private static class Bwe {
            public long estimatedBitrate;
            public long estimatedTime;

            public Bwe(long j10, long j11) {
                this.estimatedBitrate = j11;
                this.estimatedTime = j10;
            }
        }

        public StreamerWeaklyNetInfo(long j10, long j11, long j12, long j13, long j14) {
            this.streamerReportTime = j10;
            this.frameRateInput = j11;
            this.frameRateSent = j12;
            this.avgEncodeMs = j13;
            this.qpSum = j14;
        }

        public void addBweInfo(long j10, long j11) {
            this.estimatedBweList.add(new Bwe(j10, j11));
        }
    }

    public void addStreamerWeaklyNetInfo(StreamerWeaklyNetInfo streamerWeaklyNetInfo) {
        this.streamerWeaklyNetList.add(streamerWeaklyNetInfo);
    }

    public long getLastReceivingAudioPackets() {
        return this.lastReceivingAudioPackets;
    }

    public int getRemoteToLocalClockOffset() {
        return this.remoteToLocalClockOffset;
    }

    public void reset() {
        this.receivingVideoBitrate = -1L;
        this.receivingAudioPacketsRate = -1L;
        this.maxJitter = -1L;
        this.minJitter = -1L;
        this.avgJitter = -1L;
        this.medianJitter = -1L;
        this.deltaJitter = -1L;
        this.receivingVideoPacketsRate = -1L;
        this.packetsLostRate = null;
        this.decodedWidth = -1L;
        this.decodedHeight = -1L;
        this.resolutionChangedTime = 0L;
        this.freezeIntervals = "-1:-1";
    }

    public void setAvgJitter(long j10) {
        this.avgJitter = j10;
    }

    public void setDeltaJitter(long j10) {
        this.deltaJitter = j10;
    }

    public void setFreezeIntervals(String str) {
        this.freezeIntervals = str;
    }

    public void setMaxJitter(long j10) {
        this.maxJitter = j10;
    }

    public void setMedianJitter(long j10) {
        this.medianJitter = j10;
    }

    public void setMinJitter(long j10) {
        this.minJitter = j10;
    }

    public void setPacketsLostRate(String str) {
        this.packetsLostRate = str;
    }

    public void setReceivingAudioPackets(long j10) {
        this.lastReceivingAudioPackets = this.receivingAudioPackets;
        this.receivingAudioPackets = j10;
    }

    public void setReceivingAudioPacketsRate(long j10) {
        this.receivingAudioPacketsRate = j10;
    }

    public void setReceivingRtt(long j10) {
        this.receivingRtt = j10;
    }

    public void setReceivingVideoBitrate(long j10) {
        this.receivingVideoBitrate = j10;
    }

    public void setReceivingVideoPacketsRate(long j10) {
        this.receivingVideoPacketsRate = j10;
    }

    public void setRemoteToLocalClockOffset(int i10) {
        this.remoteToLocalClockOffset = i10;
    }

    public void setReportTime(long j10) {
        this.reportTime = j10;
    }

    public void setResolutionChanged(long j10, long j11, long j12) {
        this.decodedWidth = j10;
        this.decodedHeight = j11;
        this.resolutionChangedTime = j12;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.reportTime);
        stringBuffer.append("|");
        stringBuffer.append(this.receivingVideoBitrate);
        stringBuffer.append("|");
        stringBuffer.append(this.receivingAudioPacketsRate);
        stringBuffer.append(":");
        stringBuffer.append(this.maxJitter);
        stringBuffer.append(":");
        stringBuffer.append(this.minJitter);
        stringBuffer.append(":");
        stringBuffer.append(this.avgJitter);
        stringBuffer.append(":");
        stringBuffer.append(this.medianJitter);
        stringBuffer.append(":");
        stringBuffer.append(this.deltaJitter);
        stringBuffer.append("|");
        stringBuffer.append(this.receivingVideoPacketsRate);
        stringBuffer.append(":");
        stringBuffer.append(this.packetsLostRate);
        stringBuffer.append("|");
        stringBuffer.append(this.decodedWidth);
        stringBuffer.append(":");
        stringBuffer.append(this.decodedHeight);
        stringBuffer.append(":");
        stringBuffer.append(this.resolutionChangedTime);
        stringBuffer.append("|");
        stringBuffer.append(this.receivingRtt);
        stringBuffer.append("|");
        stringBuffer.append(this.freezeIntervals);
        for (StreamerWeaklyNetInfo streamerWeaklyNetInfo : this.streamerWeaklyNetList) {
            stringBuffer.append("#");
            stringBuffer.append(streamerWeaklyNetInfo.streamerReportTime);
            stringBuffer.append("|");
            stringBuffer.append(streamerWeaklyNetInfo.frameRateInput);
            stringBuffer.append("|");
            stringBuffer.append(streamerWeaklyNetInfo.frameRateSent);
            stringBuffer.append("|");
            stringBuffer.append(streamerWeaklyNetInfo.avgEncodeMs);
            stringBuffer.append("|");
            stringBuffer.append(streamerWeaklyNetInfo.qpSum);
            stringBuffer.append("|");
            if (streamerWeaklyNetInfo.estimatedBweList.size() > 0) {
                String str = "";
                for (StreamerWeaklyNetInfo.Bwe bwe : streamerWeaklyNetInfo.estimatedBweList) {
                    stringBuffer.append(str);
                    stringBuffer.append(bwe.estimatedTime);
                    stringBuffer.append(":");
                    stringBuffer.append(bwe.estimatedBitrate);
                    str = ";";
                }
                streamerWeaklyNetInfo.estimatedBweList.clear();
            } else {
                stringBuffer.append("-1:-1");
            }
        }
        if (this.streamerWeaklyNetList.size() > 0) {
            this.streamerWeaklyNetList.clear();
        }
        return stringBuffer.toString();
    }
}
