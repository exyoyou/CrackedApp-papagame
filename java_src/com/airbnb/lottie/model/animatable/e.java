package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class e implements m<PointF, PointF> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.airbnb.lottie.value.a<PointF>> f5725a;

    public e(List<com.airbnb.lottie.value.a<PointF>> list) {
        this.f5725a = list;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a() {
        return this.f5725a.get(0).i() ? new com.airbnb.lottie.animation.keyframe.k(this.f5725a) : new com.airbnb.lottie.animation.keyframe.j(this.f5725a);
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public List<com.airbnb.lottie.value.a<PointF>> b() {
        return this.f5725a;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public boolean c() {
        return this.f5725a.size() == 1 && this.f5725a.get(0).i();
    }
}
