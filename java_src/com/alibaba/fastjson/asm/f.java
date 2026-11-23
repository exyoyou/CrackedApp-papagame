package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final int f6392k = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f6393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f6394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f6395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f6396d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f6398f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f6399g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f6400h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    f f6401i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    f f6402j;

    private void a(int i10, int i11) {
        if (this.f6398f == null) {
            this.f6398f = new int[6];
        }
        int i12 = this.f6397e;
        int[] iArr = this.f6398f;
        if (i12 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f6398f = iArr2;
        }
        int[] iArr3 = this.f6398f;
        int i13 = this.f6397e;
        int i14 = i13 + 1;
        iArr3[i13] = i10;
        this.f6397e = i14 + 1;
        iArr3[i14] = i11;
    }

    void b(h hVar, a aVar, int i10) {
        if ((this.f6394b & 2) != 0) {
            aVar.g(this.f6396d - i10);
        } else {
            a(i10, aVar.f6350b);
            aVar.g(-1);
        }
    }

    void c(h hVar, int i10, byte[] bArr) {
        this.f6394b |= 2;
        this.f6396d = i10;
        int i11 = 0;
        while (i11 < this.f6397e) {
            int[] iArr = this.f6398f;
            int i12 = i11 + 1;
            int i13 = iArr[i11];
            int i14 = iArr[i12];
            int i15 = i10 - i13;
            bArr[i14] = (byte) (i15 >>> 8);
            bArr[i14 + 1] = (byte) i15;
            i11 = i12 + 1;
        }
    }
}
