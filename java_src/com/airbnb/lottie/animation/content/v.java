package com.airbnb.lottie.animation.content;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class v implements c, com.airbnb.lottie.animation.keyframe.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f5503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<com.airbnb.lottie.animation.keyframe.a.b> f5504c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ShapeTrimPath.Type f5505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5507f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5508g;

    public v(com.airbnb.lottie.model.layer.b bVar, ShapeTrimPath shapeTrimPath) {
        this.f5502a = shapeTrimPath.c();
        this.f5503b = shapeTrimPath.f();
        this.f5505d = shapeTrimPath.getType();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = shapeTrimPath.e().a();
        this.f5506e = aVarA;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA2 = shapeTrimPath.b().a();
        this.f5507f = aVarA2;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = shapeTrimPath.d().a();
        this.f5508g = aVarA3;
        bVar.i(aVarA);
        bVar.i(aVarA2);
        bVar.i(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    void b(com.airbnb.lottie.animation.keyframe.a.b bVar) {
        this.f5504c.add(bVar);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        for (int i10 = 0; i10 < this.f5504c.size(); i10++) {
            this.f5504c.get(i10).d();
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> g() {
        return this.f5507f;
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5502a;
    }

    ShapeTrimPath.Type getType() {
        return this.f5505d;
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> h() {
        return this.f5508g;
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> i() {
        return this.f5506e;
    }

    public boolean j() {
        return this.f5503b;
    }
}
