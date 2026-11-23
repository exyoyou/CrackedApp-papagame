package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f28398a = 1.3333334f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f28399b = 90;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f28400c = 270;

    public static int a(int size) {
        return (int) (size * 1.3333334f);
    }

    public static boolean b(int width, int height, @Nullable com.facebook.imagepipeline.common.e resizeOptions) {
        if (resizeOptions == null) {
            return ((float) a(width)) >= 2048.0f && a(height) >= 2048;
        }
        return a(width) >= resizeOptions.f27798a && a(height) >= resizeOptions.f27799b;
    }

    public static boolean c(@Nullable com.facebook.imagepipeline.image.e encodedImage, @Nullable com.facebook.imagepipeline.common.e resizeOptions) {
        if (encodedImage == null) {
            return false;
        }
        int iS = encodedImage.s();
        return (iS == 90 || iS == 270) ? b(encodedImage.l(), encodedImage.I(), resizeOptions) : b(encodedImage.I(), encodedImage.l(), resizeOptions);
    }
}
