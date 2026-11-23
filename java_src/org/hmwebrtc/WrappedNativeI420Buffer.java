package org.hmwebrtc;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
class WrappedNativeI420Buffer implements VideoFrame.I420Buffer {
    private final ByteBuffer dataU;
    private final ByteBuffer dataV;
    private final ByteBuffer dataY;
    private final int height;
    private final long nativeBuffer;
    private final int strideU;
    private final int strideV;
    private final int strideY;
    private final int width;

    @CalledByNative
    WrappedNativeI420Buffer(int i10, int i11, ByteBuffer byteBuffer, int i12, ByteBuffer byteBuffer2, int i13, ByteBuffer byteBuffer3, int i14, long j10) {
        this.width = i10;
        this.height = i11;
        this.dataY = byteBuffer;
        this.strideY = i12;
        this.dataU = byteBuffer2;
        this.strideU = i13;
        this.dataV = byteBuffer3;
        this.strideV = i14;
        this.nativeBuffer = j10;
        retain();
    }

    @Override // org.hmwebrtc.VideoFrame.Buffer
    public VideoFrame.Buffer cropAndScale(int i10, int i11, int i12, int i13, int i14, int i15) {
        return JavaI420Buffer.cropAndScaleI420(this, i10, i11, i12, i13, i14, i15);
    }

    @Override // org.hmwebrtc.VideoFrame.I420Buffer, org.hmwebrtc.VideoFrame.Buffer
    public /* synthetic */ int getBufferType() {
        return a1.a(this);
    }

    @Override // org.hmwebrtc.VideoFrame.I420Buffer
    public ByteBuffer getDataU() {
        return this.dataU.slice();
    }

    @Override // org.hmwebrtc.VideoFrame.I420Buffer
    public ByteBuffer getDataV() {
        return this.dataV.slice();
    }

    @Override // org.hmwebrtc.VideoFrame.I420Buffer
    public ByteBuffer getDataY() {
        return this.dataY.slice();
    }

    @Override // org.hmwebrtc.VideoFrame.Buffer
    public int getHeight() {
        return this.height;
    }

    @Override // org.hmwebrtc.VideoFrame.I420Buffer
    public int getStrideU() {
        return this.strideU;
    }

    @Override // org.hmwebrtc.VideoFrame.I420Buffer
    public int getStrideV() {
        return this.strideV;
    }

    @Override // org.hmwebrtc.VideoFrame.I420Buffer
    public int getStrideY() {
        return this.strideY;
    }

    @Override // org.hmwebrtc.VideoFrame.Buffer
    public int getWidth() {
        return this.width;
    }

    @Override // org.hmwebrtc.VideoFrame.Buffer, org.hmwebrtc.RefCounted
    public void release() {
        JniCommon.nativeReleaseRef(this.nativeBuffer);
    }

    @Override // org.hmwebrtc.VideoFrame.Buffer, org.hmwebrtc.RefCounted
    public void retain() {
        JniCommon.nativeAddRef(this.nativeBuffer);
    }

    @Override // org.hmwebrtc.VideoFrame.Buffer
    public VideoFrame.I420Buffer toI420() {
        retain();
        return this;
    }
}
