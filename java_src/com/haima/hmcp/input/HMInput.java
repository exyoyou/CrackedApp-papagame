package com.haima.hmcp.input;

import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.ReportPingPong;
import com.haima.hmcp.business.IntervalUtils;
import com.haima.hmcp.business.WebSocketInstanceType;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.input.listener.HMInputCallback;
import com.haima.hmcp.input.sender.IHMInputSender;
import com.haima.hmcp.utils.FrameNetDelayInfo;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;

/* JADX INFO: loaded from: classes5.dex */
public class HMInput {
    private static final int PING_DEFAULT_DELAY = 100;
    private static final int PING_DEFAULT_INTERVAL = 60000;
    protected static final String TAG = "HMInput";
    protected IntervalUtils intervalUtils;
    protected HMInputConfig mHmInputConfig;
    protected IHMInputSender mHmInputSender;
    protected HMInputCallback mInputCallback;
    protected PingTask mPingTask;
    protected long mSendPing2Time;
    private int mPingDelay = 100;
    protected long clockDiffTime = 0;
    protected long sendPingTime = -1;
    protected boolean isClockDiffSuccess = false;
    protected int mPing2Interval = 60000;
    protected final Handler mHandler = new Handler();

    private class PingTask implements Runnable {
        private PingTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntervalUtils intervalUtils = HMInput.this.intervalUtils;
            if (intervalUtils == null || !intervalUtils.isInitSuccess()) {
                HMInput.this.sendPingTime = System.currentTimeMillis();
                HMInput.this.sendMessage("ping:" + HMInput.this.sendPingTime, false);
            } else {
                HMInput.this.mSendPing2Time = SystemClock.uptimeMillis();
                HMInput.this.sendMessage(Constants.PING2 + HMInput.this.mSendPing2Time, false);
            }
            HMInput hMInput = HMInput.this;
            Handler handler = hMInput.mHandler;
            if (handler != null) {
                handler.postDelayed(this, hMInput.intervalUtils != null ? hMInput.mPing2Interval : hMInput.mHmInputConfig.inputPingInternal);
            }
        }
    }

    private void changeSendPingIntervalByPingpongTime(long j10) {
        int intervalTimeByUseTime;
        IntervalUtils intervalUtils = this.intervalUtils;
        if (intervalUtils == null || (intervalTimeByUseTime = intervalUtils.getIntervalTimeByUseTime(j10)) == this.mPing2Interval) {
            return;
        }
        this.mPing2Interval = intervalTimeByUseTime;
        LogUtils.d(TAG, "pingpongTime : " + j10 + " changeSendPingIntervalByPingpongTime : " + this.mPing2Interval);
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPingTask);
            PingTask pingTask = new PingTask();
            this.mPingTask = pingTask;
            this.mHandler.postDelayed(pingTask, this.mPing2Interval);
        }
    }

    public void connect() {
        LogUtils.d(TAG, "connect");
        IHMInputSender iHMInputSender = this.mHmInputSender;
        if (iHMInputSender != null) {
            iHMInputSender.connect();
        }
    }

    public void disConnect() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("disConnect mHmInputSender is null? =");
        sb2.append(this.mHmInputSender == null);
        LogUtils.d(TAG, sb2.toString());
        IHMInputSender iHMInputSender = this.mHmInputSender;
        if (iHMInputSender != null) {
            iHMInputSender.disConnected();
        }
    }

    public boolean isConnected() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("disConnect mHmInputSender is null? =");
        sb2.append(this.mHmInputSender == null);
        LogUtils.d(TAG, sb2.toString());
        IHMInputSender iHMInputSender = this.mHmInputSender;
        return iHMInputSender != null && iHMInputSender.isConnected();
    }

    public void parseMsg(String str) {
        HMInputCallback hMInputCallback;
        String str2;
        LogUtils.d(TAG, "parseMsg payload:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!str.startsWith("pong2:")) {
            if (!str.startsWith("pong:")) {
                if (Utils.countlyMessage(WebSocketInstanceType.INPUT, str) || (hMInputCallback = this.mInputCallback) == null) {
                    return;
                }
                hMInputCallback.onTextMessage(str);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length > 1) {
                long j10 = Long.parseLong(strArrSplit[1]);
                if (j10 != this.sendPingTime) {
                    LogUtils.d(TAG, "sendPingTime = " + this.sendPingTime + " Pong contain sendPingTime : " + j10);
                    return;
                }
                long j11 = jCurrentTimeMillis - j10;
                LogUtils.i(TAG, "connectToInstance=>onTextMessage==lagTime===>" + j11);
                CountlyUtil.recordEvent(Constants.COUNTYLY_PING_PONG_RECORD, "" + j11);
                if (j11 >= this.mPingDelay) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_INPUT_TIME_OUT, "" + j11);
                    return;
                }
                return;
            }
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        String[] strArrSplit2 = (str + "," + jUptimeMillis).split(":");
        if (strArrSplit2.length > 1) {
            String[] strArrSplit3 = strArrSplit2[1].split(",");
            if (strArrSplit3.length >= 3) {
                long j12 = Long.parseLong(strArrSplit3[0]);
                LogUtils.d(TAG, "pong2RecTime :" + jUptimeMillis);
                if (j12 != this.mSendPing2Time) {
                    return;
                }
                long j13 = Long.parseLong(strArrSplit3[1]);
                String str3 = strArrSplit3[2];
                long jLongValue = !TextUtils.isEmpty(str3) ? Long.valueOf(str3).longValue() : -1L;
                long j14 = jUptimeMillis - j12;
                if (HmcpManager.getInstance().isRtcStream()) {
                    if (this.isClockDiffSuccess) {
                        str2 = TAG;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("==clockDiffTime first time hmInputCallback is null?");
                        sb2.append(this.mInputCallback == null);
                        String string = sb2.toString();
                        str2 = TAG;
                        LogUtils.d(str2, string);
                        this.isClockDiffSuccess = true;
                        HMInputCallback hMInputCallback2 = this.mInputCallback;
                        if (hMInputCallback2 != null) {
                            hMInputCallback2.onFirstDiffClockSuccess(0L);
                        } else {
                            LogUtils.d(str2, "mInputCallback is null");
                        }
                    }
                    changeSendPingIntervalByPingpongTime(j14);
                    HMInputCallback hMInputCallback3 = this.mInputCallback;
                    if (hMInputCallback3 != null) {
                        hMInputCallback3.onClockDiffChange(0L, (int) j14);
                    }
                    LogUtils.d(str2, ">:clockDiffTime " + this.clockDiffTime);
                } else if (j14 <= 0 || j14 >= 10000 || jLongValue <= 0) {
                    LogUtils.e(TAG, "clock diff error pingTime" + j12 + " pongTime :" + jUptimeMillis);
                } else {
                    if (j14 < FrameNetDelayInfo.getInstance().getPingPongTime() || FrameNetDelayInfo.getInstance().getPingPongTime() == 0 || FrameNetDelayInfo.getInstance().getScreenStreamStartTime() != jLongValue || FrameNetDelayInfo.getInstance().isResetDiffTime()) {
                        this.clockDiffTime = (j13 - jLongValue) - ((j12 + jUptimeMillis) / 2);
                        FrameNetDelayInfo.getInstance().setDiffTime(this.clockDiffTime, (int) j14, jLongValue);
                        changeSendPingIntervalByPingpongTime(j14);
                        LogUtils.d(TAG, ">:clockDiffTime " + this.clockDiffTime);
                    }
                    if (!this.isClockDiffSuccess) {
                        this.isClockDiffSuccess = true;
                        HMInputCallback hMInputCallback4 = this.mInputCallback;
                        if (hMInputCallback4 != null) {
                            hMInputCallback4.onFirstDiffClockSuccess(FrameNetDelayInfo.getInstance().getClockDiffTime());
                        }
                    }
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_PING_PONG_RECORD, JsonUtil.toJsonString(new ReportPingPong("" + j14)));
                if (j14 > this.mPingDelay) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_INPUT_TIME_OUT, "" + j14);
                }
            }
        }
    }

    public boolean sendMessage(String str) {
        return sendMessage(str, false);
    }

    public void sendPing2() {
        IntervalUtils intervalUtils = this.intervalUtils;
        boolean z10 = intervalUtils != null && intervalUtils.isInitSuccess();
        LogUtils.d(TAG, "sendPing2 initSuccess:" + z10);
        if (z10) {
            this.isClockDiffSuccess = false;
            this.clockDiffTime = 0L;
            this.mSendPing2Time = SystemClock.uptimeMillis();
            LogUtils.d(TAG, "sendPing2 mSendPing2Time:" + this.mSendPing2Time);
            this.mHmInputSender.sendMessage(Constants.PING2 + this.mSendPing2Time, false);
        }
    }

    public void setHMInputCallback(HMInputCallback hMInputCallback) {
        this.mInputCallback = hMInputCallback;
    }

    public void setHMInputConfig(HMInputConfig hMInputConfig) {
        this.mHmInputConfig = hMInputConfig;
        if (hMInputConfig == null) {
            this.mHmInputConfig = new HMInputConfig();
        }
        if (TextUtils.isEmpty(this.mHmInputConfig.pingpongConfig)) {
            return;
        }
        this.intervalUtils = new IntervalUtils(this.mHmInputConfig.pingpongConfig);
    }

    public void setSender(IHMInputSender iHMInputSender) {
        this.mHmInputSender = iHMInputSender;
        iHMInputSender.setConfig(this.mHmInputConfig);
        this.mHmInputSender.setCallback(new HMInputCallback() { // from class: com.haima.hmcp.input.HMInput.1
            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onClockDiffChange(long j10, int i10) {
                HMInputCallback hMInputCallback = HMInput.this.mInputCallback;
                if (hMInputCallback != null) {
                    hMInputCallback.onClockDiffChange(j10, i10);
                }
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onConnect(boolean z10) {
                HMInputCallback hMInputCallback = HMInput.this.mInputCallback;
                if (hMInputCallback != null) {
                    hMInputCallback.onConnect(z10);
                }
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onDisconnect(int i10, String str, boolean z10) {
                HMInputCallback hMInputCallback = HMInput.this.mInputCallback;
                if (hMInputCallback != null) {
                    hMInputCallback.onDisconnect(i10, str, z10);
                }
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onFirstDiffClockSuccess(long j10) {
                HMInputCallback hMInputCallback = HMInput.this.mInputCallback;
                if (hMInputCallback != null) {
                    hMInputCallback.onFirstDiffClockSuccess(j10);
                }
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onHeartBeatSuccess() {
                HMInputCallback hMInputCallback = HMInput.this.mInputCallback;
                if (hMInputCallback != null) {
                    hMInputCallback.onHeartBeatSuccess();
                }
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onTextMessage(String str) {
                LogUtils.i(HMInput.TAG, "onTextMessage==>" + str);
                HMInput.this.parseMsg(str);
            }
        });
    }

    public void startSendPing() {
        LogUtils.i(TAG, "===startSendPing===");
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPingTask);
            PingTask pingTask = new PingTask();
            this.mPingTask = pingTask;
            this.mHandler.postDelayed(pingTask, 0L);
        }
    }

    public void stopSendPing() {
        PingTask pingTask;
        LogUtils.d(TAG, "stopSendPing");
        Handler handler = this.mHandler;
        if (handler == null || (pingTask = this.mPingTask) == null) {
            return;
        }
        handler.removeCallbacks(pingTask);
        this.mPingTask = null;
    }

    public boolean sendMessage(String str, boolean z10) {
        LogUtils.d(TAG, "sendMessage payload:" + str + ",isDiscardable:" + z10);
        IHMInputSender iHMInputSender = this.mHmInputSender;
        return iHMInputSender != null && iHMInputSender.sendMessage(str, z10);
    }
}
