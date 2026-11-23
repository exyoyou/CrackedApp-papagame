package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class n {

    static class a implements z<PooledByteBuffer> {
        a() {
        }

        @Override // com.facebook.imagepipeline.cache.z
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public int a(PooledByteBuffer value) {
            return value.size();
        }
    }

    public static i<com.facebook.cache.common.c, PooledByteBuffer> a(com.facebook.common.internal.l<u> encodedMemoryCacheParamsSupplier, com.facebook.common.memory.c memoryTrimmableRegistry) {
        s sVar = new s(new a(), new w(), encodedMemoryCacheParamsSupplier, null, false, false);
        memoryTrimmableRegistry.b(sVar);
        return sVar;
    }
}
