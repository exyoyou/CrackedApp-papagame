package com.facebook.imagepipeline.animated.factory;

import com.facebook.common.executors.g;
import com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.imagepipeline.cache.i;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f27579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private static a f27580b;

    @Nullable
    public static a a(f platformBitmapFactory, com.facebook.imagepipeline.core.f executorSupplier, i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> backingCache, boolean downscaleFrameToDrawableDimensions, @Nullable ExecutorService serialExecutorService) {
        if (!f27579a) {
            try {
                f27580b = (a) AnimatedFactoryV2Impl.class.getConstructor(f.class, com.facebook.imagepipeline.core.f.class, i.class, Boolean.TYPE, g.class).newInstance(platformBitmapFactory, executorSupplier, backingCache, Boolean.valueOf(downscaleFrameToDrawableDimensions), serialExecutorService);
            } catch (Throwable unused) {
            }
            if (f27580b != null) {
                f27579a = true;
            }
        }
        return f27580b;
    }
}
