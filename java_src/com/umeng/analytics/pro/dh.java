package com.umeng.analytics.pro;

/* JADX INFO: loaded from: classes9.dex */
public final class dh extends di {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f84635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f84636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f84637c;

    public dh() {
    }

    @Override // com.umeng.analytics.pro.di
    public boolean a() {
        return true;
    }

    @Override // com.umeng.analytics.pro.di
    public void b() throws dj {
    }

    @Override // com.umeng.analytics.pro.di
    public void c() {
    }

    public void e() {
        this.f84635a = null;
    }

    @Override // com.umeng.analytics.pro.di
    public byte[] f() {
        return this.f84635a;
    }

    @Override // com.umeng.analytics.pro.di
    public int g() {
        return this.f84636b;
    }

    @Override // com.umeng.analytics.pro.di
    public int h() {
        return this.f84637c - this.f84636b;
    }

    public dh(byte[] bArr) {
        a(bArr);
    }

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    @Override // com.umeng.analytics.pro.di
    public void b(byte[] bArr, int i10, int i11) throws dj {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    public void c(byte[] bArr, int i10, int i11) {
        this.f84635a = bArr;
        this.f84636b = i10;
        this.f84637c = i10 + i11;
    }

    @Override // com.umeng.analytics.pro.di
    public int a(byte[] bArr, int i10, int i11) throws dj {
        int iH = h();
        if (i11 > iH) {
            i11 = iH;
        }
        if (i11 > 0) {
            System.arraycopy(this.f84635a, this.f84636b, bArr, i10, i11);
            a(i11);
        }
        return i11;
    }

    public dh(byte[] bArr, int i10, int i11) {
        c(bArr, i10, i11);
    }

    @Override // com.umeng.analytics.pro.di
    public void a(int i10) {
        this.f84636b += i10;
    }
}
