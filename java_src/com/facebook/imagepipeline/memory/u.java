package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class u implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<Bitmap> f28194a = com.facebook.common.internal.k.g();

    @Override // com.facebook.common.memory.e
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Bitmap get(int size) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, (int) Math.ceil(((double) size) / 2.0d), Bitmap.Config.RGB_565);
        this.f28194a.add(bitmapCreateBitmap);
        return bitmapCreateBitmap;
    }

    @Override // com.facebook.common.memory.b
    public void q(MemoryTrimType trimType) {
    }

    @Override // com.facebook.common.memory.e, com.facebook.common.references.g
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void release(Bitmap value) {
        com.facebook.common.internal.i.i(value);
        this.f28194a.remove(value);
        value.recycle();
    }
}
