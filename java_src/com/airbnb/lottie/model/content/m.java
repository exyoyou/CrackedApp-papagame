package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.s;

/* JADX INFO: loaded from: classes7.dex */
public class m implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.h f5848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5849d;

    public m(String str, int i10, com.airbnb.lottie.model.animatable.h hVar, boolean z10) {
        this.f5846a = str;
        this.f5847b = i10;
        this.f5848c = hVar;
        this.f5849d = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new s(lottieDrawable, bVar, this);
    }

    public String b() {
        return this.f5846a;
    }

    public com.airbnb.lottie.model.animatable.h c() {
        return this.f5848c;
    }

    public boolean d() {
        return this.f5849d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f5846a + ", index=" + this.f5847b + '}';
    }
}
