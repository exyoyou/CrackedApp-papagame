package com.airbnb.lottie.model.content;

/* JADX INFO: loaded from: classes7.dex */
public class Mask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaskMode f5755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.h f5756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f5757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5758d;

    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public Mask(MaskMode maskMode, com.airbnb.lottie.model.animatable.h hVar, com.airbnb.lottie.model.animatable.d dVar, boolean z10) {
        this.f5755a = maskMode;
        this.f5756b = hVar;
        this.f5757c = dVar;
        this.f5758d = z10;
    }

    public MaskMode a() {
        return this.f5755a;
    }

    public com.airbnb.lottie.model.animatable.h b() {
        return this.f5756b;
    }

    public com.airbnb.lottie.model.animatable.d c() {
        return this.f5757c;
    }

    public boolean d() {
        return this.f5758d;
    }
}
