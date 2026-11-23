package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    byte[] f6349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f6350b;

    public a() {
        this.f6349a = new byte[64];
    }

    private void a(int i10) {
        byte[] bArr = this.f6349a;
        int length = bArr.length * 2;
        int i11 = this.f6350b;
        int i12 = i10 + i11;
        if (length <= i12) {
            length = i12;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, i11);
        this.f6349a = bArr2;
    }

    a b(int i10, int i11) {
        int i12 = this.f6350b;
        if (i12 + 2 > this.f6349a.length) {
            a(2);
        }
        byte[] bArr = this.f6349a;
        int i13 = i12 + 1;
        bArr[i12] = (byte) i10;
        bArr[i13] = (byte) i11;
        this.f6350b = i13 + 1;
        return this;
    }

    a c(int i10, int i11) {
        int i12 = this.f6350b;
        if (i12 + 3 > this.f6349a.length) {
            a(3);
        }
        byte[] bArr = this.f6349a;
        int i13 = i12 + 1;
        bArr[i12] = (byte) i10;
        int i14 = i13 + 1;
        bArr[i13] = (byte) (i11 >>> 8);
        bArr[i14] = (byte) i11;
        this.f6350b = i14 + 1;
        return this;
    }

    public a d(int i10) {
        int i11 = this.f6350b;
        int i12 = i11 + 1;
        if (i12 > this.f6349a.length) {
            a(1);
        }
        this.f6349a[i11] = (byte) i10;
        this.f6350b = i12;
        return this;
    }

    public a e(byte[] bArr, int i10, int i11) {
        if (this.f6350b + i11 > this.f6349a.length) {
            a(i11);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i10, this.f6349a, this.f6350b, i11);
        }
        this.f6350b += i11;
        return this;
    }

    public a f(int i10) {
        int i11 = this.f6350b;
        if (i11 + 4 > this.f6349a.length) {
            a(4);
        }
        byte[] bArr = this.f6349a;
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i10 >>> 24);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (i10 >>> 16);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (i10 >>> 8);
        bArr[i14] = (byte) i10;
        this.f6350b = i14 + 1;
        return this;
    }

    public a g(int i10) {
        int i11 = this.f6350b;
        if (i11 + 2 > this.f6349a.length) {
            a(2);
        }
        byte[] bArr = this.f6349a;
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i10 >>> 8);
        bArr[i12] = (byte) i10;
        this.f6350b = i12 + 1;
        return this;
    }

    public a h(String str) {
        int length = str.length();
        int i10 = this.f6350b;
        if (i10 + 2 + length > this.f6349a.length) {
            a(length + 2);
        }
        byte[] bArr = this.f6349a;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (length >>> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) length;
        int i13 = 0;
        while (i13 < length) {
            char cCharAt = str.charAt(i13);
            if (cCharAt < 1 || cCharAt > 127) {
                throw new UnsupportedOperationException();
            }
            bArr[i12] = (byte) cCharAt;
            i13++;
            i12++;
        }
        this.f6350b = i12;
        return this;
    }

    public a(int i10) {
        this.f6349a = new byte[i10];
    }
}
