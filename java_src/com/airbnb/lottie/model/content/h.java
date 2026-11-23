package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.q;

/* JADX INFO: loaded from: classes7.dex */
public class h implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5829c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.l f5830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f5831e;

    public h(String str, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.l lVar, boolean z10) {
        this.f5827a = str;
        this.f5828b = bVar;
        this.f5829c = bVar2;
        this.f5830d = lVar;
        this.f5831e = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    @Nullable
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new q(lottieDrawable, bVar, this);
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.f5828b;
    }

    public String c() {
        return this.f5827a;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.f5829c;
    }

    public com.airbnb.lottie.model.animatable.l e() {
        return this.f5830d;
    }

    public boolean f() {
        return this.f5831e;
    }
}
