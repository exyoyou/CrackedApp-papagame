package com.facebook.common.util;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f26941a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f26942b = new char[256];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char[] f26943c = new char[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f26944d;

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            char[] cArr = f26942b;
            char[] cArr2 = f26941a;
            cArr[i10] = cArr2[(i10 >> 4) & 15];
            f26943c[i10] = cArr2[i10 & 15];
        }
        f26944d = new byte[103];
        for (int i11 = 0; i11 <= 70; i11++) {
            f26944d[i11] = -1;
        }
        for (byte b10 = 0; b10 < 10; b10 = (byte) (b10 + 1)) {
            f26944d[b10 + com.sigmob.sdk.archives.tar.e.H] = b10;
        }
        for (byte b11 = 0; b11 < 6; b11 = (byte) (b11 + 1)) {
            byte[] bArr = f26944d;
            byte b12 = (byte) (b11 + 10);
            bArr[b11 + 65] = b12;
            bArr[b11 + 97] = b12;
        }
    }

    public static String a(int value) {
        if (value > 255 || value < 0) {
            throw new IllegalArgumentException("The int converting to hex should be in range 0~255");
        }
        return String.valueOf(f26942b[value]) + String.valueOf(f26943c[value]);
    }

    public static byte[] b(String hexString) {
        byte[] bArr;
        byte b10;
        byte b11;
        int length = hexString.length();
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("Odd number of characters.");
        }
        byte[] bArr2 = new byte[length >> 1];
        boolean z10 = false;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i10 + 1;
            char cCharAt = hexString.charAt(i10);
            if (cCharAt <= 'f' && (b10 = (bArr = f26944d)[cCharAt]) != -1) {
                int i13 = i12 + 1;
                char cCharAt2 = hexString.charAt(i12);
                if (cCharAt2 <= 'f' && (b11 = bArr[cCharAt2]) != -1) {
                    bArr2[i11] = (byte) ((b10 << 4) | b11);
                    i11++;
                    i10 = i13;
                }
            }
            z10 = true;
            break;
        }
        if (!z10) {
            return bArr2;
        }
        throw new IllegalArgumentException("Invalid hexadecimal digit: " + hexString);
    }

    public static String c(byte[] array, boolean zeroTerminated) {
        int i10;
        char[] cArr = new char[array.length * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < array.length && ((i10 = array[i12] & 255) != 0 || !zeroTerminated); i12++) {
            int i13 = i11 + 1;
            cArr[i11] = f26942b[i10];
            i11 = i13 + 1;
            cArr[i13] = f26943c[i10];
        }
        return new String(cArr, 0, i11);
    }

    public static byte[] d(String s10) {
        return b(s10.replaceAll(" ", ""));
    }
}
