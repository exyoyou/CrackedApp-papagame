package com.facebook.fresco.animation.bitmap.wrapper;

import com.facebook.fresco.animation.backend.d;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.base.a f27442c;

    public a(com.facebook.imagepipeline.animated.base.a animatedDrawableBackend) {
        this.f27442c = animatedDrawableBackend;
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int b() {
        return this.f27442c.b();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int c() {
        return this.f27442c.c();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int h(int frameNumber) {
        return this.f27442c.h(frameNumber);
    }
}
