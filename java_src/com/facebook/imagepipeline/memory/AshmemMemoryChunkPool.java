package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@ThreadSafe
@TargetApi(27)
@Nullsafe(Nullsafe.Mode.STRICT)
public class AshmemMemoryChunkPool extends a0 {
    @DoNotStrip
    public AshmemMemoryChunkPool(com.facebook.common.memory.c memoryTrimmableRegistry, j0 poolParams, k0 ashmemMemoryChunkPoolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, ashmemMemoryChunkPoolStatsTracker);
    }

    @Override // com.facebook.imagepipeline.memory.a0, com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public f g(int bucketedSize) {
        return new f(bucketedSize);
    }
}
