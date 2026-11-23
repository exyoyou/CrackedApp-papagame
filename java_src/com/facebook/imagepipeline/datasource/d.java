package com.facebook.imagepipeline.datasource;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class d extends com.facebook.datasource.b<List<CloseableReference<com.facebook.imagepipeline.image.c>>> {
    @Override // com.facebook.datasource.b
    public void f(com.facebook.datasource.c<List<CloseableReference<com.facebook.imagepipeline.image.c>>> dataSource) {
        if (dataSource.f()) {
            List<CloseableReference<com.facebook.imagepipeline.image.c>> result = dataSource.getResult();
            if (result == null) {
                g(null);
                return;
            }
            try {
                ArrayList arrayList = new ArrayList(result.size());
                for (CloseableReference<com.facebook.imagepipeline.image.c> closeableReference : result) {
                    if (closeableReference == null || !(closeableReference.j() instanceof com.facebook.imagepipeline.image.b)) {
                        arrayList.add(null);
                    } else {
                        arrayList.add(((com.facebook.imagepipeline.image.b) closeableReference.j()).h());
                    }
                }
                g(arrayList);
            } finally {
                Iterator<CloseableReference<com.facebook.imagepipeline.image.c>> it2 = result.iterator();
                while (it2.hasNext()) {
                    CloseableReference.h(it2.next());
                }
            }
        }
    }

    protected abstract void g(@Nullable List<Bitmap> bitmapList);
}
