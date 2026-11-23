package com.haima.hmcp.business;

import android.content.Context;
import android.os.Handler;
import com.haima.hmcp.beans.ReportTimer;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseTransaction {
    protected Handler mMainHandler;
    protected String mTaskName;
    private final String TAG = BaseTransaction.class.getSimpleName();
    protected BaseTimerTask mTask = null;
    protected int mTimeOutSeconds = 5;

    public abstract class BaseTimerTask implements Runnable {
        protected boolean cancel = false;

        public BaseTimerTask() {
        }

        public void cancel() {
            this.cancel = true;
        }

        public boolean isCancel() {
            return this.cancel;
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public BaseTransaction(Context context, String str) {
        this.mTaskName = str;
        this.mMainHandler = new Handler(context.getMainLooper());
    }

    protected void cancelTimerTask() {
        if (this.mTask == null) {
            return;
        }
        LogUtils.d(this.TAG, "cancel timer:" + this.mTaskName);
        CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer(this.mTaskName, "" + this.mTask.hashCode(), this.mTimeOutSeconds * 1000, false, ReportTimer.Action.CANCEL)));
        this.mTask.cancel();
        this.mMainHandler.removeCallbacks(this.mTask);
        this.mTask = null;
    }

    public abstract BaseTimerTask createTask();

    protected boolean isTaskOpen() {
        BaseTimerTask baseTimerTask = this.mTask;
        return (baseTimerTask == null || baseTimerTask.isCancel()) ? false : true;
    }

    protected void startTimerTask() {
        Handler handler;
        cancelTimerTask();
        LogUtils.d(this.TAG, "start task:" + this.mTaskName);
        BaseTimerTask baseTimerTaskCreateTask = createTask();
        this.mTask = baseTimerTaskCreateTask;
        if (baseTimerTaskCreateTask == null || (handler = this.mMainHandler) == null) {
            CountlyUtil.recordErrorEvent("baseTransaction cannot start timerTask");
            return;
        }
        handler.postDelayed(baseTimerTaskCreateTask, this.mTimeOutSeconds * 1000);
        CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer(this.mTaskName, "" + this.mTask.hashCode(), this.mTimeOutSeconds * 1000, false, ReportTimer.Action.CREATE)));
    }
}
