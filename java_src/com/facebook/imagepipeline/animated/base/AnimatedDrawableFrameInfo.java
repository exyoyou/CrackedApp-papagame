package com.facebook.imagepipeline.animated.base;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class AnimatedDrawableFrameInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BlendOperation f27557f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final DisposalMethod f27558g;

    public enum BlendOperation {
        BLEND_WITH_PREVIOUS,
        NO_BLEND
    }

    public enum DisposalMethod {
        DISPOSE_DO_NOT,
        DISPOSE_TO_BACKGROUND,
        DISPOSE_TO_PREVIOUS
    }

    public AnimatedDrawableFrameInfo(int frameNumber, int xOffset, int yOffset, int width, int height, BlendOperation blendOperation, DisposalMethod disposalMethod) {
        this.f27552a = frameNumber;
        this.f27553b = xOffset;
        this.f27554c = yOffset;
        this.f27555d = width;
        this.f27556e = height;
        this.f27557f = blendOperation;
        this.f27558g = disposalMethod;
    }
}
