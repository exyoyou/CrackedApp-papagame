package org.webrtc.haima.camerarecorder.capture;

import android.annotation.SuppressLint;
import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi(api = 21)
public abstract class MediaEncoder implements Runnable {
    private static final String TAG = "MediaEncoder";
    protected static final int TIMEOUT_USEC = 100000;

    @Nullable
    protected ByteBuffer configBuffer;
    protected volatile boolean isCapturing;
    protected boolean isEOS;
    protected final MediaEncoderListener listener;
    protected MediaCodec mediaCodec;
    protected boolean muxerStarted;
    private long prevOutputPTSUs;
    protected int requestDrain;
    protected volatile boolean requestStop;
    protected final Object sync;
    protected int trackIndex;
    protected final WeakReference<MediaMuxerCaptureWrapper> weakMuxer;

    public interface MediaEncoderListener {
        void onPrepared(MediaEncoder mediaEncoder);

        void onStopped(MediaEncoder mediaEncoder);
    }

    MediaEncoder(MediaMuxerCaptureWrapper mediaMuxerCaptureWrapper, MediaEncoderListener mediaEncoderListener) {
        Object obj = new Object();
        this.sync = obj;
        if (mediaEncoderListener == null) {
            throw new NullPointerException("MediaEncoderListener is null");
        }
        if (mediaMuxerCaptureWrapper == null) {
            throw new NullPointerException("MediaMuxerCaptureWrapper is null");
        }
        this.weakMuxer = new WeakReference<>(mediaMuxerCaptureWrapper);
        mediaMuxerCaptureWrapper.addEncoder(this);
        this.listener = mediaEncoderListener;
        synchronized (obj) {
            new Thread(this, getClass().getSimpleName()).start();
            try {
                obj.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    @SuppressLint({"NewApi"})
    private void drain() {
        MediaMuxerCaptureWrapper mediaMuxerCaptureWrapper;
        if (this.mediaCodec == null || (mediaMuxerCaptureWrapper = this.weakMuxer.get()) == null) {
            return;
        }
        int i10 = 0;
        while (this.isCapturing) {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 100000L);
            if (iDequeueOutputBuffer != -1) {
                if (iDequeueOutputBuffer == -2) {
                    if (this.muxerStarted) {
                        throw new RuntimeException("format changed twice");
                    }
                    this.mediaCodec.getOutputFormat();
                    this.muxerStarted = true;
                    if (mediaMuxerCaptureWrapper.start()) {
                        continue;
                    } else {
                        synchronized (mediaMuxerCaptureWrapper) {
                            while (!mediaMuxerCaptureWrapper.isStarted()) {
                                try {
                                    mediaMuxerCaptureWrapper.wait(100L);
                                } catch (InterruptedException unused) {
                                    return;
                                }
                            }
                        }
                    }
                } else if (iDequeueOutputBuffer < 0) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("drain:unexpected result from encoder#dequeueOutputBuffer: ");
                    sb2.append(iDequeueOutputBuffer);
                } else {
                    ByteBuffer outputBuffer = this.mediaCodec.getOutputBuffer(iDequeueOutputBuffer);
                    if (outputBuffer == null) {
                        throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " was null");
                    }
                    int i11 = bufferInfo.flags;
                    if ((i11 & 2) != 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Config frame generated. Offset: ");
                        sb3.append(bufferInfo.offset);
                        sb3.append(". Size: ");
                        sb3.append(bufferInfo.size);
                        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bufferInfo.size);
                        this.configBuffer = byteBufferAllocateDirect;
                        byteBufferAllocateDirect.put(outputBuffer);
                    } else if (bufferInfo.size != 0) {
                        if (!this.muxerStarted) {
                            throw new RuntimeException("drain:muxer hasn't started");
                        }
                        if ((i11 & 1) != 0) {
                            bufferInfo.presentationTimeUs = getPTSUs();
                            ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(bufferInfo.size + this.configBuffer.capacity());
                            this.configBuffer.rewind();
                            byteBufferAllocateDirect2.put(this.configBuffer);
                            byteBufferAllocateDirect2.put(outputBuffer);
                            byteBufferAllocateDirect2.rewind();
                            mediaMuxerCaptureWrapper.writeSampleData(this.trackIndex, byteBufferAllocateDirect2, bufferInfo.size + this.configBuffer.capacity());
                            this.prevOutputPTSUs = bufferInfo.presentationTimeUs;
                        } else {
                            bufferInfo.presentationTimeUs = getPTSUs();
                            mediaMuxerCaptureWrapper.writeSampleData(this.trackIndex, outputBuffer, bufferInfo.size);
                            this.prevOutputPTSUs = bufferInfo.presentationTimeUs;
                        }
                        i10 = 0;
                    }
                    this.mediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    if ((bufferInfo.flags & 4) != 0) {
                        this.isCapturing = false;
                        return;
                    }
                }
            } else if (!this.isEOS && (i10 = i10 + 1) > 5) {
                return;
            }
        }
    }

    @SuppressLint({"NewApi"})
    protected void encode(ByteBuffer byteBuffer, int i10, long j10) {
        if (this.isCapturing) {
            while (this.isCapturing) {
                int iDequeueInputBuffer = this.mediaCodec.dequeueInputBuffer(100000L);
                if (iDequeueInputBuffer >= 0) {
                    ByteBuffer inputBuffer = this.mediaCodec.getInputBuffer(iDequeueInputBuffer);
                    inputBuffer.clear();
                    if (byteBuffer != null) {
                        inputBuffer.put(byteBuffer);
                    }
                    if (i10 > 0) {
                        this.mediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, i10, j10, 0);
                        return;
                    } else {
                        this.isEOS = true;
                        this.mediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, 0, j10, 4);
                        return;
                    }
                }
            }
        }
    }

    public boolean frameAvailableSoon() {
        synchronized (this.sync) {
            if (this.isCapturing && !this.requestStop) {
                this.requestDrain++;
                this.sync.notifyAll();
                return true;
            }
            return false;
        }
    }

    long getPTSUs() {
        long jNanoTime = System.nanoTime() / 1000;
        long j10 = this.prevOutputPTSUs;
        return jNanoTime < j10 ? jNanoTime + (j10 - jNanoTime) : jNanoTime;
    }

    abstract void prepare() throws IOException;

    protected void release() {
        try {
            this.listener.onStopped(this);
        } catch (Exception unused) {
        }
        this.isCapturing = false;
        MediaCodec mediaCodec = this.mediaCodec;
        if (mediaCodec != null) {
            try {
                mediaCodec.stop();
                this.mediaCodec.release();
                this.mediaCodec = null;
            } catch (Exception unused2) {
            }
        }
        if (this.muxerStarted) {
            WeakReference<MediaMuxerCaptureWrapper> weakReference = this.weakMuxer;
            MediaMuxerCaptureWrapper mediaMuxerCaptureWrapper = weakReference != null ? weakReference.get() : null;
            if (mediaMuxerCaptureWrapper != null) {
                try {
                    mediaMuxerCaptureWrapper.stop();
                } catch (Exception unused3) {
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() {
        boolean z10;
        boolean z11;
        synchronized (this.sync) {
            this.requestStop = false;
            this.requestDrain = 0;
            this.sync.notify();
        }
        while (true) {
            synchronized (this.sync) {
                z10 = this.requestStop;
                int i10 = this.requestDrain;
                z11 = i10 > 0;
                if (z11) {
                    this.requestDrain = i10 - 1;
                }
            }
            if (z10) {
                break;
            }
            if (z11) {
                drain();
            } else {
                synchronized (this.sync) {
                    try {
                        try {
                            this.sync.wait();
                        } catch (InterruptedException unused) {
                            synchronized (this.sync) {
                                this.requestStop = true;
                                this.isCapturing = false;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            synchronized (this.sync) {
                this.requestStop = true;
                this.isCapturing = false;
            }
        }
        drain();
        signalEndOfInputStream();
        drain();
        release();
        synchronized (this.sync) {
            this.requestStop = true;
            this.isCapturing = false;
        }
    }

    protected void signalEndOfInputStream() {
        encode(null, 0, getPTSUs());
    }

    void startRecording() {
        synchronized (this.sync) {
            this.isCapturing = true;
            this.requestStop = false;
            this.sync.notifyAll();
        }
    }

    void stopRecording() {
        synchronized (this.sync) {
            if (this.isCapturing && !this.requestStop) {
                this.requestStop = true;
                this.sync.notifyAll();
            }
        }
    }
}
