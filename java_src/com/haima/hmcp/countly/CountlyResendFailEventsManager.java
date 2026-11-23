package com.haima.hmcp.countly;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.LogUtils;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes5.dex */
public class CountlyResendFailEventsManager {
    private static volatile CountlyResendFailEventsManager reSendFailEventManager;
    private Map mLastEvent;
    private Timer mResendTimer;
    private SendFailEventTimerTask mSendFailEventTimerTask;
    private final String TAG = getClass().getSimpleName();
    private final int DELAY_TIME = 1000;
    private final int PERIOD_TIME = 5000;
    private final int MAX_QUEUE_SIZE = 500;
    private final int UPLOAD_MAX_LENGTH = 307200;
    private ConcurrentLinkedQueue<Map> eventQueue = new ConcurrentLinkedQueue<>();

    private class SendFailEventTimerTask extends TimerTask {
        private SendFailEventTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                CountlyResendFailEventsManager.this.sendFailEvents();
            } catch (Exception e10) {
                LogUtils.e(CountlyResendFailEventsManager.this.TAG, e10.getMessage());
            }
        }
    }

    private CountlyResendFailEventsManager() {
    }

    private void addEvent(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        String str = (String) map.get("eventID");
        String str2 = (String) map.get(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP);
        if (!TextUtils.isEmpty(str) && CountlyUtil.isCacheEvent(str)) {
            if (needOverWritten(str)) {
                removeLastEvent();
                LogUtils.d(this.TAG, "OverWritten last event, eventID=" + str);
            }
            CountlyUtil.recordToDisk(str, str2, map);
            if (this.eventQueue.size() < 500) {
                this.eventQueue.add(map);
            } else {
                LogUtils.e(this.TAG, "eventQueue is full");
            }
            this.mLastEvent = map;
            LogUtils.d(this.TAG, "addEvent()  eventQueue count :" + this.eventQueue.size() + " eventID" + map.get("eventID"));
        }
    }

    public static CountlyResendFailEventsManager getInstance() {
        if (reSendFailEventManager == null) {
            synchronized (CountlyResendFailEventsManager.class) {
                if (reSendFailEventManager == null) {
                    reSendFailEventManager = new CountlyResendFailEventsManager();
                }
            }
        }
        return reSendFailEventManager;
    }

    private boolean needOverWritten(String str) {
        Map map;
        if (TextUtils.isEmpty(str) || (map = this.mLastEvent) == null) {
            return false;
        }
        return CountlyUtil.isOverWrittenEvent(str) && str.equals((String) map.get("eventID"));
    }

    private void removeLastEvent() {
        ConcurrentLinkedQueue<Map> concurrentLinkedQueue = this.eventQueue;
        if (concurrentLinkedQueue != null && !concurrentLinkedQueue.isEmpty()) {
            this.eventQueue.remove(this.mLastEvent);
        }
        CountlyUtil.deleteDiskCacheEvent(this.mLastEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFailEvents() {
        ConcurrentLinkedQueue<Map> concurrentLinkedQueue;
        try {
            if (CountlyUtil.httpCountly == null || (concurrentLinkedQueue = this.eventQueue) == null || concurrentLinkedQueue.isEmpty()) {
                LogUtils.d(this.TAG, "not need send eventQueue :" + this.eventQueue);
                return;
            }
            ConcurrentLinkedQueue<Map> concurrentLinkedQueue2 = new ConcurrentLinkedQueue<>();
            int length = 0;
            while (!this.eventQueue.isEmpty()) {
                Map mapPoll = this.eventQueue.poll();
                if (mapPoll != null) {
                    concurrentLinkedQueue2.add(mapPoll);
                    length += mapPoll.toString().length();
                    LogUtils.d(this.TAG, "uploadData-AddedLen:" + length);
                    if (length > 307200) {
                        break;
                    }
                }
            }
            CountlyUtil.httpCountly.postSendFailedEventData(Constants.COUNTYLY_EVENT_NAME, concurrentLinkedQueue2, concurrentLinkedQueue2.size());
        } catch (Exception e10) {
            LogUtils.e(this.TAG, e10.getMessage());
        }
    }

    public void addEvents(ConcurrentLinkedQueue<Map> concurrentLinkedQueue) {
        while (!concurrentLinkedQueue.isEmpty()) {
            Map mapPoll = concurrentLinkedQueue.poll();
            if (mapPoll != null) {
                addEvent(mapPoll);
            }
        }
    }

    public void startResend() {
        LogUtils.d(this.TAG, "startResend()");
        stopResend();
        this.mResendTimer = new Timer();
        if (this.mSendFailEventTimerTask == null) {
            this.mSendFailEventTimerTask = new SendFailEventTimerTask();
        }
        this.mResendTimer.schedule(this.mSendFailEventTimerTask, 1000L, 5000L);
    }

    public void stopResend() {
        Timer timer = this.mResendTimer;
        if (timer != null) {
            timer.cancel();
            this.mResendTimer = null;
        }
        SendFailEventTimerTask sendFailEventTimerTask = this.mSendFailEventTimerTask;
        if (sendFailEventTimerTask != null) {
            sendFailEventTimerTask.cancel();
            this.mSendFailEventTimerTask = null;
        }
    }
}
