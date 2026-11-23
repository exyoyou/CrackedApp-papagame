package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.common.internal.i;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.memory.j;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@TargetApi(21)
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f27611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.core.a f27612b;

    public a(j bitmapPool, com.facebook.imagepipeline.core.a closeableReferenceFactory) {
        this.f27611a = bitmapPool;
        this.f27612b = closeableReferenceFactory;
    }

    @Override // com.facebook.imagepipeline.bitmaps.f
    public CloseableReference<Bitmap> z(int width, int height, Bitmap.Config bitmapConfig) {
        Bitmap bitmap = this.f27611a.get(com.facebook.imageutils.a.f(width, height, bitmapConfig));
        i.d(Boolean.valueOf(bitmap.getAllocationByteCount() >= (width * height) * com.facebook.imageutils.a.e(bitmapConfig)));
        bitmap.reconfigure(width, height, bitmapConfig);
        return this.f27612b.c(bitmap, this.f27611a);
    }
}
