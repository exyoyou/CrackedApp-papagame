package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class NativeMemoryChunkPool extends a0 {
    @DoNotStrip
    public NativeMemoryChunkPool(com.facebook.common.memory.c memoryTrimmableRegistry, j0 poolParams, k0 nativeMemoryChunkPoolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, nativeMemoryChunkPoolStatsTracker);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a0, com.facebook.imagepipeline.memory.BasePool
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public NativeMemoryChunk g(int bucketedSize) {
        return new NativeMemoryChunk(bucketedSize);
    }
}
