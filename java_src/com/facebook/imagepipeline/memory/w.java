package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class w extends BasePool<byte[]> implements com.facebook.common.memory.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f28198k;

    public w(com.facebook.common.memory.c memoryTrimmableRegistry, j0 poolParams, k0 poolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
        SparseIntArray sparseIntArray = (SparseIntArray) com.facebook.common.internal.i.i(poolParams.f28147c);
        this.f28198k = new int[sparseIntArray.size()];
        for (int i10 = 0; i10 < sparseIntArray.size(); i10++) {
            this.f28198k[i10] = sparseIntArray.keyAt(i10);
        }
        D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public byte[] g(int bucketedSize) {
        return new byte[bucketedSize];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void u(byte[] value) {
        com.facebook.common.internal.i.i(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public int y(byte[] value) {
        com.facebook.common.internal.i.i(value);
        return value.length;
    }

    public int R() {
        return this.f28198k[0];
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int x(int requestSize) {
        if (requestSize <= 0) {
            throw new BasePool.InvalidSizeException(Integer.valueOf(requestSize));
        }
        for (int i10 : this.f28198k) {
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
