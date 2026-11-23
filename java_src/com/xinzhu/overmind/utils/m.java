package com.xinzhu.overmind.utils;

/* JADX INFO: loaded from: classes8.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f90112a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f90113b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private m() {
    }

    public static byte[] a(String str) throws IllegalArgumentException {
        return c(str.toCharArray());
    }

    public static byte[] b(String str, boolean z10) throws IllegalArgumentException {
        return d(str.toCharArray(), z10);
    }

    public static byte[] c(char[] cArr) throws IllegalArgumentException {
        return d(cArr, false);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001f A[LOOP:0: B:10:0x001d->B:11:0x001f, LOOP_END] */
    public static byte[] d(char[] cArr, boolean z10) throws IllegalArgumentException {
        int i10;
        int length = cArr.length;
        byte[] bArr = new byte[(length + 1) / 2];
        int i11 = 0;
        if (z10) {
            if (length % 2 != 0) {
                bArr[0] = (byte) l(cArr, 0);
                i11 = 1;
                i10 = 1;
            }
            while (i11 < length) {
                bArr[i10] = (byte) ((l(cArr, i11) << 4) | l(cArr, i11 + 1));
                i11 += 2;
                i10++;
            }
            return bArr;
        }
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Invalid input length: " + length);
        }
        i10 = 0;
        while (i11 < length) {
            bArr[i10] = (byte) ((l(cArr, i11) << 4) | l(cArr, i11 + 1));
            i11 += 2;
            i10++;
        }
        return bArr;
    }

    public static char[] e(byte[] bArr) {
        return g(bArr, 0, bArr.length, true);
    }

    public static char[] f(byte[] bArr, int i10, int i11) {
        return g(bArr, i10, i11, true);
    }

    private static char[] g(byte[] bArr, int i10, int i11, boolean z10) {
        char[] cArr = z10 ? f90113b : f90112a;
        char[] cArr2 = new char[i11 * 2];
        for (int i12 = 0; i12 < i11; i12++) {
            byte b10 = bArr[i10 + i12];
            int i13 = i12 * 2;
            cArr2[i13] = cArr[(b10 >> 4) & 15];
            cArr2[i13 + 1] = cArr[b10 & 15];
        }
        return cArr2;
    }

    public static char[] h(byte[] bArr, boolean z10) {
        return g(bArr, 0, bArr.length, z10);
    }

    public static String i(byte b10, boolean z10) {
        char[] cArr = z10 ? f90113b : f90112a;
        return new String(new char[]{cArr[(b10 >> 4) & 15], cArr[b10 & 15]}, 0, 2);
    }

    public static String j(byte[] bArr) {
        return k(bArr, true);
    }

    public static String k(byte[] bArr, boolean z10) {
        return new String(h(bArr, z10));
    }

    private static int l(char[] cArr, int i10) throws IllegalArgumentException {
        char c10 = cArr[i10];
        if ('0' <= c10 && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'a';
        if ('a' > c10 || c10 > 'f') {
            c11 = 'A';
            if ('A' > c10 || c10 > 'F') {
                throw new IllegalArgumentException("Illegal char: " + cArr[i10] + " at offset " + i10);
            }
        }
        return (c10 - c11) + 10;
    }
}
