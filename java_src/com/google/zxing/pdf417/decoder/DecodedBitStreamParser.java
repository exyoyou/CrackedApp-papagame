package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.DecoderResult;
import external.org.apache.commons.lang3.d;
import io.netty.util.internal.StringUtil;
import java.math.BigInteger;
import kotlin.text.Typography;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes5.dex */
final class DecodedBitStreamParser {
    private static final int AL = 28;
    private static final int AS = 27;
    private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    private static final int BYTE_COMPACTION_MODE_LATCH = 901;
    private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    private static final BigInteger[] EXP900;
    private static final int LL = 27;
    private static final int MACRO_PDF417_TERMINATOR = 922;
    private static final int MAX_NUMERIC_CODEWORDS = 15;
    private static final int ML = 28;
    private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    private static final int PAL = 29;
    private static final int PL = 25;
    private static final int PS = 29;
    private static final int TEXT_COMPACTION_MODE_LATCH = 900;
    private static final char[] PUNCT_CHARS = {';', Typography.less, Typography.greater, '@', '[', TokenParser.ESCAPE, '}', '_', '`', '~', '!', '\r', '\t', StringUtil.COMMA, ':', '\n', '-', d.f90941a, '$', '/', '\"', '|', '*', '(', ')', '?', '{', '}', '\''};
    private static final char[] MIXED_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', Typography.amp, '\r', '\t', StringUtil.COMMA, ':', '#', '-', d.f90941a, '$', '/', '+', '%', '*', '=', '^'};

    /* JADX INFO: renamed from: com.google.zxing.pdf417.decoder.DecodedBitStreamParser$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                iArr[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        EXP900 = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i10 = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = EXP900;
            if (i10 >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i10] = bigIntegerArr2[i10 - 1].multiply(bigIntegerValueOf);
            i10++;
        }
    }

    private DecodedBitStreamParser() {
    }

    private static int byteCompaction(int i10, int[] iArr, int i11, StringBuilder sb2) {
        boolean z10;
        int i12 = 922;
        int i13 = 923;
        int i14 = 928;
        long j10 = 900;
        if (i10 != 901) {
            if (i10 != 924) {
                return i11;
            }
            int i15 = i11;
            boolean z11 = false;
            int i16 = 0;
            long j11 = 0;
            while (i15 < iArr[0] && !z11) {
                int i17 = i15 + 1;
                int i18 = iArr[i15];
                if (i18 < 900) {
                    i16++;
                    j11 = (j11 * 900) + ((long) i18);
                    i15 = i17;
                } else {
                    if (i18 != 900 && i18 != 901 && i18 != 902 && i18 != 924) {
                        if (i18 != 928 && i18 != 923 && i18 != i12) {
                            i15 = i17;
                        }
                    }
                    i15 = i17 - 1;
                    z11 = true;
                }
                if (i16 % 5 != 0 || i16 <= 0) {
                    z10 = z11;
                } else {
                    char[] cArr = new char[6];
                    int i19 = 0;
                    while (i19 < 6) {
                        cArr[5 - i19] = (char) (j11 & 255);
                        j11 >>= 8;
                        i19++;
                        z11 = z11;
                    }
                    z10 = z11;
                    sb2.append(cArr);
                }
                z11 = z10;
                i12 = 922;
            }
            return i15;
        }
        char[] cArr2 = new char[6];
        int[] iArr2 = new int[6];
        int i20 = i11;
        int i21 = 0;
        long j12 = 0;
        boolean z12 = false;
        while (i20 < iArr[0] && !z12) {
            int i22 = i20 + 1;
            int i23 = iArr[i20];
            if (i23 < 900) {
                iArr2[i21] = i23;
                i21++;
                j12 = (j12 * j10) + ((long) i23);
            } else {
                if (i23 == 900 || i23 == 901 || i23 == 902 || i23 == 924 || i23 == i14 || i23 == i13 || i23 == 922) {
                    i20 = i22 - 1;
                    z12 = true;
                }
                if (i21 % 5 != 0 && i21 > 0) {
                    for (int i24 = 0; i24 < 6; i24++) {
                        cArr2[5 - i24] = (char) (j12 % 256);
                        j12 >>= 8;
                    }
                    sb2.append(cArr2);
                    i21 = 0;
                }
                i13 = 923;
                i14 = 928;
                j10 = 900;
            }
            i20 = i22;
            if (i21 % 5 != 0) {
            }
            i13 = 923;
            i14 = 928;
            j10 = 900;
        }
        for (int i25 = (i21 / 5) * 5; i25 < i21; i25++) {
            sb2.append((char) iArr2[i25]);
        }
        return i20;
    }

    static DecoderResult decode(int[] iArr) throws FormatException {
        int iByteCompaction;
        StringBuilder sb2 = new StringBuilder(100);
        int i10 = iArr[1];
        int i11 = 2;
        while (i11 < iArr[0]) {
            if (i10 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE && i10 != 924) {
                switch (i10) {
                    case 900:
                        iByteCompaction = textCompaction(iArr, i11, sb2);
                        break;
                    case 901:
                        iByteCompaction = byteCompaction(i10, iArr, i11, sb2);
                        break;
                    case 902:
                        iByteCompaction = numericCompaction(iArr, i11, sb2);
                        break;
                    default:
                        iByteCompaction = textCompaction(iArr, i11 - 1, sb2);
                        break;
                }
            } else {
                iByteCompaction = byteCompaction(i10, iArr, i11, sb2);
            }
            if (iByteCompaction >= iArr.length) {
                throw FormatException.getFormatInstance();
            }
            i11 = iByteCompaction + 1;
            i10 = iArr[iByteCompaction];
        }
        return new DecoderResult(null, sb2.toString(), null, null);
    }

    private static String decodeBase900toBase10(int[] iArr, int i10) throws FormatException {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i11 = 0; i11 < i10; i11++) {
            bigIntegerAdd = bigIntegerAdd.add(EXP900[(i10 - i11) - 1].multiply(BigInteger.valueOf(iArr[i11])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    private static void decodeTextCompaction(int[] iArr, int[] iArr2, int i10, StringBuilder sb2) {
        Mode mode;
        int i11;
        Mode mode2 = Mode.ALPHA;
        Mode mode3 = mode2;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = iArr[i12];
            char c10 = ' ';
            switch (AnonymousClass1.$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[mode2.ordinal()]) {
                case 1:
                    if (i13 < 26) {
                        i11 = i13 + 65;
                        c10 = (char) i11;
                    } else if (i13 != 26) {
                        if (i13 == 27) {
                            mode2 = Mode.LOWER;
                        } else if (i13 == 28) {
                            mode2 = Mode.MIXED;
                        } else if (i13 == 29) {
                            mode = Mode.PUNCT_SHIFT;
                            c10 = 0;
                            Mode mode4 = mode;
                            mode3 = mode2;
                            mode2 = mode4;
                        } else if (i13 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                            sb2.append((char) iArr2[i12]);
                        }
                        c10 = 0;
                    }
                    break;
                case 2:
                    if (i13 < 26) {
                        i11 = i13 + 97;
                        c10 = (char) i11;
                    } else if (i13 != 26) {
                        if (i13 != 27) {
                            if (i13 == 28) {
                                mode2 = Mode.MIXED;
                            } else if (i13 == 29) {
                                mode = Mode.PUNCT_SHIFT;
                            } else if (i13 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                sb2.append((char) iArr2[i12]);
                            }
                            c10 = 0;
                        } else {
                            mode = Mode.ALPHA_SHIFT;
                        }
                        c10 = 0;
                        Mode mode5 = mode;
                        mode3 = mode2;
                        mode2 = mode5;
                    }
                    break;
                case 3:
                    if (i13 < 25) {
                        c10 = MIXED_CHARS[i13];
                    } else {
                        if (i13 == 25) {
                            mode2 = Mode.PUNCT;
                        } else if (i13 != 26) {
                            if (i13 == 27) {
                                mode2 = Mode.LOWER;
                            } else if (i13 == 28) {
                                mode2 = Mode.ALPHA;
                            } else if (i13 == 29) {
                                mode = Mode.PUNCT_SHIFT;
                                c10 = 0;
                                Mode mode6 = mode;
                                mode3 = mode2;
                                mode2 = mode6;
                            } else if (i13 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                sb2.append((char) iArr2[i12]);
                            }
                        }
                        c10 = 0;
                    }
                    break;
                case 4:
                    if (i13 < 29) {
                        c10 = PUNCT_CHARS[i13];
                    } else {
                        if (i13 == 29) {
                            mode2 = Mode.ALPHA;
                        } else if (i13 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                            sb2.append((char) iArr2[i12]);
                        }
                        c10 = 0;
                    }
                    break;
                case 5:
                    if (i13 < 26) {
                        c10 = (char) (i13 + 65);
                    } else if (i13 != 26) {
                        mode2 = mode3;
                        c10 = 0;
                        break;
                    }
                    mode2 = mode3;
                    break;
                case 6:
                    if (i13 < 29) {
                        c10 = PUNCT_CHARS[i13];
                        mode2 = mode3;
                    } else {
                        if (i13 == 29) {
                            mode2 = Mode.ALPHA;
                        } else {
                            mode2 = mode3;
                        }
                        c10 = 0;
                    }
                    break;
                default:
                    c10 = 0;
                    break;
            }
            if (c10 != 0) {
                sb2.append(c10);
            }
        }
    }

    private static int numericCompaction(int[] iArr, int i10, StringBuilder sb2) throws FormatException {
        int[] iArr2 = new int[15];
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            int i12 = iArr[0];
            if (i10 >= i12 || z10) {
                break;
            }
            int i13 = i10 + 1;
            int i14 = iArr[i10];
            if (i13 == i12) {
                z10 = true;
            }
            if (i14 < 900) {
                iArr2[i11] = i14;
                i11++;
            } else if (i14 == 900 || i14 == 901 || i14 == 924 || i14 == 928 || i14 == 923 || i14 == 922) {
                i13--;
                z10 = true;
            }
            if (i11 % 15 == 0 || i14 == 902 || z10) {
                sb2.append(decodeBase900toBase10(iArr2, i11));
                i11 = 0;
            }
            i10 = i13;
        }
        return i10;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0030. Please report as an issue. */
    private static int textCompaction(int[] iArr, int i10, StringBuilder sb2) {
        int i11 = iArr[0];
        int[] iArr2 = new int[i11 << 1];
        int[] iArr3 = new int[i11 << 1];
        boolean z10 = false;
        int i12 = 0;
        while (i10 < iArr[0] && !z10) {
            int i13 = i10 + 1;
            int i14 = iArr[i10];
            if (i14 < 900) {
                iArr2[i12] = i14 / 30;
                iArr2[i12 + 1] = i14 % 30;
                i12 += 2;
            } else if (i14 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                if (i14 != 924) {
                    switch (i14) {
                        case 900:
                        case 901:
                        case 902:
                            break;
                        default:
                            break;
                    }
                }
                i10 = i13 - 1;
                z10 = true;
            } else {
                iArr2[i12] = MODE_SHIFT_TO_BYTE_COMPACTION_MODE;
                i10 = i13 + 1;
                iArr3[i12] = iArr[i13];
                i12++;
            }
            i10 = i13;
        }
        decodeTextCompaction(iArr2, iArr3, i12, sb2);
        return i10;
    }
}
