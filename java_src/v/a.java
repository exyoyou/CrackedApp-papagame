package v;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f97500a = 128;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f97501b = 64;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f97502c = 24;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f97503d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f97504e = 16;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f97505f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f97506g = -128;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final char f97507h = '=';

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final byte[] f97508i = new byte[128];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final char[] f97509j = new char[64];

    static {
        int i10;
        int i11;
        int i12 = 0;
        for (int i13 = 0; i13 < 128; i13++) {
            f97508i[i13] = -1;
        }
        for (int i14 = 90; i14 >= 65; i14--) {
            f97508i[i14] = (byte) (i14 - 65);
        }
        int i15 = 122;
        while (true) {
            i10 = 26;
            if (i15 < 97) {
                break;
            }
            f97508i[i15] = (byte) ((i15 - 97) + 26);
            i15--;
        }
        int i16 = 57;
        while (true) {
            i11 = 52;
            if (i16 < 48) {
                break;
            }
            f97508i[i16] = (byte) ((i16 - 48) + 52);
            i16--;
        }
        byte[] bArr = f97508i;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
        for (int i17 = 0; i17 <= 25; i17++) {
            f97509j[i17] = (char) (i17 + 65);
        }
        int i18 = 0;
        while (i10 <= 51) {
            f97509j[i10] = (char) (i18 + 97);
            i10++;
            i18++;
        }
        while (i11 <= 61) {
            f97509j[i11] = (char) (i12 + 48);
            i11++;
            i12++;
        }
        char[] cArr = f97509j;
        cArr[62] = '+';
        cArr[63] = '/';
    }

    private static int a(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char c10 = cArr[i11];
            if (!(c10 == ' ' || c10 == '\r' || c10 == '\n' || c10 == '\t')) {
                cArr[i10] = c10;
                i10++;
            }
        }
        return i10;
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
            int i18 = b10 & (-128);
            int i19 = b10 >> 2;
            if (i18 != 0) {
                i19 ^= 192;
            }
            byte b15 = (byte) i19;
            int i20 = b11 & (-128);
            int i21 = b11 >> 4;
            if (i20 != 0) {
                i21 ^= MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
            }
            byte b16 = (byte) i21;
            int i22 = (b12 & (-128)) == 0 ? b12 >> 6 : (b12 >> 6) ^ 252;
            int i23 = i14 + 1;
            char[] cArr2 = f97509j;
            cArr[i14] = cArr2[b15];
            int i24 = i23 + 1;
            cArr[i23] = cArr2[(b14 << 4) | b16];
            int i25 = i24 + 1;
            cArr[i24] = cArr2[(b13 << 2) | ((byte) i22)];
            cArr[i25] = cArr2[b12 & Utf8.REPLACEMENT_BYTE];
            i12++;
            i14 = i25 + 1;
            i13 = i17;
        }
        if (i10 == 8) {
            byte b17 = bArr[i13];
            byte b18 = (byte) (b17 & 3);
            int i26 = b17 & (-128);
            int i27 = b17 >> 2;
            if (i26 != 0) {
                i27 ^= 192;
            }
            int i28 = i14 + 1;
            char[] cArr3 = f97509j;
            cArr[i14] = cArr3[(byte) i27];
            int i29 = i28 + 1;
            cArr[i28] = cArr3[b18 << 4];
            cArr[i29] = f97507h;
            cArr[i29 + 1] = f97507h;
        } else if (i10 == 16) {
            byte b19 = bArr[i13];
            byte b20 = bArr[i13 + 1];
            byte b21 = (byte) (b20 & 15);
            byte b22 = (byte) (b19 & 3);
            int i30 = b19 & (-128);
            int i31 = b19 >> 2;
            if (i30 != 0) {
                i31 ^= 192;
            }
            byte b23 = (byte) i31;
            int i32 = b20 & (-128);
            int i33 = b20 >> 4;
            if (i32 != 0) {
                i33 ^= MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA;
            }
            int i34 = i14 + 1;
            char[] cArr4 = f97509j;
            cArr[i14] = cArr4[b23];
            int i35 = i34 + 1;
            cArr[i34] = cArr4[((byte) i33) | (b22 << 4)];
            cArr[i35] = cArr4[b21 << 2];
            cArr[i35 + 1] = f97507h;
        }
        return new String(cArr);
    }

    private static boolean c(char c10) {
        return c10 == ' ' || c10 == '\r' || c10 == '\n' || c10 == '\t';
    }

    public static byte[] d(String str) {
        int i10;
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        if (charArray == null) {
            i10 = 0;
        } else {
            int length = charArray.length;
            i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                char c10 = charArray[i11];
                if (!(c10 == ' ' || c10 == '\r' || c10 == '\n' || c10 == '\t')) {
                    charArray[i10] = c10;
                    i10++;
                }
            }
        }
        if (i10 % 4 != 0) {
            return null;
        }
        int i12 = i10 / 4;
        if (i12 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i12 * 3];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < i12 - 1) {
            int i16 = i14 + 1;
            char c11 = charArray[i14];
            if (f(c11)) {
                int i17 = i16 + 1;
                char c12 = charArray[i16];
                if (f(c12)) {
                    int i18 = i17 + 1;
                    char c13 = charArray[i17];
                    if (f(c13)) {
                        int i19 = i18 + 1;
                        char c14 = charArray[i18];
                        if (f(c14)) {
                            byte[] bArr2 = f97508i;
                            byte b10 = bArr2[c11];
                            byte b11 = bArr2[c12];
                            byte b12 = bArr2[c13];
                            byte b13 = bArr2[c14];
                            int i20 = i15 + 1;
                            bArr[i15] = (byte) ((b10 << 2) | (b11 >> 4));
                            int i21 = i20 + 1;
                            bArr[i20] = (byte) (((b11 & 15) << 4) | ((b12 >> 2) & 15));
                            i15 = i21 + 1;
                            bArr[i21] = (byte) ((b12 << 6) | b13);
                            i13++;
                            i14 = i19;
                        }
                    }
                }
            }
            return null;
        }
        int i22 = i14 + 1;
        char c15 = charArray[i14];
        if (!f(c15)) {
            return null;
        }
        int i23 = i22 + 1;
        char c16 = charArray[i22];
        if (!f(c16)) {
            return null;
        }
        byte[] bArr3 = f97508i;
        byte b14 = bArr3[c15];
        byte b15 = bArr3[c16];
        int i24 = i23 + 1;
        char c17 = charArray[i23];
        char c18 = charArray[i24];
        if (f(c17) && f(c18)) {
            byte b16 = bArr3[c17];
            byte b17 = bArr3[c18];
            int i25 = i15 + 1;
            bArr[i15] = (byte) ((b14 << 2) | (b15 >> 4));
            bArr[i25] = (byte) (((b15 & 15) << 4) | ((b16 >> 2) & 15));
            bArr[i25 + 1] = (byte) (b17 | (b16 << 6));
            return bArr;
        }
        if (e(c17) && e(c18)) {
            if ((b15 & 15) != 0) {
                return null;
            }
            int i26 = i13 * 3;
            byte[] bArr4 = new byte[i26 + 1];
            System.arraycopy(bArr, 0, bArr4, 0, i26);
            bArr4[i15] = (byte) ((b14 << 2) | (b15 >> 4));
            return bArr4;
        }
        if (e(c17) || !e(c18)) {
            return null;
        }
        byte b18 = bArr3[c17];
        if ((b18 & 3) != 0) {
            return null;
        }
        int i27 = i13 * 3;
        byte[] bArr5 = new byte[i27 + 2];
        System.arraycopy(bArr, 0, bArr5, 0, i27);
        bArr5[i15] = (byte) ((b14 << 2) | (b15 >> 4));
        bArr5[i15 + 1] = (byte) (((b18 >> 2) & 15) | ((b15 & 15) << 4));
        return bArr5;
    }

    private static boolean e(char c10) {
        return c10 == '=';
    }

    private static boolean f(char c10) {
        return c10 < 128 && f97508i[c10] != -1;
    }
}
