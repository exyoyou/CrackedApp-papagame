package com.facebook.imagepipeline.image;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class h implements j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final j f28051d = d(Integer.MAX_VALUE, true, true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f28052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f28053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f28054c;

    private h(int quality, boolean isOfGoodEnoughQuality, boolean isOfFullQuality) {
        this.f28052a = quality;
        this.f28053b = isOfGoodEnoughQuality;
        this.f28054c = isOfFullQuality;
    }

    public static j d(int quality, boolean isOfGoodEnoughQuality, boolean isOfFullQuality) {
        return new h(quality, isOfGoodEnoughQuality, isOfFullQuality);
    }

    @Override // com.facebook.imagepipeline.image.j
    public boolean a() {
        return this.f28054c;
    }

    @Override // com.facebook.imagepipeline.image.j
    public boolean b() {
        return this.f28053b;
    }

    @Override // com.facebook.imagepipeline.image.j
    public int c() {
        return this.f28052a;
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof h)) {
            return false;
        }
        h hVar = (h) other;
        return this.f28052a == hVar.f28052a && this.f28053b == hVar.f28053b && this.f28054c == hVar.f28054c;
    }

    public int hashCode() {
        return (this.f28052a ^ (this.f28053b ? 4194304 : 0)) ^ (this.f28054c ? 8388608 : 0);
    }
}
