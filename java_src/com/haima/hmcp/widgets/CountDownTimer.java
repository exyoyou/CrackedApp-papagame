package com.haima.hmcp.widgets;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.haima.hmcp.beans.ReportTimer;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.JsonUtil;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CountDownTimer {
    private static final int MSG = 1;
    private final long mCountdownInterval;
    private final long mMillisInFuture;
    private long mStopTimeInFuture;
    private boolean mCancelled = false;

    @SuppressLint({"HandlerLeak"})
    private Handler mHandler = new Handler() { // from class: com.haima.hmcp.widgets.CountDownTimer.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long j10;
            synchronized (CountDownTimer.this) {
                if (CountDownTimer.this.mCancelled) {
                    CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer(CountDownTimer.this.mTag, "" + CountDownTimer.this.hashCode(), CountDownTimer.this.mMillisInFuture, false, ReportTimer.Action.CANCEL)));
                    return;
                }
                long jElapsedRealtime = CountDownTimer.this.mStopTimeInFuture - SystemClock.elapsedRealtime();
                long j11 = 0;
                if (jElapsedRealtime <= 0) {
                    CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer(CountDownTimer.this.mTag, "" + CountDownTimer.this.hashCode(), CountDownTimer.this.mMillisInFuture, false, ReportTimer.Action.EXECUTE)));
                    CountDownTimer.this.onFinish();
                } else {
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    CountDownTimer.this.onTick(jElapsedRealtime);
                    long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    if (jElapsedRealtime < CountDownTimer.this.mCountdownInterval) {
                        j10 = jElapsedRealtime - jElapsedRealtime3;
                        if (j10 < 0) {
                        }
                        sendMessageDelayed(obtainMessage(1), j11);
                    } else {
                        j10 = CountDownTimer.this.mCountdownInterval - jElapsedRealtime3;
                        while (j10 < 0) {
                            j10 += CountDownTimer.this.mCountdownInterval;
                        }
                    }
                    j11 = j10;
                    sendMessageDelayed(obtainMessage(1), j11);
                }
            }
        }
    };
    private String mTag = getClass().getSimpleName();

    public CountDownTimer(long j10, long j11) {
        this.mMillisInFuture = j10;
        this.mCountdownInterval = j11;
    }

    public final synchronized void cancel() {
        this.mCancelled = true;
        this.mHandler.removeMessages(1);
        CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer(this.mTag, "" + hashCode(), this.mMillisInFuture, false, ReportTimer.Action.CANCEL)));
    }

    public abstract void onFinish();

    public abstract void onTick(long j10);

    public final synchronized CountDownTimer start() {
        this.mCancelled = false;
        if (this.mMillisInFuture <= 0) {
            onFinish();
            return this;
        }
        this.mStopTimeInFuture = SystemClock.elapsedRealtime() + this.mMillisInFuture;
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(1));
        CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer(this.mTag, "" + hashCode(), this.mMillisInFuture, false, ReportTimer.Action.CREATE)));
        return this;
    }
}
