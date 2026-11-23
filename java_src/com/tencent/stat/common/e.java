package com.tencent.stat.common;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f83896a = "03a976511e2cbe3a7f26808fb7af3c05".getBytes();

    public static byte[] a(byte[] bArr) {
        return a(bArr, f83896a);
    }

    public static byte[] b(byte[] bArr) {
        return b(bArr, f83896a);
    }

    static byte[] a(byte[] bArr, byte[] bArr2) {
        int[] iArr = new int[256];
        int[] iArr2 = new int[256];
        int length = bArr2.length;
        if (length < 1 || length > 256) {
            throw new IllegalArgumentException("key must be between 1 and 256 bytes");
        }
        for (int i10 = 0; i10 < 256; i10++) {
            iArr[i10] = i10;
            iArr2[i10] = bArr2[i10 % length];
        }
        int i11 = 0;
        for (int i12 = 0; i12 < 256; i12++) {
            int i13 = iArr[i12];
            i11 = (i11 + i13 + iArr2[i12]) & 255;
            iArr[i12] = iArr[i11];
            iArr[i11] = i13;
        }
        byte[] bArr3 = new byte[bArr.length];
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < bArr.length; i16++) {
            i14 = (i14 + 1) & 255;
            int i17 = iArr[i14];
            i15 = (i15 + i17) & 255;
            iArr[i14] = iArr[i15];
            iArr[i15] = i17;
            bArr3[i16] = (byte) (iArr[(iArr[i14] + i17) & 255] ^ bArr[i16]);
        }
        return bArr3;
    }

    static byte[] b(byte[] bArr, byte[] bArr2) {
        return a(bArr, bArr2);
    }
}
