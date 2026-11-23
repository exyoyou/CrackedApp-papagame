package com.haima.hmcp.utils;

import com.haima.hmcp.Constants;
import com.haima.hmcp.cloud.BaseCloudFileManager;

/* JADX INFO: loaded from: classes5.dex */
public class FrameNetDelayInfo {
    private static volatile FrameNetDelayInfo netDelayInfo;
    private int gamePtsFps;
    private long lastPts;
    private long mClockDiffTime;
    private int pingPongTime;
    private long ptsStartMs;
    private int receivePtsCount;
    private boolean resetDiffTime;
    private long screenStreamStartTime;
    private long totalNetMs = 0;
    private long avgNetMs = 0;

    private FrameNetDelayInfo() {
    }

    public static FrameNetDelayInfo getInstance() {
        if (netDelayInfo == null) {
            netDelayInfo = new FrameNetDelayInfo();
        }
        return netDelayInfo;
    }

    public int getAvgNetMs() {
        return (int) this.avgNetMs;
    }

    public long getClockDiffTime() {
        return this.mClockDiffTime;
    }

    public int getGamePtsFps() {
        return this.gamePtsFps;
    }

    public int getPingPongTime() {
        return this.pingPongTime;
    }

    public long getScreenStreamStartTime() {
        return this.screenStreamStartTime;
    }

    public boolean isResetDiffTime() {
        return this.resetDiffTime;
    }

    public void resetDiffTime(boolean z10) {
        this.resetDiffTime = z10;
    }

    public void setDiffTime(long j10, int i10, long j11) {
        if (!this.resetDiffTime) {
            long j12 = this.mClockDiffTime;
            if (j10 >= j12 && j12 != 0 && this.screenStreamStartTime == j11) {
                return;
            }
        }
        LogUtils.i(Constants.DEBUG_DELAY, "当前 Update diffTime =" + j10 + " & pingPongDelay = " + i10);
        this.mClockDiffTime = j10;
        this.pingPongTime = i10;
        this.screenStreamStartTime = j11;
        this.resetDiffTime = false;
    }

    public void updateNetPts(long j10, long j11) {
        long j12 = j10 - this.lastPts;
        long j13 = this.mClockDiffTime;
        if (j13 == 0) {
            return;
        }
        if (j10 == 0) {
            this.resetDiffTime = true;
        }
        int iAbs = (int) Math.abs((j10 - j11) - j13);
        LogUtils.e(Constants.DEBUG_DELAY, "T1 pst = " + j10 + " & time = " + j11 + " & 网络延时：" + iAbs + "  & Count = " + this.receivePtsCount + " & diffTime = " + this.mClockDiffTime + " & pingPongTime：" + this.pingPongTime);
        int i10 = this.pingPongTime;
        if (iAbs < i10 / 2) {
            iAbs = i10 / 2;
        }
        this.lastPts = j10;
        if (j12 > 100 || j12 < 0) {
            this.ptsStartMs = -1L;
        }
        long j14 = this.ptsStartMs;
        if (j14 == -1) {
            this.receivePtsCount = 1;
            this.ptsStartMs = j10;
            this.totalNetMs = iAbs;
            return;
        }
        if (j10 - j14 < 1000) {
            this.receivePtsCount++;
            this.totalNetMs += (long) iAbs;
            return;
        }
        if (j10 - j14 > BaseCloudFileManager.ACK_TIMEOUT) {
            this.totalNetMs = 0L;
            this.receivePtsCount = 0;
            this.ptsStartMs = -1L;
            return;
        }
        int i11 = this.receivePtsCount;
        this.gamePtsFps = (int) ((((long) i11) * (j10 - j14)) / 1000);
        int i12 = i11 + 1;
        this.receivePtsCount = i12;
        long j15 = this.totalNetMs + ((long) iAbs);
        this.totalNetMs = j15;
        if (i12 > 0) {
            this.avgNetMs = j15 / ((long) i12);
        }
        LogUtils.e(Constants.DEBUG_DELAY, " diff.time 平均延时 = " + this.avgNetMs + " & gamePtsFps = " + this.gamePtsFps);
        this.totalNetMs = 0L;
        this.receivePtsCount = 0;
        this.ptsStartMs = -1L;
    }
}
