package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class a0 extends BasePool<z> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f28082k;

    a0(com.facebook.common.memory.c memoryTrimmableRegistry, j0 poolParams, k0 memoryChunkPoolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, memoryChunkPoolStatsTracker);
        SparseIntArray sparseIntArray = (SparseIntArray) com.facebook.common.internal.i.i(poolParams.f28147c);
        this.f28082k = new int[sparseIntArray.size()];
        int i10 = 0;
        while (true) {
            int[] iArr = this.f28082k;
            if (i10 >= iArr.length) {
                D();
                return;
            } else {
                iArr[i10] = sparseIntArray.keyAt(i10);
                i10++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public abstract z g(int bucketedSize);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void u(z value) {
        com.facebook.common.internal.i.i(value);
        value.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public int y(z value) {
        com.facebook.common.internal.i.i(value);
        return value.getSize();
    }

    int R() {
        return this.f28082k[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public boolean F(z value) {
        com.facebook.common.internal.i.i(value);
        return !value.isClosed();
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int x(int requestSize) {
        if (requestSize <= 0) {
            throw new BasePool.InvalidSizeException(Integer.valueOf(requestSize));
        }
        for (int i10 : this.f28082k) {
            if (i10 >= requestSize) {
                return i10;
            }
        }
        return requestSize;
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int z(int bucketedSize) {
        return bucketedSize;
    }
}
