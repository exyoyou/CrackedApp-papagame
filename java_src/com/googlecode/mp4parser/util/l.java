package com.googlecode.mp4parser.util;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class l {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final l f33794j = new l(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final l f33795k = new l(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final l f33796l = new l(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final l f33797m = new l(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    double f33798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    double f33799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    double f33800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    double f33801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    double f33802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    double f33803f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    double f33804g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    double f33805h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    double f33806i;

    public l(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        this.f33798a = d14;
        this.f33799b = d15;
        this.f33800c = d16;
        this.f33801d = d10;
        this.f33802e = d11;
        this.f33803f = d12;
        this.f33804g = d13;
        this.f33805h = d17;
        this.f33806i = d18;
    }

    public static l a(ByteBuffer byteBuffer) {
        return b(com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.c(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.c(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.c(byteBuffer));
    }

    public static l b(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        return new l(d10, d11, d13, d14, d12, d15, d18, d16, d17);
    }

    public void c(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.b(byteBuffer, this.f33801d);
        com.coremedia.iso.i.b(byteBuffer, this.f33802e);
        com.coremedia.iso.i.a(byteBuffer, this.f33798a);
        com.coremedia.iso.i.b(byteBuffer, this.f33803f);
        com.coremedia.iso.i.b(byteBuffer, this.f33804g);
        com.coremedia.iso.i.a(byteBuffer, this.f33799b);
        com.coremedia.iso.i.b(byteBuffer, this.f33805h);
        com.coremedia.iso.i.b(byteBuffer, this.f33806i);
        com.coremedia.iso.i.a(byteBuffer, this.f33800c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return Double.compare(lVar.f33801d, this.f33801d) == 0 && Double.compare(lVar.f33802e, this.f33802e) == 0 && Double.compare(lVar.f33803f, this.f33803f) == 0 && Double.compare(lVar.f33804g, this.f33804g) == 0 && Double.compare(lVar.f33805h, this.f33805h) == 0 && Double.compare(lVar.f33806i, this.f33806i) == 0 && Double.compare(lVar.f33798a, this.f33798a) == 0 && Double.compare(lVar.f33799b, this.f33799b) == 0 && Double.compare(lVar.f33800c, this.f33800c) == 0;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f33798a);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f33799b);
        int i10 = (((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.f33800c);
        int i11 = (i10 * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.f33801d);
        int i12 = (i11 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.f33802e);
        int i13 = (i12 * 31) + ((int) (jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32)));
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.f33803f);
        int i14 = (i13 * 31) + ((int) (jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32)));
        long jDoubleToLongBits7 = Double.doubleToLongBits(this.f33804g);
        int i15 = (i14 * 31) + ((int) (jDoubleToLongBits7 ^ (jDoubleToLongBits7 >>> 32)));
        long jDoubleToLongBits8 = Double.doubleToLongBits(this.f33805h);
        int i16 = (i15 * 31) + ((int) (jDoubleToLongBits8 ^ (jDoubleToLongBits8 >>> 32)));
        long jDoubleToLongBits9 = Double.doubleToLongBits(this.f33806i);
        return (i16 * 31) + ((int) (jDoubleToLongBits9 ^ (jDoubleToLongBits9 >>> 32)));
    }

    public String toString() {
        if (equals(f33794j)) {
            return "Rotate 0°";
        }
        if (equals(f33795k)) {
            return "Rotate 90°";
        }
        if (equals(f33796l)) {
            return "Rotate 180°";
        }
        if (equals(f33797m)) {
            return "Rotate 270°";
        }
        return "Matrix{u=" + this.f33798a + ", v=" + this.f33799b + ", w=" + this.f33800c + ", a=" + this.f33801d + ", b=" + this.f33802e + ", c=" + this.f33803f + ", d=" + this.f33804g + ", tx=" + this.f33805h + ", ty=" + this.f33806i + '}';
    }
}
