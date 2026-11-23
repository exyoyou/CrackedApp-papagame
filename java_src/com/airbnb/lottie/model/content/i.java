package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.r;

/* JADX INFO: loaded from: classes7.dex */
public class i implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.m<Float, Float> f5833b;

    public i(String str, com.airbnb.lottie.model.animatable.m<Float, Float> mVar) {
        this.f5832a = str;
        this.f5833b = mVar;
    }

    @Override // com.airbnb.lottie.model.content.c
    @Nullable
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new r(lottieDrawable, bVar, this);
    }

    public com.airbnb.lottie.model.animatable.m<Float, Float> b() {
        return this.f5833b;
    }

    public String c() {
        return this.f5832a;
    }
}
