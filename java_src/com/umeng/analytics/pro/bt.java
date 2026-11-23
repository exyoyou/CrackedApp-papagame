package com.umeng.analytics.pro;

/* JADX INFO: loaded from: classes9.dex */
public class bt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private short[] f84489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f84490b = -1;

    public bt(int i10) {
        this.f84489a = new short[i10];
    }

    private void d() {
        short[] sArr = this.f84489a;
        short[] sArr2 = new short[sArr.length * 2];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        this.f84489a = sArr2;
    }

    public short a() {
        short[] sArr = this.f84489a;
        int i10 = this.f84490b;
        this.f84490b = i10 - 1;
        return sArr[i10];
    }

    public short b() {
        return this.f84489a[this.f84490b];
    }

    public void c() {
        this.f84490b = -1;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<ShortStack vector:[");
        for (int i10 = 0; i10 < this.f84489a.length; i10++) {
            if (i10 != 0) {
                sb2.append(" ");
            }
            if (i10 == this.f84490b) {
                sb2.append(">>");
            }
            sb2.append((int) this.f84489a[i10]);
            if (i10 == this.f84490b) {
                sb2.append("<<");
            }
        }
        sb2.append("]>");
        return sb2.toString();
    }

    public void a(short s10) {
        if (this.f84489a.length == this.f84490b + 1) {
            d();
        }
        short[] sArr = this.f84489a;
        int i10 = this.f84490b + 1;
        this.f84490b = i10;
        sArr[i10] = s10;
    }
}
