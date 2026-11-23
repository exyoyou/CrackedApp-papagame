package com.haima.hmcp.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.haima.hmcp.beans.FrameInfo;
import com.haima.hmcp.listeners.HmFrameCallback;

/* JADX INFO: loaded from: classes5.dex */
public class FrameDataWorker extends HandlerThread {
    private static final String TAG = "FrameDataWorker";
    private volatile long frameId;
    private Handler mHander;
    private HmFrameCallback mHmFrameCallback;
    private boolean working;

    public class FrameDataHandler extends Handler {
        public FrameDataHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            if (FrameDataWorker.this.mHmFrameCallback == null || (obj = message.obj) == null) {
                return;
            }
            long[] jArr = (long[]) obj;
            for (int i10 = 0; i10 < jArr.length && FrameDataWorker.this.mHmFrameCallback != null; i10++) {
                FrameDataWorker.this.mHmFrameCallback.onFrame(new FrameInfo().setId(FrameDataWorker.access$104(FrameDataWorker.this)).setRenderedTime(jArr[i10]).toString());
            }
        }
    }

    public FrameDataWorker() {
        super("FrameDataProxy");
        this.working = false;
    }

    static /* synthetic */ long access$104(FrameDataWorker frameDataWorker) {
        long j10 = frameDataWorker.frameId + 1;
        frameDataWorker.frameId = j10;
        return j10;
    }

    public void initFrameId(long j10) {
        this.frameId = j10;
    }

    public boolean isWorking() {
        return this.working;
    }

    public void push(long[] jArr) {
        Handler handler = this.mHander;
        if (handler == null || !this.working) {
            LogUtils.w(TAG, "push: Handler is null or worker is not working, ignoring push request");
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.obj = jArr;
        this.mHander.sendMessage(messageObtainMessage);
    }

    @Override // android.os.HandlerThread
    public boolean quit() {
        LogUtils.d(TAG, "quit.");
        this.mHmFrameCallback = null;
        this.working = false;
        Handler handler = this.mHander;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHander = null;
        }
        return super.quit();
    }

    public void setHmFrameCallback(HmFrameCallback hmFrameCallback) {
        this.mHmFrameCallback = hmFrameCallback;
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        LogUtils.d(TAG, "start.");
        this.working = true;
        super.start();
        try {
            getLooper();
            if (this.mHander == null) {
                this.mHander = new FrameDataHandler(getLooper());
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "Failed to start FrameDataWorker", e10);
            this.working = false;
        }
    }
}
