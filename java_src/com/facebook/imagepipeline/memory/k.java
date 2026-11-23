package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class k extends y<Bitmap> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f28152c = "BitmapPoolBackend";

    @Override // com.facebook.imagepipeline.memory.y, com.facebook.imagepipeline.memory.g0
    @Nullable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Bitmap get(int size) {
        Bitmap bitmap = (Bitmap) super.get(size);
        if (bitmap == null || !f(bitmap)) {
            return null;
        }
        bitmap.eraseColor(0);
        return bitmap;
    }

    @Override // com.facebook.imagepipeline.memory.g0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public int a(Bitmap bitmap) {
        return com.facebook.imageutils.a.g(bitmap);
    }

    protected boolean f(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return false;
        }
        if (bitmap.isRecycled()) {
            i3.a.y0(f28152c, "Cannot reuse a recycled bitmap: %s", bitmap);
            return false;
        }
        if (bitmap.isMutable()) {
            return true;
        }
        i3.a.y0(f28152c, "Cannot reuse an immutable bitmap: %s", bitmap);
        return false;
    }

    @Override // com.facebook.imagepipeline.memory.y, com.facebook.imagepipeline.memory.g0
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void put(Bitmap bitmap) {
        if (f(bitmap)) {
            super.put(bitmap);
        }
    }
}
