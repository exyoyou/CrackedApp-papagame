package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.soloader.DoNotOptimize;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@DoNotOptimize
@Nullsafe(Nullsafe.Mode.STRICT)
class PreverificationHelper {
    PreverificationHelper() {
    }

    @DoNotOptimize
    @TargetApi(26)
    boolean shouldUseHardwareBitmapConfig(@Nullable Bitmap.Config config) {
        return config == Bitmap.Config.HARDWARE;
    }
}
