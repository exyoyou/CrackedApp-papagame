package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.v;

/* JADX INFO: loaded from: classes7.dex */
public class ShapeTrimPath implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type f5786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f5790f;

    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i10) {
            if (i10 == 1) {
                return SIMULTANEOUSLY;
            }
            if (i10 == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i10);
        }
    }

    public ShapeTrimPath(String str, Type type, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.b bVar3, boolean z10) {
        this.f5785a = str;
        this.f5786b = type;
        this.f5787c = bVar;
        this.f5788d = bVar2;
        this.f5789e = bVar3;
        this.f5790f = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new v(bVar, this);
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.f5788d;
    }

    public String c() {
        return this.f5785a;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.f5789e;
    }

    public com.airbnb.lottie.model.animatable.b e() {
        return this.f5787c;
    }

    public boolean f() {
        return this.f5790f;
    }

    public Type getType() {
        return this.f5786b;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f5787c + ", end: " + this.f5788d + ", offset: " + this.f5789e + "}";
    }
}
