package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GradientType f5799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path.FillType f5800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.c f5801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f5802d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f5803e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f5804f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f5805g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.animatable.b f5806h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.animatable.b f5807i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f5808j;

    public e(String str, GradientType gradientType, Path.FillType fillType, com.airbnb.lottie.model.animatable.c cVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.f fVar, com.airbnb.lottie.model.animatable.f fVar2, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2, boolean z10) {
        this.f5799a = gradientType;
        this.f5800b = fillType;
        this.f5801c = cVar;
        this.f5802d = dVar;
        this.f5803e = fVar;
        this.f5804f = fVar2;
        this.f5805g = str;
        this.f5806h = bVar;
        this.f5807i = bVar2;
        this.f5808j = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new com.airbnb.lottie.animation.content.h(lottieDrawable, jVar, bVar, this);
    }

    public com.airbnb.lottie.model.animatable.f b() {
        return this.f5804f;
    }

    public Path.FillType c() {
        return this.f5800b;
    }

    public com.airbnb.lottie.model.animatable.c d() {
        return this.f5801c;
    }

    public GradientType e() {
        return this.f5799a;
    }

    public String f() {
        return this.f5805g;
    }

    public com.airbnb.lottie.model.animatable.d g() {
        return this.f5802d;
    }

    public com.airbnb.lottie.model.animatable.f h() {
        return this.f5803e;
    }

    public boolean i() {
        return this.f5808j;
    }
}
