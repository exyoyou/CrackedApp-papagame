package com.alibaba.fastjson.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f6803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f6804b;

    static {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f6803a = charArray;
        int[] iArr = new int[256];
        f6804b = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i10 = 0; i10 < length; i10++) {
            f6804b[f6803a[i10]] = i10;
        }
        f6804b[61] = 0;
    }

    public static final byte[] a(String str) {
        int i10;
        int i11;
        int length = str.length();
        int i12 = 0;
        if (length == 0) {
            return new byte[0];
        }
        int i13 = length - 1;
        int i14 = 0;
        while (i14 < i13 && f6804b[str.charAt(i14) & 255] < 0) {
            i14++;
        }
        while (i13 > 0 && f6804b[str.charAt(i13) & 255] < 0) {
            i13--;
        }
        if (str.charAt(i13) == '=') {
            i10 = str.charAt(i13 + (-1)) == '=' ? 2 : 1;
        } else {
            i10 = 0;
        }
        int i15 = (i13 - i14) + 1;
        if (length > 76) {
            i11 = (str.charAt(76) == '\r' ? i15 / 78 : 0) << 1;
        } else {
            i11 = 0;
        }
        int i16 = (((i15 - i11) * 6) >> 3) - i10;
        byte[] bArr = new byte[i16];
        int i17 = (i16 / 3) * 3;
        int i18 = 0;
        int i19 = 0;
        while (i18 < i17) {
            int[] iArr = f6804b;
            int i20 = i14 + 1;
            int i21 = i20 + 1;
            int i22 = (iArr[str.charAt(i14)] << 18) | (iArr[str.charAt(i20)] << 12);
            int i23 = i21 + 1;
            int i24 = i22 | (iArr[str.charAt(i21)] << 6);
            int i25 = i23 + 1;
            int i26 = i24 | iArr[str.charAt(i23)];
            int i27 = i18 + 1;
            bArr[i18] = (byte) (i26 >> 16);
            int i28 = i27 + 1;
            bArr[i27] = (byte) (i26 >> 8);
            int i29 = i28 + 1;
            bArr[i28] = (byte) i26;
            if (i11 <= 0 || (i19 = i19 + 1) != 19) {
                i14 = i25;
            } else {
                i14 = i25 + 2;
                i19 = 0;
            }
            i18 = i29;
        }
        if (i18 < i16) {
            int i30 = 0;
            while (i14 <= i13 - i10) {
                i12 |= f6804b[str.charAt(i14)] << (18 - (i30 * 6));
                i30++;
                i14++;
            }
            int i31 = 16;
            while (i18 < i16) {
                bArr[i18] = (byte) (i12 >> i31);
                i31 -= 8;
                i18++;
            }
        }
        return bArr;
    }

    public static final byte[] b(String str, int i10, int i11) {
        int i12;
        int i13;
        int i14 = 0;
        if (i11 == 0) {
            return new byte[0];
        }
        int i15 = (i10 + i11) - 1;
        while (i10 < i15 && f6804b[str.charAt(i10)] < 0) {
            i10++;
        }
        while (i15 > 0 && f6804b[str.charAt(i15)] < 0) {
            i15--;
        }
        if (str.charAt(i15) == '=') {
            i12 = str.charAt(i15 + (-1)) == '=' ? 2 : 1;
        } else {
            i12 = 0;
        }
        int i16 = (i15 - i10) + 1;
        if (i11 > 76) {
            i13 = (str.charAt(76) == '\r' ? i16 / 78 : 0) << 1;
        } else {
            i13 = 0;
        }
        int i17 = (((i16 - i13) * 6) >> 3) - i12;
        byte[] bArr = new byte[i17];
        int i18 = (i17 / 3) * 3;
        int i19 = 0;
        int i20 = 0;
        while (i19 < i18) {
            int[] iArr = f6804b;
            int i21 = i10 + 1;
            int i22 = i21 + 1;
            int i23 = (iArr[str.charAt(i10)] << 18) | (iArr[str.charAt(i21)] << 12);
            int i24 = i22 + 1;
            int i25 = i23 | (iArr[str.charAt(i22)] << 6);
            int i26 = i24 + 1;
            int i27 = i25 | iArr[str.charAt(i24)];
            int i28 = i19 + 1;
            bArr[i19] = (byte) (i27 >> 16);
            int i29 = i28 + 1;
            bArr[i28] = (byte) (i27 >> 8);
            int i30 = i29 + 1;
            bArr[i29] = (byte) i27;
            if (i13 <= 0 || (i20 = i20 + 1) != 19) {
                i10 = i26;
            } else {
                i10 = i26 + 2;
                i20 = 0;
            }
            i19 = i30;
        }
        if (i19 < i17) {
            int i31 = 0;
            while (i10 <= i15 - i12) {
                i14 |= f6804b[str.charAt(i10)] << (18 - (i31 * 6));
                i31++;
                i10++;
            }
            int i32 = 16;
            while (i19 < i17) {
                bArr[i19] = (byte) (i14 >> i32);
                i32 -= 8;
                i19++;
            }
        }
        return bArr;
    }

    public static final byte[] c(char[] cArr, int i10, int i11) {
        int i12;
        int i13;
        int i14 = 0;
        if (i11 == 0) {
            return new byte[0];
        }
        int i15 = (i10 + i11) - 1;
        while (i10 < i15 && f6804b[cArr[i10]] < 0) {
            i10++;
        }
        while (i15 > 0 && f6804b[cArr[i15]] < 0) {
            i15--;
        }
        if (cArr[i15] == '=') {
            i12 = cArr[i15 + (-1)] == '=' ? 2 : 1;
        } else {
            i12 = 0;
        }
        int i16 = (i15 - i10) + 1;
        if (i11 > 76) {
            i13 = (cArr[76] == '\r' ? i16 / 78 : 0) << 1;
        } else {
            i13 = 0;
        }
        int i17 = (((i16 - i13) * 6) >> 3) - i12;
        byte[] bArr = new byte[i17];
        int i18 = (i17 / 3) * 3;
        int i19 = 0;
        int i20 = 0;
        while (i19 < i18) {
            int[] iArr = f6804b;
            int i21 = i10 + 1;
            int i22 = i21 + 1;
            int i23 = (iArr[cArr[i10]] << 18) | (iArr[cArr[i21]] << 12);
            int i24 = i22 + 1;
            int i25 = i23 | (iArr[cArr[i22]] << 6);
            int i26 = i24 + 1;
            int i27 = i25 | iArr[cArr[i24]];
            int i28 = i19 + 1;
            bArr[i19] = (byte) (i27 >> 16);
            int i29 = i28 + 1;
            bArr[i28] = (byte) (i27 >> 8);
            int i30 = i29 + 1;
            bArr[i29] = (byte) i27;
            if (i13 <= 0 || (i20 = i20 + 1) != 19) {
                i10 = i26;
            } else {
                i10 = i26 + 2;
                i20 = 0;
            }
            i19 = i30;
        }
        if (i19 < i17) {
            int i31 = 0;
            while (i10 <= i15 - i12) {
                i14 |= f6804b[cArr[i10]] << (18 - (i31 * 6));
                i31++;
                i10++;
            }
            int i32 = 16;
            while (i19 < i17) {
                bArr[i19] = (byte) (i14 >> i32);
                i32 -= 8;
                i19++;
            }
        }
        return bArr;
    }
}
