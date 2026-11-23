package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface f {
    com.facebook.cache.common.c a(ImageRequest request, @Nullable Object callerContext);

    com.facebook.cache.common.c b(ImageRequest request, @Nullable Object callerContext);

    com.facebook.cache.common.c c(ImageRequest request, @Nullable Object callerContext);

    com.facebook.cache.common.c d(ImageRequest request, Uri sourceUri, @Nullable Object callerContext);
}
