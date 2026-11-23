package org.webrtc.haima.camerarecorder.capture;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import org.webrtc.haima.HmCameraWrapper;

/* JADX INFO: loaded from: classes10.dex */
public class MediaMuxerCaptureWrapper {
    private static final String TAG = "MediaMuxerWrapper";
    private RandomAccessFile mFile;
    private SoftReference<HmCameraWrapper> mHmCamera;
    private MediaEncoder videoEncoder;
    private final Object mLock = new Object();
    private boolean isStarted = false;

    public MediaMuxerCaptureWrapper(HmCameraWrapper hmCameraWrapper) throws IOException {
        this.mHmCamera = new SoftReference<>(hmCameraWrapper);
    }

    void addEncoder(MediaEncoder mediaEncoder) {
        if (!(mediaEncoder instanceof MediaVideoEncoder)) {
            throw new IllegalArgumentException("unsupported encoder");
        }
        if (this.videoEncoder != null) {
            throw new IllegalArgumentException("Video encoder already added.");
        }
        this.videoEncoder = mediaEncoder;
    }

    public boolean isStarted() {
        boolean z10;
        synchronized (this.mLock) {
            z10 = this.isStarted;
        }
        return z10;
    }

    public void prepare() throws IOException {
        MediaEncoder mediaEncoder = this.videoEncoder;
        if (mediaEncoder != null) {
            mediaEncoder.prepare();
        }
    }

    synchronized boolean start() {
        this.isStarted = true;
        notifyAll();
        return this.isStarted;
    }

    public void startRecording() {
        MediaEncoder mediaEncoder = this.videoEncoder;
        if (mediaEncoder != null) {
            mediaEncoder.startRecording();
        }
    }

    synchronized void stop() {
        this.isStarted = false;
    }

    public void stopRecording() {
        MediaEncoder mediaEncoder = this.videoEncoder;
        if (mediaEncoder != null) {
            mediaEncoder.stopRecording();
        }
        this.videoEncoder = null;
    }

    synchronized void writeSampleData(int i10, ByteBuffer byteBuffer, int i11) {
        HmCameraWrapper hmCameraWrapper;
        try {
            byte[] bArr = new byte[i11];
            byteBuffer.get(bArr);
            try {
                RandomAccessFile randomAccessFile = this.mFile;
                if (randomAccessFile != null) {
                    randomAccessFile.write(bArr);
                }
                SoftReference<HmCameraWrapper> softReference = this.mHmCamera;
                if (softReference != null && (hmCameraWrapper = softReference.get()) != null) {
                    hmCameraWrapper.writeVideoData(bArr);
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
