package com.facebook.imagepipeline.nativecode;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.STRICT)
public class NativeJpegTranscoderFactory implements l4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f28218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f28219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f28220c;

    @DoNotStrip
    public NativeJpegTranscoderFactory(final int maxBitmapSize, final boolean useDownSamplingRatio, final boolean ensureTranscoderLibraryLoaded) {
        this.f28218a = maxBitmapSize;
        this.f28219b = useDownSamplingRatio;
        this.f28220c = ensureTranscoderLibraryLoaded;
    }

    @Override // l4.d
    @DoNotStrip
    @Nullable
    public l4.c createImageTranscoder(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        if (imageFormat != com.facebook.imageformat.b.f27532a) {
            return null;
        }
        return new NativeJpegTranscoder(isResizingEnabled, this.f28218a, this.f28219b, this.f28220c);
    }
}
