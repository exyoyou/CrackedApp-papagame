package org.hmwebrtc;

import android.graphics.Matrix;
import java.nio.ByteBuffer;
import org.webrtc.haima.camerarecorder.egl.GlPreview;

/* JADX INFO: loaded from: classes10.dex */
public class VideoFrame implements RefCounted {
    private static boolean frameInfoMatchByPts;
    private static int haimaFrameBufferSize;
    private final Buffer buffer;
    private long inputTimestampMs;
    private int mCaptureId;
    private int mTrackId;
    private long renderLossCount;
    private int renderLossRate;
    private final int rotation;
    private final long timestampNs;

    public interface Buffer extends RefCounted {
        @CalledByNative("Buffer")
        Buffer cropAndScale(int i10, int i11, int i12, int i13, int i14, int i15);

        @CalledByNative("Buffer")
        int getBufferType();

        @CalledByNative("Buffer")
        int getHeight();

        @CalledByNative("Buffer")
        int getWidth();

        @Override // org.hmwebrtc.RefCounted
        @CalledByNative("Buffer")
        void release();

        @Override // org.hmwebrtc.RefCounted
        @CalledByNative("Buffer")
        void retain();

        @CalledByNative("Buffer")
        I420Buffer toI420();
    }

    public interface I420Buffer extends Buffer {
        @Override // org.hmwebrtc.VideoFrame.Buffer
        int getBufferType();

        @CalledByNative("I420Buffer")
        ByteBuffer getDataU();

        @CalledByNative("I420Buffer")
        ByteBuffer getDataV();

        @CalledByNative("I420Buffer")
        ByteBuffer getDataY();

        @CalledByNative("I420Buffer")
        int getStrideU();

        @CalledByNative("I420Buffer")
        int getStrideV();

        @CalledByNative("I420Buffer")
        int getStrideY();
    }

    public interface TextureBuffer extends Buffer {

        public enum Type {
            OES(GlPreview.GL_TEXTURE_EXTERNAL_OES),
            RGB(3553);

            private final int glTarget;

            Type(int i10) {
                this.glTarget = i10;
            }

            public int getGlTarget() {
                return this.glTarget;
            }
        }

        int getTextureId();

        Matrix getTransformMatrix();

        Type getType();
    }

    public VideoFrame(Buffer buffer, int i10, long j10) {
        this(buffer, i10, j10, -1, -1, 0L);
    }

    public static boolean getFrameInfoMatchByPts() {
        return frameInfoMatchByPts;
    }

    public static void setFrameInfoMatchByPts(boolean z10) {
        frameInfoMatchByPts = z10;
    }

    public static void setHaimaFrameBufferSize(int i10) {
        haimaFrameBufferSize = i10;
    }

    @CalledByNative
    public Buffer getBuffer() {
        return this.buffer;
    }

    public int getCaptureId() {
        return this.mCaptureId;
    }

    @CalledByNative
    public int getHaimaFrameBufferSize() {
        return haimaFrameBufferSize;
    }

    public long getInputTimestampMs() {
        return this.inputTimestampMs;
    }

    @CalledByNative
    public long getRenderLossCount() {
        return this.renderLossCount;
    }

    @CalledByNative
    public int getRenderLossRate() {
        return this.renderLossRate;
    }

    public int getRotatedHeight() {
        return this.rotation % 180 == 0 ? this.buffer.getHeight() : this.buffer.getWidth();
    }

    public int getRotatedWidth() {
        return this.rotation % 180 == 0 ? this.buffer.getWidth() : this.buffer.getHeight();
    }

    @CalledByNative
    public int getRotation() {
        return this.rotation;
    }

    @CalledByNative
    public long getTimestampNs() {
        return this.timestampNs;
    }

    public int getTrackId() {
        return this.mTrackId;
    }

    @Override // org.hmwebrtc.RefCounted
    @CalledByNative
    public void release() {
        this.buffer.release();
    }

    @Override // org.hmwebrtc.RefCounted
    public void retain() {
        this.buffer.retain();
    }

    public void setRenderLossInfo(int i10, long j10) {
        this.renderLossRate = i10;
        this.renderLossCount = j10;
    }

    @CalledByNative
    public VideoFrame(Buffer buffer, int i10, long j10, int i11, int i12, long j11) {
        if (buffer == null) {
            throw new IllegalArgumentException("buffer not allowed to be null");
        }
        if (i10 % 90 != 0) {
            throw new IllegalArgumentException("rotation must be a multiple of 90");
        }
        this.buffer = buffer;
        this.rotation = i10;
        this.timestampNs = j10;
        this.mCaptureId = i12;
        this.mTrackId = i11;
        this.inputTimestampMs = j11;
    }
}
