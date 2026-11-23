package com.facebook.animated.gif;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.i;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.d;
import com.facebook.imagepipeline.animated.factory.c;
import com.facebook.infer.annotation.Nullsafe;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@ThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class GifImage implements d, c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f26713c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f26714d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile boolean f26715e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Bitmap.Config f26716b = null;

    @DoNotStrip
    private long mNativeContext;

    @DoNotStrip
    public GifImage() {
    }

    public static GifImage k(byte[] source) {
        i.i(source);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(source.length);
        byteBufferAllocateDirect.put(source);
        byteBufferAllocateDirect.rewind();
        return m(byteBufferAllocateDirect, com.facebook.imagepipeline.common.c.a());
    }

    public static GifImage l(ByteBuffer byteBuffer) {
        return m(byteBuffer, com.facebook.imagepipeline.common.c.a());
    }

    public static GifImage m(ByteBuffer byteBuffer, com.facebook.imagepipeline.common.c options) {
        p();
        byteBuffer.rewind();
        GifImage gifImageNativeCreateFromDirectByteBuffer = nativeCreateFromDirectByteBuffer(byteBuffer, options.f27774b, options.f27778f);
        gifImageNativeCreateFromDirectByteBuffer.f26716b = options.f27780h;
        return gifImageNativeCreateFromDirectByteBuffer;
    }

    public static GifImage n(int fileDescriptor, com.facebook.imagepipeline.common.c options) {
        p();
        return nativeCreateFromFileDescriptor(fileDescriptor, options.f27774b, options.f27778f);
    }

    @DoNotStrip
    private static native GifImage nativeCreateFromDirectByteBuffer(ByteBuffer buffer, int maxDimension, boolean forceStatic);

    @DoNotStrip
    private static native GifImage nativeCreateFromFileDescriptor(int fileDescriptor, int maxDimension, boolean forceStatic);

    @DoNotStrip
    private static native GifImage nativeCreateFromNativeMemory(long nativePtr, int sizeInBytes, int maxDimension, boolean forceStatic);

    @DoNotStrip
    private native void nativeDispose();

    @DoNotStrip
    private native void nativeFinalize();

    @DoNotStrip
    private native int nativeGetDuration();

    @DoNotStrip
    private native GifFrame nativeGetFrame(int frameNumber);

    @DoNotStrip
    private native int nativeGetFrameCount();

    @DoNotStrip
    private native int[] nativeGetFrameDurations();

    @DoNotStrip
    private native int nativeGetHeight();

    @DoNotStrip
    private native int nativeGetLoopCount();

    @DoNotStrip
    private native int nativeGetSizeInBytes();

    @DoNotStrip
    private native int nativeGetWidth();

    @DoNotStrip
    private native boolean nativeIsAnimated();

    public static GifImage o(long nativePtr, int sizeInBytes, com.facebook.imagepipeline.common.c options) {
        p();
        i.d(Boolean.valueOf(nativePtr != 0));
        GifImage gifImageNativeCreateFromNativeMemory = nativeCreateFromNativeMemory(nativePtr, sizeInBytes, options.f27774b, options.f27778f);
        gifImageNativeCreateFromNativeMemory.f26716b = options.f27780h;
        return gifImageNativeCreateFromNativeMemory;
    }

    private static synchronized void p() {
        if (!f26715e) {
            f26715e = true;
            r4.a.f("gifimage");
        }
    }

    private static AnimatedDrawableFrameInfo.DisposalMethod q(int disposalMode) {
        if (disposalMode == 0) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
        }
        if (disposalMode == 1) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
        }
        if (disposalMode == 2) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND;
        }
        return disposalMode == 3 ? AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS : AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int a() {
        return nativeGetSizeInBytes();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int b() {
        int iNativeGetLoopCount = nativeGetLoopCount();
        if (iNativeGetLoopCount == -1) {
            return 1;
        }
        if (iNativeGetLoopCount != 0) {
            return iNativeGetLoopCount + 1;
        }
        return 0;
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int c() {
        return nativeGetFrameCount();
    }

    @Override // com.facebook.imagepipeline.animated.factory.c
    public d d(ByteBuffer byteBuffer, com.facebook.imagepipeline.common.c options) {
        return m(byteBuffer, options);
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public void dispose() {
        nativeDispose();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public AnimatedDrawableFrameInfo e(int frameNumber) {
        GifFrame gifFrameH = h(frameNumber);
        try {
            return new AnimatedDrawableFrameInfo(frameNumber, gifFrameH.getXOffset(), gifFrameH.getYOffset(), gifFrameH.getWidth(), gifFrameH.getHeight(), AnimatedDrawableFrameInfo.BlendOperation.BLEND_WITH_PREVIOUS, q(gifFrameH.b()));
        } finally {
            gifFrameH.dispose();
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public boolean f() {
        return false;
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // com.facebook.imagepipeline.animated.factory.c
    public d g(long nativePtr, int sizeInBytes, com.facebook.imagepipeline.common.c options) {
        return o(nativePtr, sizeInBytes, options);
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int getDuration() {
        return nativeGetDuration();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int getWidth() {
        return nativeGetWidth();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    @Nullable
    public Bitmap.Config i() {
        return this.f26716b;
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int[] j() {
        return nativeGetFrameDurations();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public GifFrame h(int frameNumber) {
        return nativeGetFrame(frameNumber);
    }

    public boolean s() {
        return nativeIsAnimated();
    }

    @DoNotStrip
    GifImage(long nativeContext) {
        this.mNativeContext = nativeContext;
    }
}
