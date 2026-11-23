package com.android.dx.util;

import x.a;

/* JADX INFO: loaded from: classes7.dex */
public final class HexParser {
    private HexParser() {
    }

    public static byte[] parse(String str) {
        int iIndexOf;
        int length = str.length();
        int i10 = length / 2;
        byte[] bArr = new byte[i10];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < length) {
            int iIndexOf2 = str.indexOf(10, i12);
            if (iIndexOf2 < 0) {
                iIndexOf2 = length;
            }
            int iIndexOf3 = str.indexOf(35, i12);
            String strSubstring = (iIndexOf3 < 0 || iIndexOf3 >= iIndexOf2) ? str.substring(i12, iIndexOf2) : str.substring(i12, iIndexOf3);
            int i14 = iIndexOf2 + 1;
            int iIndexOf4 = strSubstring.indexOf(58);
            if (iIndexOf4 != -1 && ((iIndexOf = strSubstring.indexOf(34)) == -1 || iIndexOf >= iIndexOf4)) {
                String strTrim = strSubstring.substring(i11, iIndexOf4).trim();
                strSubstring = strSubstring.substring(iIndexOf4 + 1);
                if (Integer.parseInt(strTrim, 16) != i13) {
                    throw new RuntimeException("bogus offset marker: " + strTrim);
                }
            }
            int length2 = strSubstring.length();
            int i15 = -1;
            boolean z10 = false;
            for (int i16 = 0; i16 < length2; i16++) {
                char cCharAt = strSubstring.charAt(i16);
                if (z10) {
                    if (cCharAt == '\"') {
                        z10 = false;
                    } else {
                        bArr[i13] = (byte) cCharAt;
                        i13++;
                    }
                } else if (cCharAt > ' ') {
                    if (cCharAt != '\"') {
                        int iDigit = Character.digit(cCharAt, 16);
                        if (iDigit == -1) {
                            throw new RuntimeException("bogus digit character: \"" + cCharAt + a.f97579g);
                        }
                        if (i15 == -1) {
                            i15 = iDigit;
                        } else {
                            bArr[i13] = (byte) ((i15 << 4) | iDigit);
                            i13++;
                            i15 = -1;
                        }
                    } else {
                        if (i15 != -1) {
                            throw new RuntimeException("spare digit around offset " + Hex.u4(i13));
                        }
                        z10 = true;
                    }
                }
            }
            if (i15 != -1) {
                throw new RuntimeException("spare digit around offset " + Hex.u4(i13));
            }
            if (z10) {
                throw new RuntimeException("unterminated quote around offset " + Hex.u4(i13));
            }
            i12 = i14;
            i11 = 0;
        }
        if (i13 >= i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, 0, bArr2, 0, i13);
        return bArr2;
    }
}
