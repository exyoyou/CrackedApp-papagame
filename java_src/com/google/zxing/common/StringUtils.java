package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class StringUtils {
    private static final boolean ASSUME_SHIFT_JIS;
    private static final String EUC_JP = "EUC_JP";
    public static final String GB2312 = "GB2312";
    private static final String ISO88591 = "ISO8859_1";
    private static final String PLATFORM_DEFAULT_ENCODING;
    public static final String SHIFT_JIS = "SJIS";
    private static final String UTF8 = "UTF8";

    static {
        String property = System.getProperty("file.encoding");
        PLATFORM_DEFAULT_ENCODING = property;
        ASSUME_SHIFT_JIS = SHIFT_JIS.equalsIgnoreCase(property) || EUC_JP.equalsIgnoreCase(property);
    }

    private StringUtils() {
    }

    public static String guessEncoding(byte[] bArr, Map<DecodeHintType, ?> map) {
        int i10;
        int i11;
        String str;
        if (map != null && (str = (String) map.get(DecodeHintType.CHARACTER_SET)) != null) {
            return str;
        }
        if (bArr.length > 3 && bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
            return "UTF8";
        }
        int length = bArr.length;
        boolean z10 = true;
        boolean z11 = true;
        boolean z12 = true;
        int i12 = 0;
        boolean z13 = false;
        int i13 = 0;
        int i14 = 0;
        boolean z14 = false;
        boolean z15 = false;
        for (int i15 = 0; i15 < length && (z10 || z11 || z12); i15++) {
            int i16 = bArr[i15] & 255;
            if (i16 < 128 || i16 > 191) {
                if (i12 > 0) {
                    z12 = false;
                }
                if (i16 >= 192 && i16 <= 253) {
                    for (int i17 = i16; (i17 & 64) != 0; i17 <<= 1) {
                        i12++;
                    }
                    z13 = true;
                }
            } else if (i12 > 0) {
                i12--;
            }
            if ((i16 == 194 || i16 == 195) && i15 < length - 1 && (i10 = bArr[i15 + 1] & 255) <= 191 && ((i16 == 194 && i10 >= 160) || (i16 == 195 && i10 >= 128))) {
                z14 = true;
            }
            if (i16 >= 127 && i16 <= 159) {
                z10 = false;
            }
            if (i16 >= 161 && i16 <= 223 && !z15) {
                i14++;
            }
            if (!z15 && ((i16 >= 240 && i16 <= 255) || i16 == 128 || i16 == 160)) {
                z11 = false;
            }
            if (((i16 < 129 || i16 > 159) && (i16 < 224 || i16 > 239)) || z15) {
                z15 = false;
            } else {
                if (i15 < bArr.length - 1 && (i11 = bArr[i15 + 1] & 255) >= 64 && i11 <= 252) {
                    i13++;
                } else {
                    z11 = false;
                }
                z15 = true;
            }
        }
        boolean z16 = i12 > 0 ? false : z12;
        if (z11 && ASSUME_SHIFT_JIS) {
            return SHIFT_JIS;
        }
        if (z16 && z13) {
            return "UTF8";
        }
        if (!z11 || (i13 < 3 && i14 * 20 <= length)) {
            return (z14 || !z10) ? PLATFORM_DEFAULT_ENCODING : GB2312;
        }
        return SHIFT_JIS;
    }
}
