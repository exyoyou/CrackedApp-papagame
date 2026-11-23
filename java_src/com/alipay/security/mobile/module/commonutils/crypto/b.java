package com.alipay.security.mobile.module.commonutils.crypto;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    private b() {
    }

    public static boolean a(byte[] bArr) {
        if (bArr == null || bArr.length < 20) {
            return false;
        }
        for (int i10 = 0; i10 < 20; i10++) {
            bArr[i10 + 0] = 0;
        }
        return true;
    }

    private static boolean b(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        if (bArr == null || bArr2 == null || i12 <= 0 || bArr.length < i10 + i12 || bArr2.length < i11 + i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (bArr[i10 + i13] != bArr2[i11 + i13]) {
                return false;
            }
        }
        return true;
    }

    private static boolean c(byte[] bArr, byte[] bArr2, int i10) {
        if (bArr == null || bArr2 == null) {
            return false;
        }
        if (i10 >= bArr.length) {
            return true;
        }
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            int i12 = i11 + i10;
            if (i12 + 1 > bArr.length) {
                break;
            }
            bArr[i12] = bArr2[i11];
        }
        return true;
    }
}
