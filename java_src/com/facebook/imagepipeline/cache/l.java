package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class l implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static l f27723a;

    protected l() {
    }

    public static synchronized l f() {
        if (f27723a == null) {
            f27723a = new l();
        }
        return f27723a;
    }

    @Override // com.facebook.imagepipeline.cache.f
    public com.facebook.cache.common.c a(ImageRequest request, @Nullable Object callerContext) {
        com.facebook.cache.common.c cVar;
        String name;
        com.facebook.imagepipeline.request.d dVarM = request.m();
        if (dVarM != null) {
            com.facebook.cache.common.c cVarA = dVarM.a();
            name = dVarM.getClass().getName();
            cVar = cVarA;
        } else {
            cVar = null;
            name = null;
        }
        return new b(e(request.w()).toString(), request.s(), request.u(), request.i(), cVar, name, callerContext);
    }

    @Override // com.facebook.imagepipeline.cache.f
    public com.facebook.cache.common.c b(ImageRequest request, @Nullable Object callerContext) {
        return d(request, request.w(), callerContext);
    }

    @Override // com.facebook.imagepipeline.cache.f
    public com.facebook.cache.common.c c(ImageRequest request, @Nullable Object callerContext) {
        return new b(e(request.w()).toString(), request.s(), request.u(), request.i(), null, null, callerContext);
    }

    @Override // com.facebook.imagepipeline.cache.f
    public com.facebook.cache.common.c d(ImageRequest request, Uri sourceUri, @Nullable Object callerContext) {
        return new com.facebook.cache.common.j(e(sourceUri).toString());
    }

    protected Uri e(Uri sourceUri) {
        return sourceUri;
    }
}
