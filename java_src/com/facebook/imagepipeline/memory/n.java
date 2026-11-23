package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@TargetApi(21)
@Nullsafe(Nullsafe.Mode.STRICT)
public class n extends BasePool<Bitmap> implements j {
    public n(com.facebook.common.memory.c memoryTrimmableRegistry, j0 poolParams, k0 poolStatsTracker, boolean ignoreHardCap) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker, ignoreHardCap);
        D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public Bitmap g(int size) {
        return Bitmap.createBitmap(1, (int) Math.ceil(((double) size) / 2.0d), Bitmap.Config.RGB_565);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void u(Bitmap value) {
        com.facebook.common.internal.i.i(value);
        value.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public int y(Bitmap value) {
        com.facebook.common.internal.i.i(value);
        return value.getAllocationByteCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    @Nullable
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public Bitmap B(l<Bitmap> bucket) {
        Bitmap bitmap = (Bitmap) super.B(bucket);
        if (bitmap != null) {
            bitmap.eraseColor(0);
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public boolean F(Bitmap value) {
        com.facebook.common.internal.i.i(value);
        return !value.isRecycled() && value.isMutable();
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int x(int requestSize) {
        return requestSize;
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int z(int bucketedSize) {
        return bucketedSize;
    }
}
