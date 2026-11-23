package com.haima.hmcp.beans;

import org.webrtc.haima.HmFrameDelayInfo;

/* JADX INFO: loaded from: classes5.dex */
public class FrameDelayInfo {
    private int decodeTime = 0;
    private long maxDelayTime = 0;
    private int renderTime = 0;
    private int frameSize = 0;
    private long delayTime = 0;
    private long nowDelayTime = 0;
    private int reciveFrameCount = 0;
    private long receiveFrameSize = 0;
    private int gameFps = 0;
    private int decodedFrameCount = 0;

    public int getDecodeTime() {
        return this.decodeTime;
    }

    public int getDecodedFrameCount() {
        return this.decodedFrameCount;
    }

    public long getDelayTime(long j10) {
        if (j10 == 0) {
            return 0L;
        }
        return Math.abs((int) (j10 - this.delayTime));
    }

    public int getFrameSize() {
        return this.frameSize;
    }

    public int getGameFps() {
        return this.gameFps;
    }

    public long getMaxDelayTime() {
        return this.maxDelayTime;
    }

    public int getNowDelayTime(long j10) {
        if (j10 == 0) {
            return 0;
        }
        return Math.abs((int) (j10 - this.nowDelayTime));
    }

    public long getReceiveFrameSize() {
        return this.receiveFrameSize;
    }

    public int getReciveFrameCount() {
        return this.reciveFrameCount;
    }

    public int getRenderTime() {
        return this.renderTime;
    }

    public void setDecodeTime(int i10) {
        this.decodeTime = i10;
    }

    public void setDecodedFrameCount(int i10) {
        this.decodedFrameCount = i10;
    }

    public void setDelayTime(long j10) {
        this.delayTime = j10;
    }

    public void setFrameSize(int i10) {
        this.frameSize = i10;
    }

    public void setGameFps(int i10) {
        this.gameFps = i10;
    }

    public void setHmFrameDelayInfo(HmFrameDelayInfo hmFrameDelayInfo) {
        this.decodeTime = hmFrameDelayInfo.getDecodeTime();
        this.renderTime = hmFrameDelayInfo.getRenderTime();
        this.frameSize = hmFrameDelayInfo.getFrameSize();
        this.delayTime = hmFrameDelayInfo.getDelayTime();
        this.nowDelayTime = hmFrameDelayInfo.getNowDelayTime();
        this.reciveFrameCount = hmFrameDelayInfo.getReciveFrameCount();
        this.receiveFrameSize = hmFrameDelayInfo.getReceiveFrameSize();
    }

    public void setNowDelayTime(long j10) {
        this.nowDelayTime = j10;
    }

    public void setReceiveFrameSize(long j10) {
        this.receiveFrameSize = j10;
    }

    public void setReciveFrameCount(int i10) {
        this.reciveFrameCount = i10;
    }

    public void setRenderTime(int i10) {
        this.renderTime = i10;
    }

    public String toString() {
        return " decodeTime : " + this.decodeTime + " maxDelayTime : " + this.maxDelayTime + " renderTime :" + this.renderTime + " delayTime : " + this.delayTime + " nowDelayTime : " + this.nowDelayTime + " frameSize : " + this.frameSize + "reciveFrameCount : " + this.reciveFrameCount + " receiveFrameSize : " + this.receiveFrameSize + "gameFps : " + this.gameFps;
    }
}
