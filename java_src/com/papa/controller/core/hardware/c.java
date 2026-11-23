package com.papa.controller.core.hardware;

/* JADX INFO: loaded from: classes2.dex */
public class c extends a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f76655p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private byte[] f76656q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private byte[] f76657r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f76658s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f76659t;

    public c() {
    }

    @Override // com.papa.controller.core.hardware.a
    public byte[] a() {
        return super.b(new byte[]{6});
    }

    public int k() {
        return this.f76658s;
    }

    public int l() {
        return this.f76659t;
    }

    public byte[] m() {
        return this.f76657r;
    }

    public String n() {
        return this.f76655p;
    }

    public byte[] o() {
        return this.f76656q;
    }

    public void p(int i10) {
        this.f76658s = i10;
    }

    public void q(int i10) {
        this.f76659t = i10;
    }

    public void r(byte[] bArr) {
        this.f76657r = bArr;
    }

    public void s(String str) {
        this.f76655p = str;
    }

    public void t(byte[] bArr) {
        this.f76656q = bArr;
    }

    public c(byte[] bArr) {
        super(bArr);
        if (this.f76653d != 246) {
            return;
        }
        int i10 = 16;
        byte[] bArr2 = new byte[16];
        byte[] bArr3 = new byte[2];
        byte[] bArr4 = new byte[2];
        if (this.f76652c > 20) {
            System.arraycopy(bArr, 5, bArr2, 0, 16);
            for (int i11 = 15; i11 >= 0; i11--) {
                if (bArr2[i11] != 0) {
                    i10 = i11 + 1;
                    break;
                }
            }
            this.f76655p = new String(bArr2, 0, i10);
        }
        if (this.f76652c > 22) {
            System.arraycopy(bArr, 21, bArr3, 0, 2);
            this.f76656q = bArr3;
        }
        if (this.f76652c > 24) {
            System.arraycopy(bArr, 23, bArr4, 0, 2);
            this.f76657r = bArr4;
        }
        if (this.f76652c > 25) {
            byte b10 = bArr[25];
            this.f76658s = b10 & 1;
            this.f76659t = b10 & 2;
        }
    }
}
