package com.haima.hmcp.business;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.StreamingCallback;
import com.haima.hmcp.rtc.widgets.beans.RtcVideoDelayInfo;
import com.haima.hmcp.rtmp.widgets.beans.RtmpVideoDelayInfo;
import com.haima.hmcp.utils.LogUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class StreamingMonitor {
    private static final long[] LAST_RECEIVE_FRAMES_BUFFER = new long[5];
    public static final String TAG = "StreamingMonitor";
    private boolean enable = false;
    private int frameInsertIndex;
    private int freezeCount;
    private MonitorHandler mHandler;
    private HandlerThread mHandlerThread;
    private StreamingCallback mStreamingCallback;

    class MonitorHandler extends Handler {
        public MonitorHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            StreamingMonitor.this.handleData((VideoDelayInfo) message.obj);
        }
    }

    public StreamingMonitor() {
        LogUtils.d(TAG, "create instance...");
        this.freezeCount = 0;
        this.frameInsertIndex = 0;
    }

    private boolean checkReceiveFramesValid() {
        for (long j10 : LAST_RECEIVE_FRAMES_BUFFER) {
            if (j10 == 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleData(VideoDelayInfo videoDelayInfo) {
        long receiveFrames;
        long decodeFrames;
        if (videoDelayInfo instanceof RtcVideoDelayInfo) {
            RtcVideoDelayInfo rtcVideoDelayInfo = (RtcVideoDelayInfo) videoDelayInfo;
            receiveFrames = rtcVideoDelayInfo.getFrameRateOutput();
            decodeFrames = rtcVideoDelayInfo.getFrameRateDecode();
        } else if (!(videoDelayInfo instanceof RtmpVideoDelayInfo)) {
            LogUtils.d(TAG, "unknown delay info");
            return;
        } else {
            RtmpVideoDelayInfo rtmpVideoDelayInfo = (RtmpVideoDelayInfo) videoDelayInfo;
            receiveFrames = rtmpVideoDelayInfo.getReceiveFrames();
            decodeFrames = rtmpVideoDelayInfo.getDecodeFrames();
        }
        int i10 = this.frameInsertIndex;
        long[] jArr = LAST_RECEIVE_FRAMES_BUFFER;
        if (i10 >= jArr.length) {
            this.frameInsertIndex = 0;
        }
        int i11 = this.frameInsertIndex;
        this.frameInsertIndex = i11 + 1;
        jArr[i11] = receiveFrames;
        if (decodeFrames == 0) {
            this.freezeCount++;
        } else {
            this.freezeCount = 0;
        }
        if (Constants.IS_DEBUG) {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : jArr) {
                sb2.append(j10);
                sb2.append(",");
            }
            LogUtils.d(TAG, "freezeCount: " + this.freezeCount + "; receive frames: " + receiveFrames + "; decode frames: " + decodeFrames + "; frames buffer[" + sb2.substring(0, sb2.toString().length() - 1) + "] ");
        }
        if (this.freezeCount >= 20 && checkReceiveFramesValid() && this.mStreamingCallback != null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_STREAMING_FREEZE);
            this.mStreamingCallback.onFreeze();
            reset();
        }
    }

    private void releaseHandler() {
        MonitorHandler monitorHandler = this.mHandler;
        if (monitorHandler != null) {
            monitorHandler.removeCallbacksAndMessages(null);
        }
        this.mHandler = null;
        HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        this.mHandlerThread = null;
    }

    private void reset() {
        this.freezeCount = 0;
        this.frameInsertIndex = 0;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void prepare() {
        HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread == null || !handlerThread.isAlive()) {
            HandlerThread handlerThread2 = this.mHandlerThread;
            if (handlerThread2 != null && !handlerThread2.isAlive()) {
                releaseHandler();
            }
            LogUtils.d(TAG, "prepare...");
            HandlerThread handlerThread3 = new HandlerThread("streaming-monitor");
            this.mHandlerThread = handlerThread3;
            handlerThread3.start();
            this.mHandler = new MonitorHandler(this.mHandlerThread.getLooper());
        }
    }

    public void put(VideoDelayInfo videoDelayInfo) {
        MonitorHandler monitorHandler;
        if (!this.enable) {
            LogUtils.d(TAG, "is not enable, can not work");
            return;
        }
        if (this.mStreamingCallback == null || videoDelayInfo == null || (monitorHandler = this.mHandler) == null) {
            return;
        }
        Message messageObtainMessage = monitorHandler.obtainMessage();
        messageObtainMessage.obj = videoDelayInfo;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void release() {
        this.mStreamingCallback = null;
        releaseHandler();
    }

    public void setConfig(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        String str = map.get(Constants.STREAMING_MONITOR_ENABLE);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.enable = Integer.parseInt(str) > 0;
        } catch (NumberFormatException unused) {
            this.enable = false;
        }
    }

    public void setStreamingCallback(StreamingCallback streamingCallback) {
        this.mStreamingCallback = streamingCallback;
    }

    public void stop() {
        MonitorHandler monitorHandler = this.mHandler;
        if (monitorHandler != null) {
            monitorHandler.removeCallbacksAndMessages(null);
        }
    }
}
