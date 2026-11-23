package com.google.zxing.oned;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.xinzhu.overmind.utils.l;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Code39Reader extends OneDReader {
    private static final int ASTERISK_ENCODING;
    static final int[] CHARACTER_ENCODINGS;
    private final boolean extendedMode;
    private final boolean usingCheckDigit;
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%";
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();

    static {
        int[] iArr = {52, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, 97, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_CHLO_COUNT, 49, 304, 112, 37, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 100, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 73, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 25, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 88, 13, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME, 76, 28, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 67, 322, 19, 274, 82, 7, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 70, 22, 385, 193, l.f90098b, 145, 400, 208, 133, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT, 196, 148, 168, 162, 138, 42};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[39];
    }

    public Code39Reader() {
        this.usingCheckDigit = false;
        this.extendedMode = false;
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i10;
        char c10;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        int i11 = 0;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt == '+' || cCharAt == '$' || cCharAt == '%' || cCharAt == '/') {
                i11++;
                char cCharAt2 = charSequence.charAt(i11);
                if (cCharAt != '$') {
                    if (cCharAt != '%') {
                        if (cCharAt != '+') {
                            if (cCharAt != '/') {
                                c10 = 0;
                            } else if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                                i10 = cCharAt2 - ' ';
                            } else {
                                if (cCharAt2 != 'Z') {
                                    throw FormatException.getFormatInstance();
                                }
                                c10 = ':';
                            }
                            sb2.append(c10);
                        } else {
                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            i10 = cCharAt2 + ' ';
                        }
                    } else if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                        i10 = cCharAt2 - '&';
                    } else {
                        if (cCharAt2 < 'F' || cCharAt2 > 'W') {
                            throw FormatException.getFormatInstance();
                        }
                        i10 = cCharAt2 - 11;
                    }
                } else {
                    if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                        throw FormatException.getFormatInstance();
                    }
                    i10 = cCharAt2 - '@';
                }
                c10 = (char) i10;
                sb2.append(c10);
            } else {
                sb2.append(cCharAt);
            }
            i11++;
        }
        return sb2.toString();
    }

    private static int[] findAsteriskPattern(BitArray bitArray, int[] iArr) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int length = iArr.length;
        int i10 = nextSet;
        boolean z10 = false;
        int i11 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) ^ z10) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                int i12 = length - 1;
                if (i11 != i12) {
                    i11++;
                } else {
                    if (toNarrowWidePattern(iArr) == ASTERISK_ENCODING && bitArray.isRange(Math.max(0, i10 - ((nextSet - i10) >> 1)), i10, false)) {
                        return new int[]{i10, nextSet};
                    }
                    i10 += iArr[0] + iArr[1];
                    int i13 = length - 2;
                    System.arraycopy(iArr, 2, iArr, 0, i13);
                    iArr[i13] = 0;
                    iArr[i12] = 0;
                    i11--;
                }
                iArr[i11] = 1;
                z10 = !z10;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char patternToChar(int i10) throws NotFoundException {
        int i11 = 0;
        while (true) {
            int[] iArr = CHARACTER_ENCODINGS;
            if (i11 >= iArr.length) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (iArr[i11] == i10) {
                return ALPHABET[i11];
            }
            i11++;
        }
    }

    private static int toNarrowWidePattern(int[] iArr) {
        int length = iArr.length;
        int i10 = 0;
        while (true) {
            int i11 = Integer.MAX_VALUE;
            for (int i12 : iArr) {
                if (i12 < i11 && i12 > i10) {
                    i11 = i12;
                }
            }
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < length; i16++) {
                int i17 = iArr[i16];
                if (i17 > i11) {
                    i14 |= 1 << ((length - 1) - i16);
                    i13++;
                    i15 += i17;
                }
            }
            if (i13 == 3) {
                for (int i18 = 0; i18 < length && i13 > 0; i18++) {
                    int i19 = iArr[i18];
                    if (i19 > i11) {
                        i13--;
                        if ((i19 << 1) >= i15) {
                            return -1;
                        }
                    }
                }
                return i14;
            }
            if (i13 <= 3) {
                return -1;
            }
            i10 = i11;
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i10, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] iArr = new int[9];
        int[] iArrFindAsteriskPattern = findAsteriskPattern(bitArray, iArr);
        int nextSet = bitArray.getNextSet(iArrFindAsteriskPattern[1]);
        int size = bitArray.getSize();
        StringBuilder sb2 = new StringBuilder(20);
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cPatternToChar = patternToChar(narrowWidePattern);
            sb2.append(cPatternToChar);
            int i11 = nextSet;
            for (int i12 = 0; i12 < 9; i12++) {
                i11 += iArr[i12];
            }
            int nextSet2 = bitArray.getNextSet(i11);
            if (cPatternToChar == '*') {
                sb2.setLength(sb2.length() - 1);
                int i13 = 0;
                for (int i14 = 0; i14 < 9; i14++) {
                    i13 += iArr[i14];
                }
                int i15 = (nextSet2 - nextSet) - i13;
                if (nextSet2 != size && (i15 >> 1) < i13) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (this.usingCheckDigit) {
                    int length = sb2.length() - 1;
                    int iIndexOf = 0;
                    for (int i16 = 0; i16 < length; i16++) {
                        iIndexOf += ALPHABET_STRING.indexOf(sb2.charAt(i16));
                    }
                    if (sb2.charAt(length) != ALPHABET[iIndexOf % 43]) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    sb2.setLength(length);
                }
                if (sb2.length() == 0) {
                    throw NotFoundException.getNotFoundInstance();
                }
                float f10 = i10;
                return new Result(this.extendedMode ? decodeExtended(sb2) : sb2.toString(), null, new ResultPoint[]{new ResultPoint((iArrFindAsteriskPattern[1] + iArrFindAsteriskPattern[0]) / 2.0f, f10), new ResultPoint((nextSet2 + nextSet) / 2.0f, f10)}, BarcodeFormat.CODE_39);
            }
            nextSet = nextSet2;
        }
    }

    public Code39Reader(boolean z10) {
        this.usingCheckDigit = z10;
        this.extendedMode = false;
    }

    public Code39Reader(boolean z10, boolean z11) {
        this.usingCheckDigit = z10;
        this.extendedMode = z11;
    }
}
