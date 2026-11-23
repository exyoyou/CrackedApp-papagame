package com.facebook.drawee.backends.pipeline.info.internal;

import android.graphics.drawable.Animatable;
import androidx.annotation.VisibleForTesting;
import b4.h;
import com.facebook.imagepipeline.image.g;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import q3.j;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b extends com.facebook.drawee.controller.b<g> implements h<g> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l3.c f27037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f27038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q3.h f27039e;

    public b(l3.c clock, j imagePerfState, q3.h imagePerfMonitor) {
        this.f27037c = clock;
        this.f27038d = imagePerfState;
        this.f27039e = imagePerfMonitor;
    }

    @VisibleForTesting
    private void f(long time) {
        this.f27038d.G(false);
        this.f27038d.z(time);
        this.f27039e.a(this.f27038d, 2);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onFinalImageSet(String id2, @Nullable g imageInfo, @Nullable Animatable animatable) {
        long jNow = this.f27037c.now();
        this.f27038d.k(jNow);
        this.f27038d.x(jNow);
        this.f27038d.l(id2);
        this.f27038d.t(imageInfo);
        this.f27039e.b(this.f27038d, 3);
    }

    @Override // b4.h
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void e(String id2, g info, b4.d dimensionsInfo) {
        this.f27038d.s(this.f27037c.now());
        this.f27038d.p(dimensionsInfo);
        this.f27039e.b(this.f27038d, 6);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void onIntermediateImageSet(String id2, @Nullable g imageInfo) {
        this.f27038d.n(this.f27037c.now());
        this.f27038d.l(id2);
        this.f27038d.t(imageInfo);
        this.f27039e.b(this.f27038d, 2);
    }

    @VisibleForTesting
    public void g(long now) {
        this.f27038d.G(true);
        this.f27038d.F(now);
        this.f27039e.a(this.f27038d, 1);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void onFailure(String id2, Throwable throwable) {
        long jNow = this.f27037c.now();
        this.f27038d.j(jNow);
        this.f27038d.l(id2);
        this.f27038d.q(throwable);
        this.f27039e.b(this.f27038d, 5);
        f(jNow);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void onRelease(String id2) {
        super.onRelease(id2);
        long jNow = this.f27037c.now();
        int iD = this.f27038d.d();
        if (iD != 3 && iD != 5 && iD != 6) {
            this.f27038d.i(jNow);
            this.f27038d.l(id2);
            this.f27039e.b(this.f27038d, 4);
        }
        f(jNow);
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void onSubmit(String id2, Object callerContext) {
        long jNow = this.f27037c.now();
        this.f27038d.f();
        this.f27038d.o(jNow);
        this.f27038d.l(id2);
        this.f27038d.g(callerContext);
        this.f27039e.b(this.f27038d, 0);
        g(jNow);
    }
}
