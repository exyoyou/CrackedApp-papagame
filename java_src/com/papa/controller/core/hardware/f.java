package com.papa.controller.core.hardware;

/* JADX INFO: loaded from: classes2.dex */
public class f extends a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f76671p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f76672q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f76673r;

    public f() {
    }

    @Override // com.papa.controller.core.hardware.a
    public byte[] a() {
        return super.b(new byte[]{3});
    }

    public int k() {
        return this.f76671p;
    }

    public int l() {
        return this.f76673r;
    }

    public int m() {
        return this.f76672q;
    }

    public void n(int i10) {
        this.f76671p = i10;
    }

    public void o(int i10) {
        this.f76673r = i10;
    }

    public void p(int i10) {
        this.f76672q = i10;
    }

    public f(byte[] bArr) {
        super(bArr);
        if (this.f76653d != 5) {
            return;
        }
        if (this.f76652c > 5) {
            this.f76671p = d(bArr[5]);
        }
        if (this.f76652c > 6) {
            byte b10 = bArr[6];
            this.f76672q = b10 & 1;
            this.f76673r = b10 & 2;
        }
    }
}
