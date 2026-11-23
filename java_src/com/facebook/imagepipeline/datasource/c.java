package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class c extends com.facebook.datasource.b<CloseableReference<com.facebook.imagepipeline.image.c>> {
    @Override // com.facebook.datasource.b
    public void f(@Nonnull com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
        if (dataSource.f()) {
            CloseableReference<com.facebook.imagepipeline.image.c> result = dataSource.getResult();
            CloseableReference<Bitmap> closeableReferenceJ = (result == null || !(result.j() instanceof com.facebook.imagepipeline.image.d)) ? null : ((com.facebook.imagepipeline.image.d) result.j()).j();
            try {
                g(closeableReferenceJ);
            } finally {
                CloseableReference.h(closeableReferenceJ);
                CloseableReference.h(result);
            }
        }
    }

    protected abstract void g(@Nullable CloseableReference<Bitmap> bitmapReference);
}
