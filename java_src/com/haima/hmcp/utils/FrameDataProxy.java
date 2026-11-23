package com.haima.hmcp.utils;

import com.haima.hmcp.listeners.HmFrameCallback;
import java.util.Arrays;
import org.hmwebrtc.EglRenderer;

/* JADX INFO: loaded from: classes5.dex */
public class FrameDataProxy implements EglRenderer.FrameCallback {
    private static final String TAG = "FrameDataProxy";
    private FrameDataWorker mDataWorker;
    private long mFrameId = 0;
    private HmFrameCallback mHmFrameCallback;

    private void startWorker(HmFrameCallback hmFrameCallback) {
        FrameDataWorker frameDataWorker = new FrameDataWorker();
        this.mDataWorker = frameDataWorker;
        frameDataWorker.initFrameId(this.mFrameId);
        this.mDataWorker.setHmFrameCallback(hmFrameCallback);
        this.mDataWorker.start();
    }

    private void stopWorker() {
        FrameDataWorker frameDataWorker = this.mDataWorker;
        if (frameDataWorker == null) {
            return;
        }
        frameDataWorker.quit();
        this.mDataWorker = null;
    }

    public EglRenderer.FrameCallback getFrameCallbackImp() {
        if (this.mHmFrameCallback != null) {
            return this;
        }
        return null;
    }

    @Override // org.hmwebrtc.EglRenderer.FrameCallback
    public void onFrameRendered(long[] jArr) {
        FrameDataWorker frameDataWorker;
        if (jArr == null || jArr.length == 0 || (frameDataWorker = this.mDataWorker) == null || !frameDataWorker.isWorking()) {
            return;
        }
        this.mDataWorker.push(Arrays.copyOfRange(jArr, 0, jArr.length));
    }

    public void reset() {
        this.mFrameId = 0L;
        FrameDataWorker frameDataWorker = this.mDataWorker;
        if (frameDataWorker == null || !frameDataWorker.isWorking()) {
            return;
        }
        this.mDataWorker.initFrameId(this.mFrameId);
    }

    public void setHmFrameCallback(HmFrameCallback hmFrameCallback) {
        this.mHmFrameCallback = hmFrameCallback;
        stopWorker();
        if (hmFrameCallback == null) {
            return;
        }
        startWorker(hmFrameCallback);
    }
}
