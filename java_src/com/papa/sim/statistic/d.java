package com.papa.sim.statistic;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f77194a = 128;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f77195b = 64;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f77196c = 24;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f77197d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f77198e = 16;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f77199f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f77200g = -128;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static char f77201h = '=';

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static byte[] f77202i = new byte[128];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static char[] f77203j = new char[64];

    static {
        int i10;
        int i11;
        int i12 = 0;
        for (int i13 = 0; i13 < 128; i13++) {
            f77202i[i13] = -1;
        }
        for (int i14 = 90; i14 >= 65; i14--) {
            f77202i[i14] = (byte) (i14 - 65);
        }
        int i15 = 122;
        while (true) {
            i10 = 26;
            if (i15 < 97) {
                break;
            }
            f77202i[i15] = (byte) ((i15 - 97) + 26);
            i15--;
        }
        int i16 = 57;
        while (true) {
            i11 = 52;
            if (i16 < 48) {
                break;
            }
            f77202i[i16] = (byte) ((i16 - 48) + 52);
            i16--;
        }
        byte[] bArr = f77202i;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
        for (int i17 = 0; i17 <= 25; i17++) {
            f77203j[i17] = (char) (i17 + 65);
        }
        int i18 = 0;
        while (i10 <= 51) {
            f77203j[i10] = (char) (i18 + 97);
            i10++;
            i18++;
        }
        while (i11 <= 61) {
            f77203j[i11] = (char) (i12 + 48);
            i11++;
            i12++;
        }
        char[] cArr = f77203j;
        cArr[62] = '+';
        cArr[63] = '/';
    }

    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int iF = f(charArray);
        if (iF % 4 != 0) {
            return null;
        }
        int i10 = iF / 4;
        if (i10 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i10 * 3];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i10 - 1) {
            int i14 = i12 + 1;
            char c10 = charArray[i12];
            if (c(c10)) {
                int i15 = i14 + 1;
                char c11 = charArray[i14];
                if (c(c11)) {
                    int i16 = i15 + 1;
                    char c12 = charArray[i15];
                    if (c(c12)) {
                        int i17 = i16 + 1;
                        char c13 = charArray[i16];
                        if (c(c13)) {
                            byte[] bArr2 = f77202i;
                            byte b10 = bArr2[c10];
                            byte b11 = bArr2[c11];
                            byte b12 = bArr2[c12];
                            byte b13 = bArr2[c13];
                            int i18 = i13 + 1;
                            bArr[i13] = (byte) ((b10 << 2) | (b11 >> 4));
                            int i19 = i18 + 1;
                            bArr[i18] = (byte) (((b11 & 15) << 4) | ((b12 >> 2) & 15));
                            i13 = i19 + 1;
                            bArr[i19] = (byte) ((b12 << 6) | b13);
                            i11++;
                            i12 = i17;
                        }
                    }
                }
            }
            return null;
        }
        int i20 = i12 + 1;
        char c14 = charArray[i12];
        if (!c(c14)) {
            return null;
        }
        int i21 = i20 + 1;
        char c15 = charArray[i20];
        if (!c(c15)) {
            return null;
        }
        byte[] bArr3 = f77202i;
        byte b14 = bArr3[c14];
        byte b15 = bArr3[c15];
        int i22 = i21 + 1;
        char c16 = charArray[i21];
        char c17 = charArray[i22];
        if (c(c16) && c(c17)) {
            byte[] bArr4 = f77202i;
            byte b16 = bArr4[c16];
            byte b17 = bArr4[c17];
            int i23 = i13 + 1;
            bArr[i13] = (byte) ((b14 << 2) | (b15 >> 4));
            bArr[i23] = (byte) (((b15 & 15) << 4) | ((b16 >> 2) & 15));
            bArr[i23 + 1] = (byte) (b17 | (b16 << 6));
            return bArr;
        }
        if (d(c16) && d(c17)) {
            if ((b15 & 15) != 0) {
                return null;
            }
            int i24 = i11 * 3;
            byte[] bArr5 = new byte[i24 + 1];
            System.arraycopy(bArr, 0, bArr5, 0, i24);
            bArr5[i13] = (byte) ((b14 << 2) | (b15 >> 4));
            return bArr5;
        }
        if (d(c16) || !d(c17)) {
            return null;
        }
        byte b18 = f77202i[c16];
        if ((b18 & 3) != 0) {
            return null;
        }
        int i25 = i11 * 3;
        byte[] bArr6 = new byte[i25 + 2];
        System.arraycopy(bArr, 0, bArr6, 0, i25);
        bArr6[i13] = (byte) ((b14 << 2) | (b15 >> 4));
        bArr6[i13 + 1] = (byte) (((b18 >> 2) & 15) | ((b15 & 15) << 4));
        return bArr6;
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length * 8;
        if (length == 0) {
            return "";
        }
        int i10 = length % 24;
        int i11 = length / 24;
        char[] cArr = new char[(i10 != 0 ? i11 + 1 : i11) * 4];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < i11) {
            int i15 = i13 + 1;
            byte b10 = bArr[i13];
            int i16 = i15 + 1;
            byte b11 = bArr[i15];
            int i17 = i16 + 1;
            byte b12 = bArr[i16];
            byte b13 = (byte) (b11 & 15);
            byte b14 = (byte) (b10 & 3);
            byte b15 = (byte) ((b10 & (-128)) == 0 ? b10 >> 2 : (b10 >> 2) ^ 192);
            byte b16 = (byte) ((b11 & (-128)) == 0 ? b11 >> 4 : (b11 >> 4) ^ MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            int i18 = (b12 & (-128)) == 0 ? b12 >> 6 : (b12 >> 6) ^ 252;
            int i19 = i14 + 1;
            char[] cArr2 = f77203j;
            cArr[i14] = cArr2[b15];
            int i20 = i19 + 1;
            cArr[i19] = cArr2[(b14 << 4) | b16];
            int i21 = i20 + 1;
            cArr[i20] = cArr2[(b13 << 2) | ((byte) i18)];
            cArr[i21] = cArr2[b12 & Utf8.REPLACEMENT_BYTE];
            i12++;
            i14 = i21 + 1;
            i13 = i17;
        }
        if (i10 == 8) {
            byte b17 = bArr[i13];
            byte b18 = (byte) (b17 & 3);
            int i22 = (b17 & (-128)) == 0 ? b17 >> 2 : (b17 >> 2) ^ 192;
            int i23 = i14 + 1;
            char[] cArr3 = f77203j;
            cArr[i14] = cArr3[(byte) i22];
            int i24 = i23 + 1;
            cArr[i23] = cArr3[b18 << 4];
            char c10 = f77201h;
            cArr[i24] = c10;
            cArr[i24 + 1] = c10;
        } else if (i10 == 16) {
            byte b19 = bArr[i13];
            byte b20 = bArr[i13 + 1];
            byte b21 = (byte) (b20 & 15);
            byte b22 = (byte) (b19 & 3);
            byte b23 = (byte) ((b19 & (-128)) == 0 ? b19 >> 2 : (b19 >> 2) ^ 192);
            int i25 = (b20 & (-128)) == 0 ? b20 >> 4 : (b20 >> 4) ^ MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
            int i26 = i14 + 1;
            char[] cArr4 = f77203j;
            cArr[i14] = cArr4[b23];
            int i27 = i26 + 1;
            cArr[i26] = cArr4[((byte) i25) | (b22 << 4)];
            cArr[i27] = cArr4[b21 << 2];
            cArr[i27 + 1] = f77201h;
        }
        return new String(cArr);
    }

    private static boolean c(char c10) {
        return c10 < 128 && f77202i[c10] != -1;
    }

    private static boolean d(char c10) {
        return c10 == f77201h;
    }

    private static boolean e(char c10) {
        return c10 == ' ' || c10 == '\r' || c10 == '\n' || c10 == '\t';
    }

    private static int f(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (!e(cArr[i11])) {
                cArr[i10] = cArr[i11];
                i10++;
            }
        }
        return i10;
    }
}
