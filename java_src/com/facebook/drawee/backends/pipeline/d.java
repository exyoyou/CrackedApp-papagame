package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.i;
import com.facebook.common.internal.l;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.time.AwakeTimeSinceBootClock;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.drawable.s;
import com.facebook.imagepipeline.cache.t;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import q3.h;

/* JADX INFO: loaded from: classes9.dex */
public class d extends com.facebook.drawee.controller.a<CloseableReference<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.g> {
    private static final Class<?> P = d.class;
    private final Resources A;
    private final g4.a B;

    @Nullable
    private final ImmutableList<g4.a> C;

    @Nullable
    private final t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> D;
    private com.facebook.cache.common.c E;
    private l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> F;
    private boolean G;

    @Nullable
    private ImmutableList<g4.a> H;

    @Nullable
    private h I;

    @GuardedBy("this")
    @Nullable
    private Set<j4.f> J;

    @GuardedBy("this")
    @Nullable
    private q3.c K;
    private p3.b L;

    @Nullable
    private ImageRequest M;

    @Nullable
    private ImageRequest[] N;

    @Nullable
    private ImageRequest O;

    public d(Resources resources, com.facebook.drawee.components.a deferredReleaser, g4.a animatedDrawableFactory, Executor uiThreadExecutor, @Nullable t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, @Nullable ImmutableList<g4.a> globalDrawableFactories) {
        super(deferredReleaser, uiThreadExecutor, null, null);
        this.A = resources;
        this.B = new b(resources, animatedDrawableFactory);
        this.C = globalDrawableFactories;
        this.D = memoryCache;
    }

    private void t0(l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> dataSourceSupplier) {
        this.F = dataSourceSupplier;
        x0(null);
    }

    @Nullable
    private Drawable w0(@Nullable ImmutableList<g4.a> drawableFactories, com.facebook.imagepipeline.image.c closeableImage) {
        Drawable drawableA;
        if (drawableFactories == null) {
            return null;
        }
        for (g4.a aVar : drawableFactories) {
            if (aVar.b(closeableImage) && (drawableA = aVar.a(closeableImage)) != null) {
                return drawableA;
            }
        }
        return null;
    }

    private void x0(@Nullable com.facebook.imagepipeline.image.c image) {
        if (this.G) {
            if (s() == null) {
                com.facebook.drawee.debug.a aVar = new com.facebook.drawee.debug.a();
                r3.a aVar2 = new r3.a(aVar);
                this.L = new p3.b();
                l(aVar2);
                a0(aVar);
            }
            if (this.K == null) {
                j0(this.L);
            }
            if (s() instanceof com.facebook.drawee.debug.a) {
                F0(image, (com.facebook.drawee.debug.a) s());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
    public void R(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> image) {
        CloseableReference.h(image);
    }

    @Override // com.facebook.drawee.controller.a
    @Nullable
    protected Uri B() {
        return b4.g.a(this.M, this.O, this.N, ImageRequest.f28711y);
    }

    public synchronized void B0(q3.c imageOriginListener) {
        q3.c cVar = this.K;
        if (cVar instanceof q3.a) {
            ((q3.a) cVar).c(imageOriginListener);
        } else {
            if (cVar == imageOriginListener) {
                this.K = null;
            }
        }
    }

    public synchronized void C0(j4.f requestListener) {
        Set<j4.f> set = this.J;
        if (set == null) {
            return;
        }
        set.remove(requestListener);
    }

    public void D0(@Nullable ImmutableList<g4.a> customDrawableFactories) {
        this.H = customDrawableFactories;
    }

    public void E0(boolean drawDebugOverlay) {
        this.G = drawDebugOverlay;
    }

    protected void F0(@Nullable com.facebook.imagepipeline.image.c image, com.facebook.drawee.debug.a debugOverlay) {
        r rVarA;
        debugOverlay.k(w());
        s3.b bVarE = e();
        s.c cVarD = null;
        if (bVarE != null && (rVarA = s.a(bVarE.b())) != null) {
            cVarD = rVarA.D();
        }
        debugOverlay.s(cVarD);
        int iB = this.L.b();
        debugOverlay.q(q3.e.b(iB), p3.a.a(iB));
        if (image == null) {
            debugOverlay.i();
        } else {
            debugOverlay.l(image.getWidth(), image.getHeight());
            debugOverlay.p(image.d());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.drawee.controller.a
    protected void P(@Nullable Drawable drawable) {
        if (drawable instanceof n3.a) {
            ((n3.a) drawable).a();
        }
    }

    @Override // s3.a
    public boolean a(@Nullable s3.a other) {
        com.facebook.cache.common.c cVar = this.E;
        if (cVar == null || !(other instanceof d)) {
            return false;
        }
        return com.facebook.common.internal.h.a(cVar, ((d) other).n0());
    }

    @Override // com.facebook.drawee.controller.a, s3.a
    public void d(@Nullable s3.b hierarchy) {
        super.d(hierarchy);
        x0(null);
    }

    protected Resources getResources() {
        return this.A;
    }

    public synchronized void j0(q3.c imageOriginListener) {
        q3.c cVar = this.K;
        if (cVar instanceof q3.a) {
            ((q3.a) cVar).b(imageOriginListener);
        } else if (cVar != null) {
            this.K = new q3.a(cVar, imageOriginListener);
        } else {
            this.K = imageOriginListener;
        }
    }

    public synchronized void k0(j4.f requestListener) {
        if (this.J == null) {
            this.J = new HashSet();
        }
        this.J.add(requestListener);
    }

    protected void l0() {
        synchronized (this) {
            this.K = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public Drawable n(CloseableReference<com.facebook.imagepipeline.image.c> image) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#createDrawable");
            }
            i.o(CloseableReference.p(image));
            com.facebook.imagepipeline.image.c cVarJ = image.j();
            x0(cVarJ);
            Drawable drawableW0 = w0(this.H, cVarJ);
            if (drawableW0 != null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return drawableW0;
            }
            Drawable drawableW1 = w0(this.C, cVarJ);
            if (drawableW1 != null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return drawableW1;
            }
            Drawable drawableA = this.B.a(cVarJ);
            if (drawableA != null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return drawableA;
            }
            throw new UnsupportedOperationException("Unrecognized image class: " + cVarJ);
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    protected com.facebook.cache.common.c n0() {
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    @Nullable
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public CloseableReference<com.facebook.imagepipeline.image.c> o() {
        com.facebook.cache.common.c cVar;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#getCachedImage");
        }
        try {
            t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> tVar = this.D;
            if (tVar != null && (cVar = this.E) != null) {
                CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = tVar.get(cVar);
                if (closeableReference == null || closeableReference.j().b().a()) {
                    return closeableReference;
                }
                closeableReference.close();
                return null;
            }
            return null;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> p0() {
        return this.F;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public int y(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> image) {
        if (image != null) {
            return image.l();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public com.facebook.imagepipeline.image.g z(CloseableReference<com.facebook.imagepipeline.image.c> image) {
        i.o(CloseableReference.p(image));
        return image.j();
    }

    @Nullable
    public synchronized j4.f s0() {
        q3.d dVar = this.K != null ? new q3.d(w(), this.K) : null;
        Set<j4.f> set = this.J;
        if (set == null) {
            return dVar;
        }
        j4.d dVar2 = new j4.d(set);
        if (dVar != null) {
            dVar2.l(dVar);
        }
        return dVar2;
    }

    @Override // com.facebook.drawee.controller.a
    protected com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> t() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#getDataSource");
        }
        if (i3.a.R(2)) {
            i3.a.V(P, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> cVar = this.F.get();
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return cVar;
    }

    @Override // com.facebook.drawee.controller.a
    public String toString() {
        return com.facebook.common.internal.h.e(this).f("super", super.toString()).f("dataSourceSupplier", this.F).toString();
    }

    public void u0(l<com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>>> dataSourceSupplier, String id2, com.facebook.cache.common.c cacheKey, Object callerContext, @Nullable ImmutableList<g4.a> customDrawableFactories, @Nullable q3.c imageOriginListener) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#initialize");
        }
        super.E(id2, callerContext);
        t0(dataSourceSupplier);
        this.E = cacheKey;
        D0(customDrawableFactories);
        l0();
        x0(null);
        j0(imageOriginListener);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    protected synchronized void v0(@Nullable q3.g imagePerfDataListener, AbstractDraweeControllerBuilder<e, ImageRequest, CloseableReference<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.g> builder, l<Boolean> asyncLogging) {
        h hVar = this.I;
        if (hVar != null) {
            hVar.g();
        }
        if (imagePerfDataListener != null) {
            if (this.I == null) {
                this.I = new h(AwakeTimeSinceBootClock.get(), this, asyncLogging);
            }
            this.I.c(imagePerfDataListener);
            this.I.h(true);
            this.I.j(builder);
        }
        this.M = builder.r();
        this.N = builder.q();
        this.O = builder.t();
    }

    @Override // com.facebook.drawee.controller.a
    @Nullable
    /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] */
    public Map<String, Object> K(com.facebook.imagepipeline.image.g info) {
        if (info == null) {
            return null;
        }
        return info.getExtras();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public void M(String id2, CloseableReference<com.facebook.imagepipeline.image.c> cachedImage) {
        super.M(id2, cachedImage);
        synchronized (this) {
            q3.c cVar = this.K;
            if (cVar != null) {
                cVar.a(id2, 6, true, "PipelineDraweeController");
            }
        }
    }
}
