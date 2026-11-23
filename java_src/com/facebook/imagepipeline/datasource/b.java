package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class b extends com.facebook.datasource.b<CloseableReference<com.facebook.imagepipeline.image.c>> {
    @Override // com.facebook.datasource.b
    public void f(com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
        if (dataSource.f()) {
            CloseableReference<com.facebook.imagepipeline.image.c> result = dataSource.getResult();
            try {
                g((result == null || !(result.j() instanceof com.facebook.imagepipeline.image.b)) ? null : ((com.facebook.imagepipeline.image.b) result.j()).h());
            } finally {
                CloseableReference.h(result);
            }
        }
    }

    protected abstract void g(@Nullable Bitmap bitmap);
}
