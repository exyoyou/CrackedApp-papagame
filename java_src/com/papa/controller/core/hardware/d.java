package com.papa.controller.core.hardware;

/* JADX INFO: loaded from: classes2.dex */
public class d extends a {
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int[] H;
    private int[] I;
    private int[] J;
    private int[] K;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f76660p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f76661q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f76662r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f76663s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f76664t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f76665u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f76666v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f76667w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f76668x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f76669y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f76670z;

    public d() {
    }

    private int H(byte b10, int i10) {
        return ((b10 & 255) & i10) == i10 ? 1 : 0;
    }

    private int[] p(byte[] bArr, int i10) {
        int[] iArr = new int[2];
        if (bArr == null || bArr.length < i10 + 2) {
            iArr[0] = 128;
            iArr[1] = 128;
            return iArr;
        }
        iArr[0] = bArr[i10] & 255;
        iArr[1] = bArr[i10 + 1] & 255;
        return iArr;
    }

    public int A() {
        return this.f76663s;
    }

    public int B() {
        return this.f76664t;
    }

    public int C() {
        return this.f76666v;
    }

    public int D() {
        return this.f76667w;
    }

    public int E() {
        return this.f76660p;
    }

    public int F() {
        return this.B;
    }

    public int G() {
        return this.C;
    }

    public void I(int i10) {
        this.f76670z = i10;
    }

    public void J(int[] iArr) {
        this.H = iArr;
    }

    public void K(int[] iArr) {
        this.I = iArr;
    }

    public void L(int[] iArr) {
        this.J = iArr;
    }

    public void M(int[] iArr) {
        this.K = iArr;
    }

    public void N(int i10) {
        this.A = i10;
    }

    public void O(int i10) {
        this.f76665u = i10;
    }

    public void P(int i10) {
        this.f76661q = i10;
    }

    public void Q(int i10) {
        this.f76668x = i10;
    }

    public void R(int i10) {
        this.f76669y = i10;
    }

    public void S(int i10) {
        this.D = i10;
    }

    public void T(int i10) {
        this.F = i10;
    }

    public void U(int i10) {
        this.f76662r = i10;
    }

    public void V(int i10) {
        this.E = i10;
    }

    public void W(int i10) {
        this.G = i10;
    }

    public void X(int i10) {
        this.f76663s = i10;
    }

    public void Y(int i10) {
        this.f76664t = i10;
    }

    public void Z(int i10) {
        this.f76666v = i10;
    }

    public void a0(int i10) {
        this.f76667w = i10;
    }

    public void b0(int i10) {
        this.f76660p = i10;
    }

    public void c0(int i10) {
        this.B = i10;
    }

    public void d0(int i10) {
        this.C = i10;
    }

    public int k() {
        return this.f76670z;
    }

    public int l() {
        return this.H[0];
    }

    public int m() {
        return this.I[0];
    }

    public int n() {
        return this.J[0];
    }

    public int o() {
        return this.K[0];
    }

    public int q() {
        return this.A;
    }

    public int r() {
        return this.f76665u;
    }

    public int s() {
        return this.f76661q;
    }

    public int t() {
        return this.f76668x;
    }

    public int u() {
        return this.f76669y;
    }

    public int v() {
        return this.D;
    }

    public int w() {
        return this.F;
    }

    public int x() {
        return this.f76662r;
    }

    public int y() {
        return this.E;
    }

    public int z() {
        return this.G;
    }

    public d(byte[] bArr) {
        super(bArr);
        if (this.f76652c < 23 || this.f76653d != 1) {
            return;
        }
        byte b10 = bArr[5];
        this.f76660p = H(b10, 1);
        this.f76661q = H(b10, 2);
        this.f76662r = H(b10, 4);
        this.f76663s = H(b10, 8);
        this.f76664t = H(b10, 16);
        this.f76665u = H(b10, 32);
        this.f76666v = H(b10, 64);
        this.f76667w = H(b10, 128);
        byte b11 = bArr[6];
        this.f76668x = H(b11, 1);
        this.f76669y = H(b11, 2);
        this.f76670z = d(bArr[7]);
        this.A = d(bArr[8]);
        this.B = d(bArr[9]);
        this.C = d(bArr[10]);
        this.D = d(bArr[11]);
        this.E = d(bArr[12]);
        this.F = d(bArr[13]);
        this.G = d(bArr[14]);
        this.H = p(bArr, 15);
        this.I = p(bArr, 17);
        this.J = p(bArr, 19);
        this.K = p(bArr, 21);
    }
}
