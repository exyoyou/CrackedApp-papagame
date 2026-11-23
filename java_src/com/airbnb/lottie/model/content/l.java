package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class l implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c> f5844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f5845c;

    public l(String str, List<c> list, boolean z10) {
        this.f5843a = str;
        this.f5844b = list;
        this.f5845c = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new com.airbnb.lottie.animation.content.d(lottieDrawable, bVar, this, jVar);
    }

    public List<c> b() {
        return this.f5844b;
    }

    public String c() {
        return this.f5843a;
    }

    public boolean d() {
        return this.f5845c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f5843a + "' Shapes: " + Arrays.toString(this.f5844b.toArray()) + '}';
    }
}
