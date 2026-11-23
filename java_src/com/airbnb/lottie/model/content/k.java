package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class k implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path.FillType f5838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.animatable.a f5840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.animatable.d f5841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f5842f;

    public k(String str, boolean z10, Path.FillType fillType, @Nullable com.airbnb.lottie.model.animatable.a aVar, @Nullable com.airbnb.lottie.model.animatable.d dVar, boolean z11) {
        this.f5839c = str;
        this.f5837a = z10;
        this.f5838b = fillType;
        this.f5840d = aVar;
        this.f5841e = dVar;
        this.f5842f = z11;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new com.airbnb.lottie.animation.content.g(lottieDrawable, bVar, this);
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.a b() {
        return this.f5840d;
    }

    public Path.FillType c() {
        return this.f5838b;
    }

    public String d() {
        return this.f5839c;
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.d e() {
        return this.f5841e;
    }

    public boolean f() {
        return this.f5842f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f5837a + '}';
    }
}
