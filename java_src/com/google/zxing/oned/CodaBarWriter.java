package com.google.zxing.oned;

import external.org.apache.commons.lang3.d;

/* JADX INFO: loaded from: classes5.dex */
public class CodaBarWriter extends OneDimensionalCodeWriter {
    public CodaBarWriter() {
        super(20);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        int i10;
        if (!CodaBarReader.arrayContains(new char[]{'A', 'B', 'C', 'D'}, Character.toUpperCase(str.charAt(0)))) {
            throw new IllegalArgumentException("Codabar should start with one of the following: 'A', 'B', 'C' or 'D'");
        }
        if (!CodaBarReader.arrayContains(new char[]{'T', 'N', '*', 'E'}, Character.toUpperCase(str.charAt(str.length() - 1)))) {
            throw new IllegalArgumentException("Codabar should end with one of the following: 'T', 'N', '*' or 'E'");
        }
        char[] cArr = {'/', ':', '+', d.f90941a};
        int i11 = 20;
        for (int i12 = 1; i12 < str.length() - 1; i12++) {
            if (Character.isDigit(str.charAt(i12)) || str.charAt(i12) == '-' || str.charAt(i12) == '$') {
                i11 += 9;
            } else {
                if (!CodaBarReader.arrayContains(cArr, str.charAt(i12))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i12) + '\'');
                }
                i11 += 10;
            }
        }
        byte[] bArr = new byte[i11 + (str.length() - 1)];
        int i13 = 0;
        for (int i14 = 0; i14 < str.length(); i14++) {
            char upperCase = Character.toUpperCase(str.charAt(i14));
            if (i14 == str.length() - 1) {
                if (upperCase == '*') {
                    upperCase = 'C';
                } else if (upperCase == 'E') {
                    upperCase = 'D';
                }
            }
            int i15 = 0;
            while (true) {
                char[] cArr2 = CodaBarReader.ALPHABET;
                if (i15 >= cArr2.length) {
                    i10 = 0;
                    break;
                }
                if (upperCase == cArr2[i15]) {
                    i10 = CodaBarReader.CHARACTER_ENCODINGS[i15];
                    break;
                }
                i15++;
            }
            int i16 = 0;
            byte b10 = 1;
            while (true) {
                int i17 = 0;
                while (i16 < 7) {
                    bArr[i13] = b10;
                    i13++;
                    if (((i10 >> (6 - i16)) & 1) == 0 || i17 == 1) {
                        b10 = (byte) (b10 ^ 1);
                        i16++;
                    } else {
                        i17++;
                    }
                }
                break;
            }
            if (i14 < str.length() - 1) {
                bArr[i13] = 0;
                i13++;
            }
        }
        return bArr;
    }
}
