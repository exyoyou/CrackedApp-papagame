package com.facebook.imagepipeline.common;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import com.facebook.common.internal.h;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
@Immutable
public class c {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final c f27772m = b().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f27775c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f27776d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f27777e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f27778f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Bitmap.Config f27779g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bitmap.Config f27780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final com.facebook.imagepipeline.decoder.b f27781i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final m4.a f27782j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public final ColorSpace f27783k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f27784l;

    public c(d b10) {
        this.f27773a = b10.l();
        this.f27774b = b10.k();
        this.f27775c = b10.h();
        this.f27776d = b10.n();
        this.f27777e = b10.g();
        this.f27778f = b10.j();
        this.f27779g = b10.c();
        this.f27780h = b10.b();
        this.f27781i = b10.f();
        this.f27782j = b10.d();
        this.f27783k = b10.e();
        this.f27784l = b10.i();
    }

    public static c a() {
        return f27772m;
    }

    public static d b() {
        return new d();
    }

    protected h.b c() {
        return h.e(this).d("minDecodeIntervalMs", this.f27773a).d("maxDimensionPx", this.f27774b).g("decodePreviewFrame", this.f27775c).g("useLastFrameForPreview", this.f27776d).g("decodeAllFrames", this.f27777e).g("forceStaticImage", this.f27778f).f("bitmapConfigName", this.f27779g.name()).f("animatedBitmapConfigName", this.f27780h.name()).f("customImageDecoder", this.f27781i).f("bitmapTransformation", this.f27782j).f("colorSpace", this.f27783k);
    }

    public boolean equals(@Nullable Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        c cVar = (c) o10;
        if (this.f27773a != cVar.f27773a || this.f27774b != cVar.f27774b || this.f27775c != cVar.f27775c || this.f27776d != cVar.f27776d || this.f27777e != cVar.f27777e || this.f27778f != cVar.f27778f) {
            return false;
        }
        boolean z10 = this.f27784l;
        if (z10 || this.f27779g == cVar.f27779g) {
            return (z10 || this.f27780h == cVar.f27780h) && this.f27781i == cVar.f27781i && this.f27782j == cVar.f27782j && this.f27783k == cVar.f27783k;
        }
        return false;
    }

    public int hashCode() {
        int iOrdinal = (((((((((this.f27773a * 31) + this.f27774b) * 31) + (this.f27775c ? 1 : 0)) * 31) + (this.f27776d ? 1 : 0)) * 31) + (this.f27777e ? 1 : 0)) * 31) + (this.f27778f ? 1 : 0);
        if (!this.f27784l) {
            iOrdinal = (iOrdinal * 31) + this.f27779g.ordinal();
        }
        if (!this.f27784l) {
            int i10 = iOrdinal * 31;
            Bitmap.Config config = this.f27780h;
            iOrdinal = i10 + (config != null ? config.ordinal() : 0);
        }
        int i11 = iOrdinal * 31;
        com.facebook.imagepipeline.decoder.b bVar = this.f27781i;
        int iHashCode = (i11 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        m4.a aVar = this.f27782j;
        int iHashCode2 = (iHashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
        ColorSpace colorSpace = this.f27783k;
        return iHashCode2 + (colorSpace != null ? colorSpace.hashCode() : 0);
    }

    public String toString() {
        return "ImageDecodeOptions{" + c().toString() + "}";
    }
}
