package com.haima.hmcp.business;

import android.os.Build;
import android.view.MotionEvent;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class MouseMotionEventDispatcher {
    private static final long EVENT_OFFLINE_MINIMUM_TIME_MS = 1000;
    private static final String TAG = "MouseMotionEventDispatcher";
    private final HashMap<Long, EventData> genericMotionEventMap = new HashMap<>();
    private final HashMap<Long, EventData> touchMotionEventDownMap = new HashMap<>();
    private final HashMap<Long, EventData> touchMotionEventUpMap = new HashMap<>();
    private final ArrayList<EventData> eventQueue = new ArrayList<>();

    public static class EventData {
        public static final int TYPE_GENERIC_EVENT = 1;
        public static final int TYPE_TOUCH_DOWN_EVENT = 2;
        public static final int TYPE_TOUCH_UP_EVENT = 3;
        public int action;
        public int actionButton;
        public int buttonState;
        public int deviceId;
        public long downTime;
        public long eventTime;
        public boolean handle = false;
        public long timeStamp;
        public int type;

        public String toString() {
            return "EventData{action=" + this.action + ", actionButton=" + this.actionButton + ", buttonState=" + this.buttonState + ", eventTime=" + this.eventTime + ", downTime=" + this.downTime + ", deviceId=" + this.deviceId + ", handle=" + this.handle + ", timeStamp=" + this.timeStamp + ", type=" + this.type + '}';
        }
    }

    private enum EventType {
        NONE,
        DOWN,
        UP
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0029  */
    /* JADX WARN: Code duplicated, block: B:19:0x0064  */
    private EventType determineEventType(EventData eventData, EventData eventData2, EventData eventData3) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        if (eventData != null) {
            LogUtils.i(TAG, "genericMotionEvent: " + eventData);
            int i10 = eventData.action;
            if (i10 == 11) {
                z10 = false;
                z12 = true;
            } else if (i10 == 12) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (eventData2 != null) {
            LogUtils.i(TAG, "touchDownEvent: " + eventData2);
            if (eventData2.action == 0) {
                z12 = true;
            }
        }
        if (eventData3 != null) {
            LogUtils.i(TAG, "touchUpEvent: " + eventData3);
            z11 = eventData3.action != 1 ? z10 : true;
        }
        if (z12) {
            return EventType.DOWN;
        }
        return z11 ? EventType.UP : EventType.NONE;
    }

    private EventData getEventData(MotionEvent motionEvent) {
        EventData eventData = new EventData();
        eventData.action = motionEvent.getAction();
        if (Build.VERSION.SDK_INT >= 23) {
            eventData.actionButton = motionEvent.getActionButton();
        }
        eventData.buttonState = motionEvent.getButtonState();
        eventData.eventTime = motionEvent.getEventTime();
        eventData.downTime = motionEvent.getDownTime();
        eventData.deviceId = motionEvent.getDeviceId();
        return eventData;
    }

    private boolean handleDownEvent(EventData eventData, EventData eventData2) {
        if (eventData != null) {
            if (eventData2 != null && eventData2.handle) {
                LogUtils.i(TAG, "generic don`t handle down event");
                return false;
            }
            eventData.handle = true;
            if (eventData2 != null) {
                eventData2.handle = true;
            }
            LogUtils.i(TAG, "handle-event down generic");
            return true;
        }
        if (eventData2 == null) {
            return false;
        }
        if (eventData2.handle) {
            LogUtils.i(TAG, "touch can`t handle down event");
            return false;
        }
        LogUtils.i(TAG, "handle-event down touch");
        eventData2.handle = true;
        return true;
    }

    private boolean handleMotionEvent(long j10) {
        EventData eventData = this.genericMotionEventMap.get(Long.valueOf(j10));
        EventData eventData2 = this.touchMotionEventDownMap.get(Long.valueOf(j10));
        EventData eventData3 = this.touchMotionEventUpMap.get(Long.valueOf(j10));
        EventType eventTypeDetermineEventType = determineEventType(eventData, eventData2, eventData3);
        if (eventTypeDetermineEventType != EventType.NONE) {
            return eventTypeDetermineEventType == EventType.DOWN ? handleDownEvent(eventData, eventData2) : handleUpEvent(eventData, eventData3);
        }
        LogUtils.i(TAG, "is not click event and ignore");
        return false;
    }

    private boolean handleUpEvent(EventData eventData, EventData eventData2) {
        if (eventData != null && eventData.handle) {
            LogUtils.i(TAG, "generic already handle up event");
            return false;
        }
        if (eventData2 != null && eventData2.handle) {
            LogUtils.i(TAG, "touch already handle up event");
            return false;
        }
        if (eventData != null) {
            eventData.handle = true;
            LogUtils.i(TAG, "handle-event up generic");
        }
        if (eventData2 != null) {
            eventData2.handle = true;
            LogUtils.i(TAG, "handle-event up touch");
        }
        processEventQueue();
        return true;
    }

    private void processEventQueue() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i10 = 0; i10 <= 5 && !this.eventQueue.isEmpty(); i10++) {
            EventData eventData = this.eventQueue.get(0);
            if (Math.abs(jCurrentTimeMillis - eventData.timeStamp) < 1000) {
                return;
            }
            this.eventQueue.remove(0);
            int i11 = eventData.type;
            if (i11 == 1) {
                this.genericMotionEventMap.remove(Long.valueOf(eventData.eventTime));
            } else if (i11 == 2) {
                this.touchMotionEventDownMap.remove(Long.valueOf(eventData.eventTime));
            } else {
                this.touchMotionEventUpMap.remove(Long.valueOf(eventData.eventTime));
            }
        }
    }

    public boolean genericMotionEvent(MotionEvent motionEvent) {
        String str = TAG;
        LogUtils.i(str, "onGenericMotionEvent called");
        if (!isMouse(motionEvent)) {
            LogUtils.i(str, "generic motion event is not mouse source");
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 11 && action != 12) {
            LogUtils.i(str, "generic motion event action is not press or release");
            return false;
        }
        LogUtils.i(str, "trash size: " + this.eventQueue.size());
        LogUtils.i(str, "genericMotionEventMap size: " + this.genericMotionEventMap.size());
        EventData eventData = getEventData(motionEvent);
        eventData.type = 1;
        eventData.timeStamp = System.currentTimeMillis();
        this.genericMotionEventMap.put(Long.valueOf(eventData.eventTime), eventData);
        this.eventQueue.add(eventData);
        return handleMotionEvent(eventData.eventTime);
    }

    public boolean isMouse(MotionEvent motionEvent) {
        return (motionEvent.getSource() & 8194) == 8194;
    }

    public boolean touchMotionEvent(MotionEvent motionEvent) {
        String str = TAG;
        LogUtils.i(str, "onTouchMotionEvent called");
        if (!isMouse(motionEvent)) {
            LogUtils.i(str, "touch motion event is not mouse source");
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0 && action != 1) {
            LogUtils.i(str, "touch motion event action is not down or up");
            return false;
        }
        LogUtils.i(str, "trash size: " + this.eventQueue.size());
        LogUtils.i(str, "touchMotionEventDownMap size: " + this.touchMotionEventDownMap.size());
        LogUtils.i(str, "touchMotionEventUpMap size: " + this.touchMotionEventUpMap.size());
        EventData eventData = getEventData(motionEvent);
        eventData.timeStamp = System.currentTimeMillis();
        if (action == 0) {
            eventData.type = 2;
            this.touchMotionEventDownMap.put(Long.valueOf(eventData.eventTime), eventData);
        } else {
            eventData.type = 3;
            this.touchMotionEventUpMap.put(Long.valueOf(eventData.eventTime), eventData);
        }
        this.eventQueue.add(eventData);
        return handleMotionEvent(eventData.eventTime);
    }
}
