package com.haima.hmcp.cloud;

import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.CountDownTimer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CountDownTimerWrapper<T> {
    private static final String TAG = "CountDownTimerWrapper";
    private CountDownTimerWrapper<T>.OrderCountDownTimer mCountDownTimer;

    class OrderCountDownTimer extends CountDownTimer {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private T f33838t;

        OrderCountDownTimer(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            LogUtils.d(CountDownTimerWrapper.TAG, "cloud-file: : order time out");
            CountDownTimerWrapper.this.onTimeOut(this.f33838t);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }

        public void setData(T t10) {
            this.f33838t = t10;
        }
    }

    public void cancelTimeCountDown() {
        LogUtils.d(TAG, "cloud-file: : cancel order timer");
        CountDownTimerWrapper<T>.OrderCountDownTimer orderCountDownTimer = this.mCountDownTimer;
        if (orderCountDownTimer == null) {
            return;
        }
        orderCountDownTimer.cancel();
        this.mCountDownTimer = null;
    }

    protected abstract void onTimeOut(T t10);

    public void startTimeCountDown(long j10, T t10) {
        LogUtils.d(TAG, "cloud-file: : start order timer");
        if (this.mCountDownTimer != null) {
            cancelTimeCountDown();
        }
        CountDownTimerWrapper<T>.OrderCountDownTimer orderCountDownTimer = new OrderCountDownTimer(j10, 100L);
        this.mCountDownTimer = orderCountDownTimer;
        orderCountDownTimer.setData(t10);
        this.mCountDownTimer.start();
    }
}
