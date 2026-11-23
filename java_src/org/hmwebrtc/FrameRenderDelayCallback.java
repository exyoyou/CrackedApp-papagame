package org.hmwebrtc;

import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
public class FrameRenderDelayCallback {
    private static final String TAG = "FrameRenderDelayCallback";
    private final int BUFFER_SIZE = 120;
    private long[] buffer = new long[120];
    private Object frameCallbackLock = new Object();
    private EglRenderer.FrameCallback mFrameCallback;
    private int popIndex;
    private int pushIndex;
    RenderDataThread renderDataThread;

    private class RenderDataThread extends Thread {
        private RenderDataThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (!Thread.currentThread().isInterrupted()) {
                try {
                    Thread.sleep(1000L);
                    FrameRenderDelayCallback.this.popData();
                } catch (InterruptedException unused) {
                }
            }
            Logging.d(FrameRenderDelayCallback.TAG, "RenderDataThread interrupte");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void popData() {
        int i10 = this.popIndex;
        int i11 = this.pushIndex;
        if (i10 == i11) {
            return;
        }
        if (i11 > i10) {
            long[] jArrCopyOfRange = Arrays.copyOfRange(this.buffer, i10, i11);
            synchronized (this.frameCallbackLock) {
                EglRenderer.FrameCallback frameCallback = this.mFrameCallback;
                if (frameCallback != null) {
                    frameCallback.onFrameRendered(jArrCopyOfRange);
                }
            }
        } else {
            long[] jArrCopyOfRange2 = Arrays.copyOfRange(this.buffer, i10, 119);
            synchronized (this.frameCallbackLock) {
                EglRenderer.FrameCallback frameCallback2 = this.mFrameCallback;
                if (frameCallback2 != null) {
                    frameCallback2.onFrameRendered(jArrCopyOfRange2);
                }
            }
            long[] jArrCopyOfRange3 = Arrays.copyOfRange(this.buffer, 0, i11);
            EglRenderer.FrameCallback frameCallback3 = this.mFrameCallback;
            if (frameCallback3 != null && frameCallback3 != null) {
                frameCallback3.onFrameRendered(jArrCopyOfRange3);
            }
        }
        this.popIndex = i11;
    }

    public void pushRenderedTime(long j10) {
        int i10 = this.pushIndex;
        long[] jArr = this.buffer;
        if (i10 >= jArr.length - 1) {
            this.pushIndex = 0;
        }
        int i11 = this.pushIndex;
        this.pushIndex = i11 + 1;
        jArr[i11] = j10;
    }

    public void setFrameCallback(EglRenderer.FrameCallback frameCallback) {
        synchronized (this.frameCallbackLock) {
            this.mFrameCallback = frameCallback;
        }
        RenderDataThread renderDataThread = this.renderDataThread;
        if (renderDataThread != null) {
            renderDataThread.interrupt();
        }
        if (frameCallback != null) {
            RenderDataThread renderDataThread2 = new RenderDataThread();
            this.renderDataThread = renderDataThread2;
            renderDataThread2.start();
        }
    }
}
