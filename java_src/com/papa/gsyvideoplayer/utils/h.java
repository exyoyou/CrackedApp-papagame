package com.papa.gsyvideoplayer.utils;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
class h {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f76985x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final int f76986y = 12;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final int f76987z = 5003;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f76988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f76989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f76990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f76991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f76992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f76993f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f76994g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f76996i;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f77003p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f77004q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f77005r;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f77009v;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f76995h = 12;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f76997j = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int[] f76998k = new int[5003];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int[] f76999l = new int[5003];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f77000m = 5003;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f77001n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f77002o = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f77006s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f77007t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int[] f77008u = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    byte[] f77010w = new byte[256];

    h(int i10, int i11, byte[] bArr, int i12) {
        this.f76988a = i10;
        this.f76989b = i11;
        this.f76990c = bArr;
        this.f76991d = Math.max(2, i12);
    }

    private int h() {
        int i10 = this.f76992e;
        if (i10 == 0) {
            return -1;
        }
        this.f76992e = i10 - 1;
        byte[] bArr = this.f76990c;
        int i11 = this.f76993f;
        this.f76993f = i11 + 1;
        return bArr[i11] & 255;
    }

    final int a(int i10) {
        return (1 << i10) - 1;
    }

    void b(byte b10, OutputStream outputStream) throws IOException {
        byte[] bArr = this.f77010w;
        int i10 = this.f77009v;
        int i11 = i10 + 1;
        this.f77009v = i11;
        bArr[i10] = b10;
        if (i11 >= 254) {
            g(outputStream);
        }
    }

    void c(OutputStream outputStream) throws IOException {
        d(this.f77000m);
        int i10 = this.f77004q;
        this.f77001n = i10 + 2;
        this.f77002o = true;
        i(i10, outputStream);
    }

    void d(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            this.f76998k[i11] = -1;
        }
    }

    void e(int i10, OutputStream outputStream) throws IOException {
        this.f77003p = i10;
        int i11 = 0;
        this.f77002o = false;
        this.f76994g = i10;
        this.f76996i = a(i10);
        int i12 = 1 << (i10 - 1);
        this.f77004q = i12;
        this.f77005r = i12 + 1;
        this.f77001n = i12 + 2;
        this.f77009v = 0;
        int iH = h();
        for (int i13 = this.f77000m; i13 < 65536; i13 *= 2) {
            i11++;
        }
        int i14 = 8 - i11;
        int i15 = this.f77000m;
        d(i15);
        i(this.f77004q, outputStream);
        while (true) {
            int iH2 = h();
            if (iH2 == -1) {
                i(iH, outputStream);
                i(this.f77005r, outputStream);
                return;
            }
            int i16 = (iH2 << this.f76995h) + iH;
            int i17 = (iH2 << i14) ^ iH;
            int i18 = this.f76998k[i17];
            if (i18 == i16) {
                iH = this.f76999l[i17];
            } else {
                if (i18 >= 0) {
                    int i19 = i15 - i17;
                    if (i17 == 0) {
                        i19 = 1;
                    }
                    while (true) {
                        i17 -= i19;
                        if (i17 < 0) {
                            i17 += i15;
                        }
                        int i20 = this.f76998k[i17];
                        if (i20 == i16) {
                            iH = this.f76999l[i17];
                        } else if (i20 < 0) {
                        }
                    }
                }
                i(iH, outputStream);
                int i21 = this.f77001n;
                if (i21 < this.f76997j) {
                    int[] iArr = this.f76999l;
                    this.f77001n = i21 + 1;
                    iArr[i17] = i21;
                    this.f76998k[i17] = i16;
                } else {
                    c(outputStream);
                }
                iH = iH2;
            }
        }
    }

    void f(OutputStream outputStream) throws IOException {
        outputStream.write(this.f76991d);
        this.f76992e = this.f76988a * this.f76989b;
        this.f76993f = 0;
        e(this.f76991d + 1, outputStream);
        outputStream.write(0);
    }

    void g(OutputStream outputStream) throws IOException {
        int i10 = this.f77009v;
        if (i10 > 0) {
            outputStream.write(i10);
            outputStream.write(this.f77010w, 0, this.f77009v);
            this.f77009v = 0;
        }
    }

    void i(int i10, OutputStream outputStream) throws IOException {
        int i11 = this.f77006s;
        int[] iArr = this.f77008u;
        int i12 = this.f77007t;
        int i13 = i11 & iArr[i12];
        this.f77006s = i13;
        if (i12 > 0) {
            this.f77006s = i13 | (i10 << i12);
        } else {
            this.f77006s = i10;
        }
        this.f77007t = i12 + this.f76994g;
        while (this.f77007t >= 8) {
            b((byte) (this.f77006s & 255), outputStream);
            this.f77006s >>= 8;
            this.f77007t -= 8;
        }
        if (this.f77001n > this.f76996i || this.f77002o) {
            if (this.f77002o) {
                int i14 = this.f77003p;
                this.f76994g = i14;
                this.f76996i = a(i14);
                this.f77002o = false;
            } else {
                int i15 = this.f76994g + 1;
                this.f76994g = i15;
                if (i15 == this.f76995h) {
                    this.f76996i = this.f76997j;
                } else {
                    this.f76996i = a(i15);
                }
            }
        }
        if (i10 == this.f77005r) {
            while (this.f77007t > 0) {
                b((byte) (this.f77006s & 255), outputStream);
                this.f77006s >>= 8;
                this.f77007t -= 8;
            }
            g(outputStream);
        }
    }
}
