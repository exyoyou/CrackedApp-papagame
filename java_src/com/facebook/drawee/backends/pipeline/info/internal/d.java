package com.facebook.drawee.backends.pipeline.info.internal;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import q3.j;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d extends j4.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l3.c f27042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f27043b;

    public d(l3.c monotonicClock, j imagePerfState) {
        this.f27042a = monotonicClock;
        this.f27043b = imagePerfState;
    }

    @Override // j4.b, j4.f
    public void b(ImageRequest request, String requestId, boolean isPrefetch) {
        this.f27043b.x(this.f27042a.now());
        this.f27043b.w(request);
        this.f27043b.D(requestId);
        this.f27043b.C(isPrefetch);
    }

    @Override // j4.b, j4.f
    public void e(ImageRequest request, Object callerContext, String requestId, boolean isPrefetch) {
        this.f27043b.y(this.f27042a.now());
        this.f27043b.w(request);
        this.f27043b.g(callerContext);
        this.f27043b.D(requestId);
        this.f27043b.C(isPrefetch);
    }

    @Override // j4.b, j4.f
    public void j(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch) {
        this.f27043b.x(this.f27042a.now());
        this.f27043b.w(request);
        this.f27043b.D(requestId);
        this.f27043b.C(isPrefetch);
    }

    @Override // j4.b, j4.f
    public void k(String requestId) {
        this.f27043b.x(this.f27042a.now());
        this.f27043b.D(requestId);
    }
}
