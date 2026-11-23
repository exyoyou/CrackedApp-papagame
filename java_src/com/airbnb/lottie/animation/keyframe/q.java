package com.airbnb.lottie.animation.keyframe;

import androidx.annotation.Nullable;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
public class q<K, A> extends a<K, A> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final A f5573i;

    public q(com.airbnb.lottie.value.j<A> jVar) {
        this(jVar, null);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    float c() {
        return 1.0f;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public A h() {
        com.airbnb.lottie.value.j<A> jVar = this.f5513e;
        A a10 = this.f5573i;
        return jVar.b(0.0f, 0.0f, a10, a10, f(), f(), f());
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    A i(com.airbnb.lottie.value.a<K> aVar, float f10) {
        return h();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public void k() {
        if (this.f5513e != null) {
            super.k();
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public void m(float f10) {
        this.f5512d = f10;
    }

    public q(com.airbnb.lottie.value.j<A> jVar, @Nullable A a10) {
        super(Collections.emptyList());
        n(jVar);
        this.f5573i = a10;
    }
}
