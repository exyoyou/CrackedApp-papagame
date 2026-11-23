package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.l;
import com.facebook.imagepipeline.cache.t;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Resources f27021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.facebook.drawee.components.a f27022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g4.a f27023c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f27024d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f27025e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private ImmutableList<g4.a> f27026f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private l<Boolean> f27027g;

    public void a(Resources resources, com.facebook.drawee.components.a deferredReleaser, g4.a animatedDrawableFactory, Executor uiThreadExecutor, t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, @Nullable ImmutableList<g4.a> drawableFactories, @Nullable l<Boolean> debugOverlayEnabledSupplier) {
        this.f27021a = resources;
        this.f27022b = deferredReleaser;
        this.f27023c = animatedDrawableFactory;
        this.f27024d = uiThreadExecutor;
        this.f27025e = memoryCache;
        this.f27026f = drawableFactories;
        this.f27027g = debugOverlayEnabledSupplier;
    }

    protected d b(Resources resources, com.facebook.drawee.components.a deferredReleaser, g4.a animatedDrawableFactory, Executor uiThreadExecutor, @Nullable t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, @Nullable ImmutableList<g4.a> drawableFactories) {
        return new d(resources, deferredReleaser, animatedDrawableFactory, uiThreadExecutor, memoryCache, drawableFactories);
    }

    public d c() {
        d dVarB = b(this.f27021a, this.f27022b, this.f27023c, this.f27024d, this.f27025e, this.f27026f);
        l<Boolean> lVar = this.f27027g;
        if (lVar != null) {
            dVarB.E0(lVar.get().booleanValue());
        }
        return dVarB;
    }
}
