package com.facebook.animated.gif;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.imagepipeline.animated.base.e;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class GifFrame implements e {

    @DoNotStrip
    private long mNativeContext;

    @DoNotStrip
    GifFrame(long nativeContext) {
        this.mNativeContext = nativeContext;
    }

    @DoNotStrip
    private native void nativeDispose();

    @DoNotStrip
    private native void nativeFinalize();

    @DoNotStrip
    private native int nativeGetDisposalMode();

    @DoNotStrip
    private native int nativeGetDurationMs();

    @DoNotStrip
    private native int nativeGetHeight();

    @DoNotStrip
    private native int nativeGetTransparentPixelColor();

    @DoNotStrip
    private native int nativeGetWidth();

    @DoNotStrip
    private native int nativeGetXOffset();

    @DoNotStrip
    private native int nativeGetYOffset();

    @DoNotStrip
    private native boolean nativeHasTransparency();

    @DoNotStrip
    private native void nativeRenderFrame(int width, int height, Bitmap bitmap);

    @Override // com.facebook.imagepipeline.animated.base.e
    public void a(int width, int height, Bitmap bitmap) {
        nativeRenderFrame(width, height, bitmap);
    }

    public int b() {
        return nativeGetDisposalMode();
    }

    public int c() {
        return nativeGetTransparentPixelColor();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int d() {
        return nativeGetDurationMs();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public void dispose() {
        nativeDispose();
    }

    public boolean e() {
        return nativeHasTransparency();
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int getWidth() {
        return nativeGetWidth();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int getXOffset() {
        return nativeGetXOffset();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int getYOffset() {
        return nativeGetYOffset();
    }
}
