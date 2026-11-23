package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.i;
import com.facebook.common.internal.m;
import com.facebook.common.references.CloseableReference;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.core.h;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class e extends AbstractDraweeControllerBuilder<e, ImageRequest, CloseableReference<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.g> {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final h f27009u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final g f27010v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private ImmutableList<g4.a> f27011w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private q3.c f27012x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private q3.g f27013y;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f27014a;

        static {
            int[] iArr = new int[AbstractDraweeControllerBuilder.CacheLevel.values().length];
            f27014a = iArr;
            try {
                iArr[AbstractDraweeControllerBuilder.CacheLevel.FULL_FETCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27014a[AbstractDraweeControllerBuilder.CacheLevel.DISK_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27014a[AbstractDraweeControllerBuilder.CacheLevel.BITMAP_MEMORY_CACHE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public e(Context context, g pipelineDraweeControllerFactory, h imagePipeline, Set<com.facebook.drawee.controller.c> boundControllerListeners, Set<b4.c> boundControllerListeners2) {
        super(context, boundControllerListeners, boundControllerListeners2);
        this.f27009u = imagePipeline;
        this.f27010v = pipelineDraweeControllerFactory;
    }

    public static ImageRequest.RequestLevel U(AbstractDraweeControllerBuilder.CacheLevel cacheLevel) {
        int i10 = a.f27014a[cacheLevel.ordinal()];
        if (i10 == 1) {
            return ImageRequest.RequestLevel.FULL_FETCH;
        }
        if (i10 == 2) {
            return ImageRequest.RequestLevel.DISK_CACHE;
        }
        if (i10 == 3) {
            return ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE;
        }
        throw new RuntimeException("Cache level" + cacheLevel + "is not supported. ");
    }

    @Nullable
    private com.facebook.cache.common.c V() {
        ImageRequest imageRequestR = r();
        com.facebook.imagepipeline.cache.f fVarT = this.f27009u.t();
        if (fVarT == null || imageRequestR == null) {
            return null;
        }
        return imageRequestR.m() != null ? fVarT.a(imageRequestR, h()) : fVarT.c(imageRequestR, h());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeControllerBuilder
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> l(s3.a controller, String controllerId, ImageRequest imageRequest, Object callerContext, AbstractDraweeControllerBuilder.CacheLevel cacheLevel) {
        return this.f27009u.l(imageRequest, callerContext, U(cacheLevel), X(controller), controllerId);
    }

    @Nullable
    protected j4.f X(final s3.a controller) {
        if (controller instanceof d) {
            return ((d) controller).s0();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeControllerBuilder
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public d C() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeControllerBuilder#obtainController");
        }
        try {
            s3.a aVarU = u();
            String strF = AbstractDraweeControllerBuilder.f();
            d dVarC = aVarU instanceof d ? (d) aVarU : this.f27010v.c();
            dVarC.u0(D(dVarC, strF), strF, V(), h(), this.f27011w, this.f27012x);
            dVarC.v0(this.f27013y, this, m.f26885b);
            return dVarC;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public e Z(@Nullable ImmutableList<g4.a> customDrawableFactories) {
        this.f27011w = customDrawableFactories;
        return x();
    }

    public e a0(g4.a... drawableFactories) {
        i.i(drawableFactories);
        return Z(ImmutableList.of((Object[]) drawableFactories));
    }

    public e b0(g4.a drawableFactory) {
        i.i(drawableFactory);
        return Z(ImmutableList.of((Object[]) new g4.a[]{drawableFactory}));
    }

    public e c0(@Nullable q3.c imageOriginListener) {
        this.f27012x = imageOriginListener;
        return x();
    }

    public e d0(@Nullable q3.g imagePerfDataListener) {
        this.f27013y = imagePerfDataListener;
        return x();
    }

    @Override // s3.d
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public e b(@Nullable Uri uri) {
        return uri == null ? (e) super.N(null) : (e) super.N(ImageRequestBuilder.x(uri).N(RotationOptions.b()).a());
    }

    @Override // s3.d
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public e setUri(@Nullable String uriString) {
        return (uriString == null || uriString.isEmpty()) ? (e) super.N(ImageRequest.c(uriString)) : b(Uri.parse(uriString));
    }
}
