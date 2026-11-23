package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import com.sigmob.sdk.archives.tar.e;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.math.BigInteger;
import java.util.Arrays;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
final class PDF417HighLevelEncoder {
    private static final int BYTE_COMPACTION = 1;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final byte[] MIXED;
    private static final int NUMERIC_COMPACTION = 2;
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW = {e.H, e.I, e.J, e.K, e.L, e.M, e.N, e.O, 56, 57, 38, 13, 9, HttpConstants.COMMA, HttpConstants.COLON, BinaryMemcacheOpcodes.GATK, 45, 46, BinaryMemcacheOpcodes.GATKQ, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};
    private static final byte[] TEXT_PUNCTUATION_RAW = {HttpConstants.SEMICOLON, 60, 62, 64, 91, 92, 93, 95, 96, 126, BinaryMemcacheOpcodes.SASL_AUTH, 13, 9, HttpConstants.COMMA, HttpConstants.COLON, 10, 45, 46, BinaryMemcacheOpcodes.GATKQ, 47, 34, 124, 42, 40, 41, Utf8.REPLACEMENT_BYTE, 123, 125, 39, 0};
    private static final byte[] PUNCTUATION = new byte[128];

    static {
        byte[] bArr = new byte[128];
        MIXED = bArr;
        Arrays.fill(bArr, (byte) -1);
        byte b10 = 0;
        byte b11 = 0;
        while (true) {
            byte[] bArr2 = TEXT_MIXED_RAW;
            if (b11 >= bArr2.length) {
                break;
            }
            byte b12 = bArr2[b11];
            if (b12 > 0) {
                MIXED[b12] = b11;
            }
            b11 = (byte) (b11 + 1);
        }
        Arrays.fill(PUNCTUATION, (byte) -1);
        while (true) {
            byte[] bArr3 = TEXT_PUNCTUATION_RAW;
            if (b10 >= bArr3.length) {
                return;
            }
            byte b13 = bArr3[b10];
            if (b13 > 0) {
                PUNCTUATION[b13] = b10;
            }
            b10 = (byte) (b10 + 1);
        }
    }

    private PDF417HighLevelEncoder() {
    }

    private static int determineConsecutiveBinaryCount(CharSequence charSequence, byte[] bArr, int i10) throws WriterException {
        int i11;
        int i12;
        int length = charSequence.length();
        int i13 = i10;
        while (i13 < length) {
            char cCharAt = charSequence.charAt(i13);
            int i14 = 0;
            int i15 = 0;
            while (i15 < 13 && isDigit(cCharAt) && (i12 = i13 + (i15 = i15 + 1)) < length) {
                cCharAt = charSequence.charAt(i12);
            }
            if (i15 >= 13) {
                return i13 - i10;
            }
            while (i14 < 5 && isText(cCharAt) && (i11 = i13 + (i14 = i14 + 1)) < length) {
                cCharAt = charSequence.charAt(i11);
            }
            if (i14 >= 5) {
                return i13 - i10;
            }
            char cCharAt2 = charSequence.charAt(i13);
            if (bArr[i13] == 63 && cCharAt2 != '?') {
                throw new WriterException("Non-encodable character detected: " + cCharAt2 + " (Unicode: " + ((int) cCharAt2) + ')');
            }
            i13++;
        }
        return i13 - i10;
    }

    private static int determineConsecutiveDigitCount(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        if (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            while (isDigit(cCharAt) && i10 < length) {
                i11++;
                i10++;
                if (i10 < length) {
                    cCharAt = charSequence.charAt(i10);
                }
            }
        }
        return i11;
    }

    private static int determineConsecutiveTextCount(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = i10;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            int i12 = 0;
            while (i12 < 13 && isDigit(cCharAt) && i11 < length) {
                i12++;
                i11++;
                if (i11 < length) {
                    cCharAt = charSequence.charAt(i11);
                }
            }
            if (i12 >= 13) {
                return (i11 - i10) - i12;
            }
            if (i12 <= 0) {
                if (!isText(charSequence.charAt(i11))) {
                    break;
                }
                i11++;
            }
        }
        return i11 - i10;
    }

    private static void encodeBinary(byte[] bArr, int i10, int i11, int i12, StringBuilder sb2) {
        int i13;
        if (i11 == 1 && i12 == 0) {
            sb2.append((char) 913);
        }
        if (i11 >= 6) {
            sb2.append((char) 924);
            char[] cArr = new char[5];
            i13 = i10;
            while ((i10 + i11) - i13 >= 6) {
                long j10 = 0;
                for (int i14 = 0; i14 < 6; i14++) {
                    j10 = (j10 << 8) + ((long) (bArr[i13 + i14] & 255));
                }
                for (int i15 = 0; i15 < 5; i15++) {
                    cArr[i15] = (char) (j10 % 900);
                    j10 /= 900;
                }
                for (int i16 = 4; i16 >= 0; i16--) {
                    sb2.append(cArr[i16]);
                }
                i13 += 6;
            }
        } else {
            i13 = i10;
        }
        int i17 = i10 + i11;
        if (i13 < i17) {
            sb2.append((char) 901);
        }
        while (i13 < i17) {
            sb2.append((char) (bArr[i13] & 255));
            i13++;
        }
    }

    static String encodeHighLevel(String str, Compaction compaction) throws WriterException {
        int iDetermineConsecutiveDigitCount;
        StringBuilder sb2 = new StringBuilder(str.length());
        int length = str.length();
        if (compaction == Compaction.TEXT) {
            encodeText(str, 0, length, sb2, 0);
        } else if (compaction == Compaction.BYTE) {
            byte[] bytesForMessage = getBytesForMessage(str);
            encodeBinary(bytesForMessage, 0, bytesForMessage.length, 1, sb2);
        } else if (compaction == Compaction.NUMERIC) {
            sb2.append((char) 902);
            encodeNumeric(str, 0, length, sb2);
        } else {
            byte[] bytesForMessage2 = null;
            int i10 = 0;
            int i11 = 0;
            loop0: while (true) {
                int iEncodeText = 0;
                while (true) {
                    if (i10 >= length) {
                        break loop0;
                    }
                    iDetermineConsecutiveDigitCount = determineConsecutiveDigitCount(str, i10);
                    if (iDetermineConsecutiveDigitCount >= 13) {
                        break;
                    }
                    int iDetermineConsecutiveTextCount = determineConsecutiveTextCount(str, i10);
                    if (iDetermineConsecutiveTextCount >= 5 || iDetermineConsecutiveDigitCount == length) {
                        if (i11 != 0) {
                            sb2.append((char) 900);
                            i11 = 0;
                            iEncodeText = 0;
                        }
                        iEncodeText = encodeText(str, i10, iDetermineConsecutiveTextCount, sb2, iEncodeText);
                        i10 += iDetermineConsecutiveTextCount;
                    } else {
                        if (bytesForMessage2 == null) {
                            bytesForMessage2 = getBytesForMessage(str);
                        }
                        int iDetermineConsecutiveBinaryCount = determineConsecutiveBinaryCount(str, bytesForMessage2, i10);
                        if (iDetermineConsecutiveBinaryCount == 0) {
                            iDetermineConsecutiveBinaryCount = 1;
                        }
                        if (iDetermineConsecutiveBinaryCount == 1 && i11 == 0) {
                            encodeBinary(bytesForMessage2, i10, 1, 0, sb2);
                        } else {
                            encodeBinary(bytesForMessage2, i10, iDetermineConsecutiveBinaryCount, i11, sb2);
                            i11 = 1;
                            iEncodeText = 0;
                        }
                        i10 += iDetermineConsecutiveBinaryCount;
                    }
                }
                sb2.append((char) 902);
                encodeNumeric(str, i10, iDetermineConsecutiveDigitCount, sb2);
                i10 += iDetermineConsecutiveDigitCount;
                i11 = 2;
            }
        }
        return sb2.toString();
    }

    private static void encodeNumeric(String str, int i10, int i11, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder((i11 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i12 = 0;
        while (i12 < i11 - 1) {
            sb3.setLength(0);
            int iMin = Math.min(44, i11 - i12);
            StringBuilder sb4 = new StringBuilder();
            sb4.append('1');
            int i13 = i10 + i12;
            sb4.append(str.substring(i13, i13 + iMin));
            BigInteger bigInteger = new BigInteger(sb4.toString());
            do {
                sb3.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb3.length() - 1; length >= 0; length--) {
                sb2.append(sb3.charAt(length));
            }
            i12 += iMin;
        }
    }

    /* JADX WARN: Code duplicated, block: B:76:0x00f6 A[EDGE_INSN: B:76:0x00f6->B:55:0x00f6 BREAK  A[LOOP:0: B:3:0x000f->B:93:0x000f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x000f A[SYNTHETIC] */
    private static int encodeText(CharSequence charSequence, int i10, int i11, StringBuilder sb2, int i12) {
        StringBuilder sb3 = new StringBuilder(i11);
        int i13 = i12;
        int i14 = 0;
        while (true) {
            int i15 = i10 + i14;
            char cCharAt = charSequence.charAt(i15);
            if (i13 == 0) {
                if (isAlphaUpper(cCharAt)) {
                    if (cCharAt == ' ') {
                        sb3.append((char) 26);
                    } else {
                        sb3.append((char) (cCharAt - 'A'));
                    }
                } else if (isAlphaLower(cCharAt)) {
                    sb3.append((char) 27);
                    i13 = 1;
                } else if (isMixed(cCharAt)) {
                    sb3.append((char) 28);
                    i13 = 2;
                } else {
                    sb3.append((char) 29);
                    sb3.append((char) PUNCTUATION[cCharAt]);
                }
                i14++;
                if (i14 >= i11) {
                    break;
                    break;
                }
            } else {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (isPunctuation(cCharAt)) {
                            sb3.append((char) PUNCTUATION[cCharAt]);
                        } else {
                            sb3.append((char) 29);
                            i13 = 0;
                        }
                    } else if (isMixed(cCharAt)) {
                        sb3.append((char) MIXED[cCharAt]);
                    } else if (isAlphaUpper(cCharAt)) {
                        sb3.append((char) 28);
                        i13 = 0;
                    } else if (isAlphaLower(cCharAt)) {
                        sb3.append((char) 27);
                        i13 = 1;
                    } else {
                        int i16 = i15 + 1;
                        if (i16 >= i11 || !isPunctuation(charSequence.charAt(i16))) {
                            sb3.append((char) 29);
                            sb3.append((char) PUNCTUATION[cCharAt]);
                        } else {
                            sb3.append((char) 25);
                            i13 = 3;
                        }
                    }
                } else if (isAlphaLower(cCharAt)) {
                    if (cCharAt == ' ') {
                        sb3.append((char) 26);
                    } else {
                        sb3.append((char) (cCharAt - 'a'));
                    }
                } else if (isAlphaUpper(cCharAt)) {
                    sb3.append((char) 27);
                    sb3.append((char) (cCharAt - 'A'));
                } else if (isMixed(cCharAt)) {
                    sb3.append((char) 28);
                    i13 = 2;
                } else {
                    sb3.append((char) 29);
                    sb3.append((char) PUNCTUATION[cCharAt]);
                }
                i14++;
                if (i14 >= i11) {
                    break;
                }
            }
        }
        int length = sb3.length();
        char cCharAt2 = 0;
        for (int i17 = 0; i17 < length; i17++) {
            if (i17 % 2 != 0) {
                cCharAt2 = (char) ((cCharAt2 * 30) + sb3.charAt(i17));
                sb2.append(cCharAt2);
            } else {
                cCharAt2 = sb3.charAt(i17);
            }
        }
        if (length % 2 != 0) {
            sb2.append((char) ((cCharAt2 * 30) + 29));
        }
        return i13;
    }

    private static byte[] getBytesForMessage(String str) {
        return str.getBytes();
    }

    private static boolean isAlphaLower(char c10) {
        return c10 == ' ' || (c10 >= 'a' && c10 <= 'z');
    }

    private static boolean isAlphaUpper(char c10) {
        return c10 == ' ' || (c10 >= 'A' && c10 <= 'Z');
    }

    private static boolean isDigit(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    private static boolean isMixed(char c10) {
        return MIXED[c10] != -1;
    }

    private static boolean isPunctuation(char c10) {
        return PUNCTUATION[c10] != -1;
    }

    private static boolean isText(char c10) {
        return c10 == '\t' || c10 == '\n' || c10 == '\r' || (c10 >= ' ' && c10 <= '~');
    }
}
