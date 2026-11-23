package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class g implements com.facebook.imagepipeline.cache.a {

    class a implements z<com.facebook.imagepipeline.image.c> {
        a() {
        }

        @Override // com.facebook.imagepipeline.cache.z
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public int a(com.facebook.imagepipeline.image.c value) {
            return value.d();
        }
    }

    @Override // com.facebook.imagepipeline.cache.a
    public i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> a(com.facebook.common.internal.l<u> bitmapMemoryCacheParamsSupplier, com.facebook.common.memory.c memoryTrimmableRegistry, t.a trimStrategy, boolean storeEntrySize, boolean ignoreSizeMismatch, @Nullable i.b<com.facebook.cache.common.c> observer) {
        s sVar = new s(new a(), trimStrategy, bitmapMemoryCacheParamsSupplier, observer, storeEntrySize, ignoreSizeMismatch);
        memoryTrimmableRegistry.b(sVar);
        return sVar;
    }
}
