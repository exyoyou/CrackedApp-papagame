package com.heepay.plugin.a;

import com.sigmob.sdk.archives.tar.e;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f34242a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, e.P, 77, 78, 79, 80, 81, 82, e.Q, 84, 85, 86, 87, e.S, 89, 90, 97, 98, 99, 100, 101, 102, e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, e.R, 121, 122, e.H, e.I, e.J, e.K, e.L, e.M, e.N, e.O, 56, 57, 43, 47};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f34243b = new byte[128];

    static {
        for (int i10 = 0; i10 < 128; i10++) {
            f34243b[i10] = -1;
        }
        for (int i11 = 65; i11 <= 90; i11++) {
            f34243b[i11] = (byte) (i11 - 65);
        }
        for (int i12 = 97; i12 <= 122; i12++) {
            f34243b[i12] = (byte) ((i12 - 97) + 26);
        }
        for (int i13 = 48; i13 <= 57; i13++) {
            f34243b[i13] = (byte) ((i13 - 48) + 52);
        }
        byte[] bArr = f34243b;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
    }

    public static String a(byte[] bArr) {
        int length = bArr.length % 3;
        int length2 = bArr.length;
        byte[] bArr2 = new byte[length == 0 ? (length2 * 4) / 3 : ((length2 / 3) + 1) * 4];
        int length3 = bArr.length - length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length3) {
            int i12 = bArr[i10] & 255;
            int i13 = bArr[i10 + 1] & 255;
            int i14 = bArr[i10 + 2] & 255;
            byte[] bArr3 = f34242a;
            bArr2[i11] = bArr3[(i12 >>> 2) & 63];
            bArr2[i11 + 1] = bArr3[((i12 << 4) | (i13 >>> 4)) & 63];
            bArr2[i11 + 2] = bArr3[((i13 << 2) | (i14 >>> 6)) & 63];
            bArr2[i11 + 3] = bArr3[i14 & 63];
            i10 += 3;
            i11 += 4;
        }
        if (length == 1) {
            int i15 = bArr[bArr.length - 1] & 255;
            int length4 = bArr2.length - 4;
            byte[] bArr4 = f34242a;
            bArr2[length4] = bArr4[(i15 >>> 2) & 63];
            bArr2[bArr2.length - 3] = bArr4[(i15 << 4) & 63];
            bArr2[bArr2.length - 2] = 61;
            bArr2[bArr2.length - 1] = 61;
        } else if (length == 2) {
            int i16 = bArr[bArr.length - 2] & 255;
            int i17 = bArr[bArr.length - 1] & 255;
            int length5 = bArr2.length - 4;
            byte[] bArr5 = f34242a;
            bArr2[length5] = bArr5[(i16 >>> 2) & 63];
            bArr2[bArr2.length - 3] = bArr5[((i16 << 4) | (i17 >>> 4)) & 63];
            bArr2[bArr2.length - 2] = bArr5[(i17 << 2) & 63];
            bArr2[bArr2.length - 1] = 61;
        }
        return new String(bArr2);
    }

    private static String b(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (a((byte) str.charAt(i10))) {
                stringBuffer.append(str.charAt(i10));
            }
        }
        return stringBuffer.toString();
    }

    private static boolean a(byte b10) {
        if (b10 == 61) {
            return true;
        }
        return b10 >= 0 && b10 < 128 && f34243b[b10] != -1;
    }

    public static byte[] a(String str) {
        int length;
        String strB = b(str);
        if (strB.charAt(strB.length() - 2) == '=') {
            length = (((strB.length() / 4) - 1) * 3) + 1;
        } else {
            length = strB.charAt(strB.length() + (-1)) == '=' ? (((strB.length() / 4) - 1) * 3) + 2 : (strB.length() / 4) * 3;
        }
        byte[] bArr = new byte[length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < strB.length() - 4) {
            byte[] bArr2 = f34243b;
            byte b10 = bArr2[strB.charAt(i10)];
            byte b11 = bArr2[strB.charAt(i10 + 1)];
            byte b12 = bArr2[strB.charAt(i10 + 2)];
            byte b13 = bArr2[strB.charAt(i10 + 3)];
            bArr[i11] = (byte) ((b10 << 2) | (b11 >> 4));
            bArr[i11 + 1] = (byte) ((b11 << 4) | (b12 >> 2));
            bArr[i11 + 2] = (byte) (b13 | (b12 << 6));
            i10 += 4;
            i11 += 3;
        }
        if (strB.charAt(strB.length() - 2) == '=') {
            byte[] bArr3 = f34243b;
            bArr[bArr.length - 1] = (byte) ((bArr3[strB.charAt(strB.length() - 3)] >> 4) | (bArr3[strB.charAt(strB.length() - 4)] << 2));
        } else if (strB.charAt(strB.length() - 1) == '=') {
            byte[] bArr4 = f34243b;
            byte b14 = bArr4[strB.charAt(strB.length() - 4)];
            byte b15 = bArr4[strB.charAt(strB.length() - 3)];
            byte b16 = bArr4[strB.charAt(strB.length() - 2)];
            bArr[bArr.length - 2] = (byte) ((b14 << 2) | (b15 >> 4));
            bArr[bArr.length - 1] = (byte) ((b16 >> 2) | (b15 << 4));
        } else {
            byte[] bArr5 = f34243b;
            byte b17 = bArr5[strB.charAt(strB.length() - 4)];
            byte b18 = bArr5[strB.charAt(strB.length() - 3)];
            byte b19 = bArr5[strB.charAt(strB.length() - 2)];
            byte b20 = bArr5[strB.charAt(strB.length() - 1)];
            bArr[bArr.length - 3] = (byte) ((b17 << 2) | (b18 >> 4));
            bArr[bArr.length - 2] = (byte) ((b18 << 4) | (b19 >> 2));
            bArr[bArr.length - 1] = (byte) (b20 | (b19 << 6));
        }
        return bArr;
    }
}
