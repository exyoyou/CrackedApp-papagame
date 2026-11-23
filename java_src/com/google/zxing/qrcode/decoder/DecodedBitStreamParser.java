package com.google.zxing.qrcode.decoder;

import com.android.dx.io.Opcodes;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.StringUtils;
import external.org.apache.commons.lang3.d;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class DecodedBitStreamParser {
    private static final char[] ALPHANUMERIC_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', '$', '%', '*', '+', '-', d.f90941a, '/', ':'};
    private static final int GB2312_SUBSET = 1;

    private DecodedBitStreamParser() {
    }

    static DecoderResult decode(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel, Map<DecodeHintType, ?> map) throws FormatException {
        Mode modeForBits;
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb2 = new StringBuilder(50);
        int i10 = 1;
        ArrayList arrayList = new ArrayList(1);
        CharacterSetECI characterSetECIByValue = null;
        boolean z10 = false;
        while (true) {
            if (bitSource.available() < 4) {
                modeForBits = Mode.TERMINATOR;
            } else {
                try {
                    modeForBits = Mode.forBits(bitSource.readBits(4));
                } catch (IllegalArgumentException unused) {
                    throw FormatException.getFormatInstance();
                }
            }
            Mode mode = modeForBits;
            Mode mode2 = Mode.TERMINATOR;
            if (mode != mode2) {
                if (mode == Mode.FNC1_FIRST_POSITION || mode == Mode.FNC1_SECOND_POSITION) {
                    z10 = true;
                } else if (mode == Mode.STRUCTURED_APPEND) {
                    bitSource.readBits(16);
                } else if (mode == Mode.ECI) {
                    characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(parseECIValue(bitSource));
                    if (characterSetECIByValue == null) {
                        throw FormatException.getFormatInstance();
                    }
                } else if (mode == Mode.HANZI) {
                    int bits = bitSource.readBits(4);
                    int bits2 = bitSource.readBits(mode.getCharacterCountBits(version));
                    if (bits == i10) {
                        decodeHanziSegment(bitSource, sb2, bits2);
                    }
                } else {
                    int bits3 = bitSource.readBits(mode.getCharacterCountBits(version));
                    if (mode == Mode.NUMERIC) {
                        decodeNumericSegment(bitSource, sb2, bits3);
                    } else if (mode == Mode.ALPHANUMERIC) {
                        decodeAlphanumericSegment(bitSource, sb2, bits3, z10);
                    } else if (mode == Mode.BYTE) {
                        decodeByteSegment(bitSource, sb2, bits3, characterSetECIByValue, arrayList, map);
                    } else {
                        if (mode != Mode.KANJI) {
                            throw FormatException.getFormatInstance();
                        }
                        decodeKanjiSegment(bitSource, sb2, bits3);
                    }
                }
            }
            if (mode == mode2) {
                String string = sb2.toString();
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                return new DecoderResult(bArr, string, arrayList, errorCorrectionLevel != null ? errorCorrectionLevel.toString() : null);
            }
            i10 = 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0053  */
    private static void decodeAlphanumericSegment(BitSource bitSource, StringBuilder sb2, int i10, boolean z10) throws FormatException {
        while (i10 > 1) {
            int bits = bitSource.readBits(11);
            sb2.append(toAlphaNumericChar(bits / 45));
            sb2.append(toAlphaNumericChar(bits % 45));
            i10 -= 2;
        }
        if (i10 == 1) {
            sb2.append(toAlphaNumericChar(bitSource.readBits(6)));
        }
        if (z10) {
            for (int length = sb2.length(); length < sb2.length(); length++) {
                if (sb2.charAt(length) == '%') {
                    if (length < sb2.length() - 1) {
                        int i11 = length + 1;
                        if (sb2.charAt(i11) == '%') {
                            sb2.deleteCharAt(i11);
                        } else {
                            sb2.setCharAt(length, (char) 29);
                        }
                    } else {
                        sb2.setCharAt(length, (char) 29);
                    }
                }
            }
        }
    }

    private static void decodeByteSegment(BitSource bitSource, StringBuilder sb2, int i10, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws FormatException {
        if ((i10 << 3) > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) bitSource.readBits(8);
        }
        try {
            sb2.append(new String(bArr, characterSetECI == null ? StringUtils.guessEncoding(bArr, map) : characterSetECI.name()));
            collection.add(bArr);
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeHanziSegment(BitSource bitSource, StringBuilder sb2, int i10) throws FormatException {
        if (i10 * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i10 * 2];
        int i11 = 0;
        while (i10 > 0) {
            int bits = bitSource.readBits(13);
            int i12 = (bits % 96) | ((bits / 96) << 8);
            int i13 = i12 + (i12 < 959 ? 41377 : 42657);
            bArr[i11] = (byte) ((i13 >> 8) & 255);
            bArr[i11 + 1] = (byte) (i13 & 255);
            i11 += 2;
            i10--;
        }
        try {
            sb2.append(new String(bArr, StringUtils.GB2312));
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeKanjiSegment(BitSource bitSource, StringBuilder sb2, int i10) throws FormatException {
        if (i10 * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i10 * 2];
        int i11 = 0;
        while (i10 > 0) {
            int bits = bitSource.readBits(13);
            int i12 = (bits % 192) | ((bits / 192) << 8);
            int i13 = i12 + (i12 < 7936 ? 33088 : 49472);
            bArr[i11] = (byte) (i13 >> 8);
            bArr[i11 + 1] = (byte) i13;
            i11 += 2;
            i10--;
        }
        try {
            sb2.append(new String(bArr, StringUtils.SHIFT_JIS));
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeNumericSegment(BitSource bitSource, StringBuilder sb2, int i10) throws FormatException {
        while (i10 >= 3) {
            if (bitSource.available() < 10) {
                throw FormatException.getFormatInstance();
            }
            int bits = bitSource.readBits(10);
            if (bits >= 1000) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(toAlphaNumericChar(bits / 100));
            sb2.append(toAlphaNumericChar((bits / 10) % 10));
            sb2.append(toAlphaNumericChar(bits % 10));
            i10 -= 3;
        }
        if (i10 == 2) {
            if (bitSource.available() < 7) {
                throw FormatException.getFormatInstance();
            }
            int bits2 = bitSource.readBits(7);
            if (bits2 >= 100) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(toAlphaNumericChar(bits2 / 10));
            sb2.append(toAlphaNumericChar(bits2 % 10));
            return;
        }
        if (i10 == 1) {
            if (bitSource.available() < 4) {
                throw FormatException.getFormatInstance();
            }
            int bits3 = bitSource.readBits(4);
            if (bits3 >= 10) {
                throw FormatException.getFormatInstance();
            }
            sb2.append(toAlphaNumericChar(bits3));
        }
    }

    private static int parseECIValue(BitSource bitSource) {
        int bits = bitSource.readBits(8);
        if ((bits & 128) == 0) {
            return bits & 127;
        }
        if ((bits & 192) == 128) {
            return bitSource.readBits(8) | ((bits & 63) << 8);
        }
        if ((bits & Opcodes.SHL_INT_LIT8) == 192) {
            return bitSource.readBits(16) | ((bits & 31) << 16);
        }
        throw new IllegalArgumentException("Bad ECI bits starting with byte " + bits);
    }

    private static char toAlphaNumericChar(int i10) throws FormatException {
        char[] cArr = ALPHANUMERIC_CHARS;
        if (i10 < cArr.length) {
            return cArr[i10];
        }
        throw FormatException.getFormatInstance();
    }
}
