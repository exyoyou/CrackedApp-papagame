package com.haima.hmcp.rtmp.widgets.beans;

import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.FrameDelayInfo;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.utils.FrameNetDelayInfo;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class RtmpVideoDelayInfo extends VideoDelayInfo {
    private long decodeFrames;
    private long decodeFramesCount;
    protected int decodeType = 1;
    private int receiveFrames;

    public RtmpVideoDelayInfo(FrameDelayInfo frameDelayInfo) {
        this.timeStamp = System.currentTimeMillis();
        this.netDelay = FrameNetDelayInfo.getInstance().getAvgNetMs();
        this.decodeDelay = frameDelayInfo.getDecodeTime();
        this.renderDelay = frameDelayInfo.getRenderTime();
        long delayTime = frameDelayInfo.getDelayTime(FrameNetDelayInfo.getInstance().getClockDiffTime());
        if (delayTime < 10) {
            this.delayTime = ((long) (FrameNetDelayInfo.getInstance().getPingPongTime() / 2)) + delayTime;
            LogUtils.i(Constants.DEBUG_DELAY, " 感知延迟 delayMs = " + delayTime + " & 校准后 = " + this.delayTime);
        } else {
            this.delayTime = delayTime;
        }
        int nowDelayTime = frameDelayInfo.getNowDelayTime(FrameNetDelayInfo.getInstance().getClockDiffTime());
        if (nowDelayTime < 10) {
            this.nowDelayTime = (FrameNetDelayInfo.getInstance().getPingPongTime() / 2) + nowDelayTime;
            LogUtils.i(Constants.DEBUG_DELAY, " 感知延迟 delayMs = " + nowDelayTime + " & 校准后 = " + this.nowDelayTime);
        } else {
            this.nowDelayTime = nowDelayTime;
        }
        this.frameSize = frameDelayInfo.getFrameSize();
        this.receiveFrameSize = frameDelayInfo.getReceiveFrameSize();
        this.receiveFrameCount = frameDelayInfo.getReciveFrameCount();
        this.gameFps = FrameNetDelayInfo.getInstance().getGamePtsFps();
        this.clockDiffUse = FrameNetDelayInfo.getInstance().getPingPongTime();
        this.decodeFrames = frameDelayInfo.getDecodedFrameCount();
        this.receiveFrameSize = frameDelayInfo.getReceiveFrameSize();
        this.decodeFramesCount = frameDelayInfo.getDecodedFrameCount();
    }

    public long getDecodeFrames() {
        return this.decodeFrames;
    }

    public long getDecodeFramesCount() {
        return this.decodeFramesCount;
    }

    public int getDecodeType() {
        return this.decodeType;
    }

    @Override // com.haima.hmcp.beans.VideoDelayInfo
    public String getPacketsLostRate() {
        return "";
    }

    public int getReceiveFrames() {
        return this.receiveFrames;
    }

    public void setDecodeFrames(long j10) {
        this.decodeFrames = j10;
    }

    public void setDecodeType(int i10) {
        this.decodeType = i10;
    }

    public void setReceiveFrames(int i10) {
        this.receiveFrames = i10;
    }

    public String toString() {
        return "\n网络耗时 ：" + this.netDelay + "ms\n客户端帧率 ：" + this.videoFps + "帧\n单帧延迟 ：" + this.delayTime + "ms\n解码类型(1硬解0软解) ：" + this.decodeType + "\n客户端带宽 ：" + VideoDelayInfo.formatedSize(this.bitRate) + "\n编码类型 ：" + getCodecName();
    }
}
