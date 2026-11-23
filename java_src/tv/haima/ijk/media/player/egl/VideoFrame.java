package tv.haima.ijk.media.player.egl;

import android.graphics.Matrix;
import java.nio.ByteBuffer;
import org.webrtc.haima.camerarecorder.egl.GlPreview;

/* JADX INFO: loaded from: classes10.dex */
public class VideoFrame implements RefCounted {
    private static int haimaFrameBufferSize;
    private final Buffer buffer;
    private final int rotation;
    private final long timestampNs;

    public interface Buffer extends RefCounted {
        Buffer cropAndScale(int i10, int i11, int i12, int i13, int i14, int i15);

        int getHeight();

        int getWidth();

        @Override // tv.haima.ijk.media.player.egl.RefCounted
        void release();

        @Override // tv.haima.ijk.media.player.egl.RefCounted
        void retain();

        I420Buffer toI420();
    }

    public interface I420Buffer extends Buffer {
        ByteBuffer getDataU();

        ByteBuffer getDataV();

        ByteBuffer getDataY();

        int getStrideU();

        int getStrideV();

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

        int getDelayMs();

        int getTextureId();

        Matrix getTransformMatrix();

        Type getType();

        void setCreatedTime(long j10);
    }

    public VideoFrame(Buffer buffer, int i10, long j10) {
        if (buffer == null) {
            throw new IllegalArgumentException("buffer not allowed to be null");
        }
        if (i10 % 90 != 0) {
            throw new IllegalArgumentException("rotation must be a multiple of 90");
        }
        this.buffer = buffer;
        this.rotation = i10;
        this.timestampNs = j10;
    }

    public static void setHaimaFrameBufferSize(int i10) {
        haimaFrameBufferSize = i10;
    }

    public Buffer getBuffer() {
        return this.buffer;
    }

    public int getHaimaFrameBufferSize() {
        return haimaFrameBufferSize;
    }

    public int getRotatedHeight() {
        return this.rotation % 180 == 0 ? this.buffer.getHeight() : this.buffer.getWidth();
    }

    public int getRotatedWidth() {
        return this.rotation % 180 == 0 ? this.buffer.getWidth() : this.buffer.getHeight();
    }

    public int getRotation() {
        return this.rotation;
    }

    public long getTimestampNs() {
        return this.timestampNs;
    }

    @Override // tv.haima.ijk.media.player.egl.RefCounted
    public void release() {
        this.buffer.release();
    }

    @Override // tv.haima.ijk.media.player.egl.RefCounted
    public void retain() {
        this.buffer.retain();
    }
}
