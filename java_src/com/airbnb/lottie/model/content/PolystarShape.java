package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.o;

/* JADX INFO: loaded from: classes7.dex */
public class PolystarShape implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type f5763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.m<PointF, PointF> f5765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5767f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5768g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f5771j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f5772k;

    public enum Type {
        STAR(1),
        POLYGON(2);

        private final int value;

        Type(int i10) {
            this.value = i10;
        }

        public static Type forValue(int i10) {
            for (Type type : values()) {
                if (type.value == i10) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.b bVar3, com.airbnb.lottie.model.animatable.b bVar4, com.airbnb.lottie.model.animatable.b bVar5, com.airbnb.lottie.model.animatable.b bVar6, boolean z10, boolean z11) {
        this.f5762a = str;
        this.f5763b = type;
        this.f5764c = bVar;
        this.f5765d = mVar;
        this.f5766e = bVar2;
        this.f5767f = bVar3;
        this.f5768g = bVar4;
        this.f5769h = bVar5;
        this.f5770i = bVar6;
        this.f5771j = z10;
        this.f5772k = z11;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new o(lottieDrawable, bVar, this);
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.f5767f;
    }

    public com.airbnb.lottie.model.animatable.b c() {
        return this.f5769h;
    }

    public String d() {
        return this.f5762a;
    }

    public com.airbnb.lottie.model.animatable.b e() {
        return this.f5768g;
    }

    public com.airbnb.lottie.model.animatable.b f() {
        return this.f5770i;
    }

    public com.airbnb.lottie.model.animatable.b g() {
        return this.f5764c;
    }

    public Type getType() {
        return this.f5763b;
    }

    public com.airbnb.lottie.model.animatable.m<PointF, PointF> h() {
        return this.f5765d;
    }

    public com.airbnb.lottie.model.animatable.b i() {
        return this.f5766e;
    }

    public boolean j() {
        return this.f5771j;
    }

    public boolean k() {
        return this.f5772k;
    }
}
