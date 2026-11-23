package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class i implements m<PointF, PointF> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f5726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f5727b;

    public i(b bVar, b bVar2) {
        this.f5726a = bVar;
        this.f5727b = bVar2;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a() {
        return new com.airbnb.lottie.animation.keyframe.n(this.f5726a.a(), this.f5727b.a());
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public List<com.airbnb.lottie.value.a<PointF>> b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public boolean c() {
        return this.f5726a.c() && this.f5727b.c();
    }
}
