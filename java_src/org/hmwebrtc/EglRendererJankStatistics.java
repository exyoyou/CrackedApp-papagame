package org.hmwebrtc;

import org.hmwebrtc.utils.PerfdogJankCounter;
import org.hmwebrtc.utils.SimpleWorkThread;

/* JADX INFO: loaded from: classes10.dex */
class EglRendererJankStatistics {
    private static final int MAX_BUFFER_SIZE = 60;
    private PerfdogJankCounter mReceviedJankCounter;
    private Buffer mRecvTimstampBuffer;
    private PerfdogJankCounter mRenderJankCounter;
    private Buffer mRenderTimstampBuffer;
    private long[] mTmpDataArray;
    private SimpleWorkThread mWorkThread;

    private static class Buffer {
        int capacity;
        long[] data;
        int index;

        Buffer(int i10) {
            i10 = i10 <= 0 ? 2 : i10;
            this.capacity = i10;
            this.data = new long[i10];
            this.index = 0;
        }

        boolean GT_Half() {
            return this.index >= this.capacity / 2;
        }

        void put(long j10) {
            if (this.index == this.capacity) {
                this.index = 0;
            }
            long[] jArr = this.data;
            int i10 = this.index;
            jArr[i10] = j10;
            this.index = i10 + 1;
        }

        void reset() {
            this.index = 0;
        }

        int size() {
            return this.index;
        }
    }

    public EglRendererJankStatistics(PerfdogJankCounter perfdogJankCounter, PerfdogJankCounter perfdogJankCounter2, int i10) {
        this.mReceviedJankCounter = perfdogJankCounter;
        int i11 = i10 * 2;
        i11 = i11 > 60 ? 60 : i11;
        int i12 = i11 > 1 ? i11 : 2;
        this.mTmpDataArray = new long[i12];
        if (perfdogJankCounter != null) {
            this.mRecvTimstampBuffer = new Buffer(i12);
        }
        this.mRenderJankCounter = perfdogJankCounter2;
        if (perfdogJankCounter2 != null) {
            this.mRenderTimstampBuffer = new Buffer(i12);
        }
    }

    private void consumeTimstamp(Buffer buffer, PerfdogJankCounter perfdogJankCounter) {
        int size;
        int i10;
        if (perfdogJankCounter == null) {
            return;
        }
        synchronized (buffer) {
            size = buffer.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.mTmpDataArray[i11] = buffer.data[i11];
            }
            buffer.reset();
        }
        for (i10 = 0; i10 < size; i10++) {
            perfdogJankCounter.onRenderFrameTimestamp(this.mTmpDataArray[i10]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void process() {
        consumeTimstamp(this.mRecvTimstampBuffer, this.mReceviedJankCounter);
        consumeTimstamp(this.mRenderTimstampBuffer, this.mRenderJankCounter);
    }

    private void productioTimstamp(long j10, Buffer buffer) {
        synchronized (buffer) {
            buffer.put(j10);
            if (buffer.GT_Half()) {
                this.mWorkThread.setEvent();
            }
        }
    }

    public void onReceiveFrame(long j10) {
        if (this.mReceviedJankCounter == null) {
            return;
        }
        productioTimstamp(j10, this.mRecvTimstampBuffer);
    }

    public void onRenderFrame(long j10) {
        if (this.mRenderJankCounter == null) {
            return;
        }
        productioTimstamp(j10, this.mRenderTimstampBuffer);
    }

    public boolean start() {
        if (this.mWorkThread != null) {
            return false;
        }
        if (this.mReceviedJankCounter == null && this.mRenderJankCounter == null) {
            return false;
        }
        SimpleWorkThread simpleWorkThread = new SimpleWorkThread("eglrderJankStas", 500L);
        this.mWorkThread = simpleWorkThread;
        simpleWorkThread.start(new SimpleWorkThread.Work() { // from class: org.hmwebrtc.EglRendererJankStatistics.1
            @Override // org.hmwebrtc.utils.SimpleWorkThread.Work
            public void done() {
                EglRendererJankStatistics.this.process();
            }
        });
        return true;
    }

    public void stop() {
        SimpleWorkThread simpleWorkThread = this.mWorkThread;
        if (simpleWorkThread != null) {
            simpleWorkThread.stop();
        }
    }

    public EglRendererJankStatistics(PerfdogJankCounter perfdogJankCounter, PerfdogJankCounter perfdogJankCounter2) {
        this(perfdogJankCounter, perfdogJankCounter2, 30);
    }
}
