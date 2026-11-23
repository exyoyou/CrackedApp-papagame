package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.core.util.Pools;
import androidx.core.util.Preconditions;
import com.facebook.imagepipeline.memory.j;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@TargetApi(21)
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a extends b {
    public a(j bitmapPool, int maxNumThreads, Pools.SynchronizedPool decodeBuffers) {
        super(bitmapPool, maxNumThreads, decodeBuffers);
    }

    @Override // com.facebook.imagepipeline.platform.b
    public int g(final int width, final int height, final BitmapFactory.Options options) {
        return com.facebook.imageutils.a.f(width, height, (Bitmap.Config) Preconditions.checkNotNull(options.inPreferredConfig));
    }
}
