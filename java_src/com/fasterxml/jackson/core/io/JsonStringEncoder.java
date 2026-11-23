package com.fasterxml.jackson.core.io;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.util.Arrays;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes9.dex */
public final class JsonStringEncoder {
    private static final int INITIAL_BYTE_BUFFER_SIZE = 200;
    private static final int INITIAL_CHAR_BUFFER_SIZE = 120;
    private static final int SURR1_FIRST = 55296;
    private static final int SURR1_LAST = 56319;
    private static final int SURR2_FIRST = 56320;
    private static final int SURR2_LAST = 57343;
    private static final char[] HC = CharTypes.copyHexChars();
    private static final byte[] HB = CharTypes.copyHexBytes();
    private static final JsonStringEncoder instance = new JsonStringEncoder();

    private int _appendByte(int i10, int i11, ByteArrayBuilder byteArrayBuilder, int i12) {
        byteArrayBuilder.setCurrentSegmentLength(i12);
        byteArrayBuilder.append(92);
        if (i11 < 0) {
            byteArrayBuilder.append(117);
            if (i10 > 255) {
                int i13 = i10 >> 8;
                byte[] bArr = HB;
                byteArrayBuilder.append(bArr[i13 >> 4]);
                byteArrayBuilder.append(bArr[i13 & 15]);
                i10 &= 255;
            } else {
                byteArrayBuilder.append(48);
                byteArrayBuilder.append(48);
            }
            byte[] bArr2 = HB;
            byteArrayBuilder.append(bArr2[i10 >> 4]);
            byteArrayBuilder.append(bArr2[i10 & 15]);
        } else {
            byteArrayBuilder.append((byte) i11);
        }
        return byteArrayBuilder.getCurrentSegmentLength();
    }

    private int _appendNamed(int i10, char[] cArr) {
        cArr[1] = (char) i10;
        return 2;
    }

    private int _appendNumeric(int i10, char[] cArr) {
        cArr[1] = 'u';
        char[] cArr2 = HC;
        cArr[4] = cArr2[i10 >> 4];
        cArr[5] = cArr2[i10 & 15];
        return 6;
    }

    private static int _convert(int i10, int i11) {
        if (i11 >= 56320 && i11 <= 57343) {
            return ((i10 - 55296) << 10) + 65536 + (i11 - 56320);
        }
        throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i10) + ", second 0x" + Integer.toHexString(i11) + "; illegal combination");
    }

    private static void _illegal(int i10) {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i10));
    }

    private char[] _qbuf() {
        return new char[]{TokenParser.ESCAPE, 0, '0', '0', 0, 0};
    }

    public static JsonStringEncoder getInstance() {
        return instance;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e9 A[SYNTHETIC] */
    public byte[] encodeAsUTF8(String str) {
        int i10;
        int i11;
        int length = str.length();
        int length2 = 200;
        byte[] bArrFinishCurrentSegment = new byte[200];
        ByteArrayBuilder byteArrayBuilderFromInitial = null;
        int i12 = 0;
        int i13 = 0;
        loop0: while (i12 < length) {
            int i14 = i12 + 1;
            char cCharAt = str.charAt(i12);
            while (cCharAt <= 127) {
                if (i13 >= length2) {
                    if (byteArrayBuilderFromInitial == null) {
                        byteArrayBuilderFromInitial = ByteArrayBuilder.fromInitial(bArrFinishCurrentSegment, i13);
                    }
                    byte[] bArrFinishCurrentSegment2 = byteArrayBuilderFromInitial.finishCurrentSegment();
                    i13 = 0;
                    bArrFinishCurrentSegment = bArrFinishCurrentSegment2;
                    length2 = bArrFinishCurrentSegment2.length;
                }
                int i15 = i13 + 1;
                bArrFinishCurrentSegment[i13] = (byte) cCharAt;
                if (i14 >= length) {
                    i13 = i15;
                    break loop0;
                }
                char cCharAt2 = str.charAt(i14);
                i14++;
                cCharAt = cCharAt2;
                i13 = i15;
            }
            if (byteArrayBuilderFromInitial == null) {
                byteArrayBuilderFromInitial = ByteArrayBuilder.fromInitial(bArrFinishCurrentSegment, i13);
            }
            if (i13 >= length2) {
                bArrFinishCurrentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                length2 = bArrFinishCurrentSegment.length;
                i13 = 0;
            }
            if (cCharAt < 2048) {
                i10 = i13 + 1;
                bArrFinishCurrentSegment[i13] = (byte) ((cCharAt >> 6) | 192);
            } else {
                if (cCharAt < 55296 || cCharAt > 57343) {
                    int i16 = i13 + 1;
                    bArrFinishCurrentSegment[i13] = (byte) ((cCharAt >> '\f') | Opcodes.SHL_INT_LIT8);
                    if (i16 >= length2) {
                        byte[] bArrFinishCurrentSegment3 = byteArrayBuilderFromInitial.finishCurrentSegment();
                        i16 = 0;
                        bArrFinishCurrentSegment = bArrFinishCurrentSegment3;
                        length2 = bArrFinishCurrentSegment3.length;
                    }
                    bArrFinishCurrentSegment[i16] = (byte) (((cCharAt >> 6) & 63) | 128);
                    i10 = i16 + 1;
                } else {
                    if (cCharAt > 56319) {
                        _illegal(cCharAt);
                    }
                    if (i14 >= length) {
                        _illegal(cCharAt);
                    }
                    int i17 = i14 + 1;
                    int i_convert = _convert(cCharAt, str.charAt(i14));
                    if (i_convert > 1114111) {
                        _illegal(i_convert);
                    }
                    int i18 = i13 + 1;
                    bArrFinishCurrentSegment[i13] = (byte) ((i_convert >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                    if (i18 >= length2) {
                        bArrFinishCurrentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                        length2 = bArrFinishCurrentSegment.length;
                        i18 = 0;
                    }
                    int i19 = i18 + 1;
                    bArrFinishCurrentSegment[i18] = (byte) (((i_convert >> 12) & 63) | 128);
                    if (i19 >= length2) {
                        byte[] bArrFinishCurrentSegment4 = byteArrayBuilderFromInitial.finishCurrentSegment();
                        i19 = 0;
                        bArrFinishCurrentSegment = bArrFinishCurrentSegment4;
                        length2 = bArrFinishCurrentSegment4.length;
                    }
                    int i20 = i19 + 1;
                    bArrFinishCurrentSegment[i19] = (byte) (((i_convert >> 6) & 63) | 128);
                    i11 = i_convert;
                    i12 = i17;
                    i10 = i20;
                }
                if (i10 >= length2) {
                    byte[] bArrFinishCurrentSegment5 = byteArrayBuilderFromInitial.finishCurrentSegment();
                    i10 = 0;
                    bArrFinishCurrentSegment = bArrFinishCurrentSegment5;
                    length2 = bArrFinishCurrentSegment5.length;
                }
                bArrFinishCurrentSegment[i10] = (byte) ((i11 & 63) | 128);
                i13 = i10 + 1;
            }
            i11 = cCharAt;
            i12 = i14;
            if (i10 >= length2) {
                byte[] bArrFinishCurrentSegment6 = byteArrayBuilderFromInitial.finishCurrentSegment();
                i10 = 0;
                bArrFinishCurrentSegment = bArrFinishCurrentSegment6;
                length2 = bArrFinishCurrentSegment6.length;
            }
            bArrFinishCurrentSegment[i10] = (byte) ((i11 & 63) | 128);
            i13 = i10 + 1;
        }
        return byteArrayBuilderFromInitial == null ? Arrays.copyOfRange(bArrFinishCurrentSegment, 0, i13) : byteArrayBuilderFromInitial.completeAndCoalesce(i13);
    }

    public char[] quoteAsString(String str) {
        char[] cArrFinishCurrentSegment = new char[120];
        int[] iArr = CharTypes.get7BitOutputEscapes();
        int length = iArr.length;
        int length2 = str.length();
        TextBuffer textBufferFromInitial = null;
        char[] cArr_qbuf = null;
        int i10 = 0;
        int i11 = 0;
        loop0: while (i10 < length2) {
            while (true) {
                char cCharAt = str.charAt(i10);
                if (cCharAt >= length || iArr[cCharAt] == 0) {
                    if (i11 >= cArrFinishCurrentSegment.length) {
                        if (textBufferFromInitial == null) {
                            textBufferFromInitial = TextBuffer.fromInitial(cArrFinishCurrentSegment);
                        }
                        cArrFinishCurrentSegment = textBufferFromInitial.finishCurrentSegment();
                        i11 = 0;
                    }
                    int i12 = i11 + 1;
                    cArrFinishCurrentSegment[i11] = cCharAt;
                    i10++;
                    if (i10 >= length2) {
                        i11 = i12;
                        break loop0;
                    }
                    i11 = i12;
                }
            }
            if (cArr_qbuf == null) {
                cArr_qbuf = _qbuf();
            }
            int i13 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            int i14 = iArr[cCharAt2];
            int i_appendNumeric = i14 < 0 ? _appendNumeric(cCharAt2, cArr_qbuf) : _appendNamed(i14, cArr_qbuf);
            int i15 = i11 + i_appendNumeric;
            if (i15 > cArrFinishCurrentSegment.length) {
                int length3 = cArrFinishCurrentSegment.length - i11;
                if (length3 > 0) {
                    System.arraycopy(cArr_qbuf, 0, cArrFinishCurrentSegment, i11, length3);
                }
                if (textBufferFromInitial == null) {
                    textBufferFromInitial = TextBuffer.fromInitial(cArrFinishCurrentSegment);
                }
                cArrFinishCurrentSegment = textBufferFromInitial.finishCurrentSegment();
                int i16 = i_appendNumeric - length3;
                System.arraycopy(cArr_qbuf, length3, cArrFinishCurrentSegment, 0, i16);
                i11 = i16;
            } else {
                System.arraycopy(cArr_qbuf, 0, cArrFinishCurrentSegment, i11, i_appendNumeric);
                i11 = i15;
            }
            i10 = i13;
        }
        if (textBufferFromInitial == null) {
            return Arrays.copyOfRange(cArrFinishCurrentSegment, 0, i11);
        }
        textBufferFromInitial.setCurrentLength(i11);
        return textBufferFromInitial.contentsAsArray();
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00f9  */
    public byte[] quoteAsUTF8(String str) {
        int i10;
        int i11;
        int i12;
        int length = str.length();
        byte[] currentSegment = new byte[200];
        ByteArrayBuilder byteArrayBuilderFromInitial = null;
        int i13 = 0;
        int i_appendByte = 0;
        loop0: while (i13 < length) {
            int[] iArr = CharTypes.get7BitOutputEscapes();
            while (true) {
                char cCharAt = str.charAt(i13);
                if (cCharAt > 127 || iArr[cCharAt] != 0) {
                    break;
                }
                if (i_appendByte >= currentSegment.length) {
                    if (byteArrayBuilderFromInitial == null) {
                        byteArrayBuilderFromInitial = ByteArrayBuilder.fromInitial(currentSegment, i_appendByte);
                    }
                    currentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                    i_appendByte = 0;
                }
                int i14 = i_appendByte + 1;
                currentSegment[i_appendByte] = (byte) cCharAt;
                i13++;
                if (i13 >= length) {
                    i_appendByte = i14;
                    break loop0;
                }
                i_appendByte = i14;
            }
            if (byteArrayBuilderFromInitial == null) {
                byteArrayBuilderFromInitial = ByteArrayBuilder.fromInitial(currentSegment, i_appendByte);
            }
            if (i_appendByte >= currentSegment.length) {
                currentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                i_appendByte = 0;
            }
            int i15 = i13 + 1;
            char cCharAt2 = str.charAt(i13);
            if (cCharAt2 <= 127) {
                i_appendByte = _appendByte(cCharAt2, iArr[cCharAt2], byteArrayBuilderFromInitial, i_appendByte);
                currentSegment = byteArrayBuilderFromInitial.getCurrentSegment();
                i13 = i15;
            } else {
                if (cCharAt2 <= 2047) {
                    i11 = i_appendByte + 1;
                    currentSegment[i_appendByte] = (byte) ((cCharAt2 >> 6) | 192);
                    i10 = (cCharAt2 & '?') | 128;
                } else {
                    if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                        int i16 = i_appendByte + 1;
                        currentSegment[i_appendByte] = (byte) ((cCharAt2 >> '\f') | Opcodes.SHL_INT_LIT8);
                        if (i16 >= currentSegment.length) {
                            currentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                            i16 = 0;
                        }
                        currentSegment[i16] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                        i10 = (cCharAt2 & '?') | 128;
                        i11 = i16 + 1;
                    } else {
                        if (cCharAt2 > 56319) {
                            _illegal(cCharAt2);
                        }
                        if (i15 >= length) {
                            _illegal(cCharAt2);
                        }
                        int i17 = i15 + 1;
                        int i_convert = _convert(cCharAt2, str.charAt(i15));
                        if (i_convert > 1114111) {
                            _illegal(i_convert);
                        }
                        int i18 = i_appendByte + 1;
                        currentSegment[i_appendByte] = (byte) ((i_convert >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                        if (i18 >= currentSegment.length) {
                            currentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                            i18 = 0;
                        }
                        int i19 = i18 + 1;
                        currentSegment[i18] = (byte) (((i_convert >> 12) & 63) | 128);
                        if (i19 >= currentSegment.length) {
                            currentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                            i19 = 0;
                        }
                        int i20 = i19 + 1;
                        currentSegment[i19] = (byte) (((i_convert >> 6) & 63) | 128);
                        i12 = (i_convert & 63) | 128;
                        i13 = i17;
                        i11 = i20;
                    }
                    if (i11 >= currentSegment.length) {
                        currentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                        i11 = 0;
                    }
                    currentSegment[i11] = (byte) i12;
                    i_appendByte = i11 + 1;
                }
                i12 = i10;
                i13 = i15;
                if (i11 >= currentSegment.length) {
                    currentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                    i11 = 0;
                }
                currentSegment[i11] = (byte) i12;
                i_appendByte = i11 + 1;
            }
        }
        return byteArrayBuilderFromInitial == null ? Arrays.copyOfRange(currentSegment, 0, i_appendByte) : byteArrayBuilderFromInitial.completeAndCoalesce(i_appendByte);
    }

    public char[] quoteAsString(CharSequence charSequence) {
        int i_appendNamed;
        if (charSequence instanceof String) {
            return quoteAsString((String) charSequence);
        }
        char[] cArrFinishCurrentSegment = new char[120];
        int[] iArr = CharTypes.get7BitOutputEscapes();
        int length = iArr.length;
        int length2 = charSequence.length();
        TextBuffer textBufferFromInitial = null;
        char[] cArr_qbuf = null;
        int i10 = 0;
        int i11 = 0;
        loop0: while (i10 < length2) {
            while (true) {
                char cCharAt = charSequence.charAt(i10);
                if (cCharAt >= length || iArr[cCharAt] == 0) {
                    if (i11 >= cArrFinishCurrentSegment.length) {
                        if (textBufferFromInitial == null) {
                            textBufferFromInitial = TextBuffer.fromInitial(cArrFinishCurrentSegment);
                        }
                        cArrFinishCurrentSegment = textBufferFromInitial.finishCurrentSegment();
                        i11 = 0;
                    }
                    int i12 = i11 + 1;
                    cArrFinishCurrentSegment[i11] = cCharAt;
                    i10++;
                    if (i10 >= length2) {
                        i11 = i12;
                        break loop0;
                    }
                    i11 = i12;
                }
            }
            if (cArr_qbuf == null) {
                cArr_qbuf = _qbuf();
            }
            int i13 = i10 + 1;
            char cCharAt2 = charSequence.charAt(i10);
            int i14 = iArr[cCharAt2];
            if (i14 < 0) {
                i_appendNamed = _appendNumeric(cCharAt2, cArr_qbuf);
            } else {
                i_appendNamed = _appendNamed(i14, cArr_qbuf);
            }
            int i15 = i11 + i_appendNamed;
            if (i15 > cArrFinishCurrentSegment.length) {
                int length3 = cArrFinishCurrentSegment.length - i11;
                if (length3 > 0) {
                    System.arraycopy(cArr_qbuf, 0, cArrFinishCurrentSegment, i11, length3);
                }
                if (textBufferFromInitial == null) {
                    textBufferFromInitial = TextBuffer.fromInitial(cArrFinishCurrentSegment);
                }
                cArrFinishCurrentSegment = textBufferFromInitial.finishCurrentSegment();
                int i16 = i_appendNamed - length3;
                System.arraycopy(cArr_qbuf, length3, cArrFinishCurrentSegment, 0, i16);
                i11 = i16;
            } else {
                System.arraycopy(cArr_qbuf, 0, cArrFinishCurrentSegment, i11, i_appendNamed);
                i11 = i15;
            }
            i10 = i13;
        }
        if (textBufferFromInitial == null) {
            return Arrays.copyOfRange(cArrFinishCurrentSegment, 0, i11);
        }
        textBufferFromInitial.setCurrentLength(i11);
        return textBufferFromInitial.contentsAsArray();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e9 A[SYNTHETIC] */
    public byte[] encodeAsUTF8(CharSequence charSequence) {
        int i10;
        int i11;
        int length = charSequence.length();
        int length2 = 200;
        byte[] bArrFinishCurrentSegment = new byte[200];
        ByteArrayBuilder byteArrayBuilderFromInitial = null;
        int i12 = 0;
        int i13 = 0;
        loop0: while (i12 < length) {
            int i14 = i12 + 1;
            char cCharAt = charSequence.charAt(i12);
            while (cCharAt <= 127) {
                if (i13 >= length2) {
                    if (byteArrayBuilderFromInitial == null) {
                        byteArrayBuilderFromInitial = ByteArrayBuilder.fromInitial(bArrFinishCurrentSegment, i13);
                    }
                    byte[] bArrFinishCurrentSegment2 = byteArrayBuilderFromInitial.finishCurrentSegment();
                    i13 = 0;
                    bArrFinishCurrentSegment = bArrFinishCurrentSegment2;
                    length2 = bArrFinishCurrentSegment2.length;
                }
                int i15 = i13 + 1;
                bArrFinishCurrentSegment[i13] = (byte) cCharAt;
                if (i14 >= length) {
                    i13 = i15;
                    break loop0;
                }
                char cCharAt2 = charSequence.charAt(i14);
                i14++;
                cCharAt = cCharAt2;
                i13 = i15;
            }
            if (byteArrayBuilderFromInitial == null) {
                byteArrayBuilderFromInitial = ByteArrayBuilder.fromInitial(bArrFinishCurrentSegment, i13);
            }
            if (i13 >= length2) {
                bArrFinishCurrentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                length2 = bArrFinishCurrentSegment.length;
                i13 = 0;
            }
            if (cCharAt < 2048) {
                i10 = i13 + 1;
                bArrFinishCurrentSegment[i13] = (byte) ((cCharAt >> 6) | 192);
            } else {
                if (cCharAt >= 55296 && cCharAt <= 57343) {
                    if (cCharAt > 56319) {
                        _illegal(cCharAt);
                    }
                    if (i14 >= length) {
                        _illegal(cCharAt);
                    }
                    int i16 = i14 + 1;
                    int i_convert = _convert(cCharAt, charSequence.charAt(i14));
                    if (i_convert > 1114111) {
                        _illegal(i_convert);
                    }
                    int i17 = i13 + 1;
                    bArrFinishCurrentSegment[i13] = (byte) ((i_convert >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                    if (i17 >= length2) {
                        bArrFinishCurrentSegment = byteArrayBuilderFromInitial.finishCurrentSegment();
                        length2 = bArrFinishCurrentSegment.length;
                        i17 = 0;
                    }
                    int i18 = i17 + 1;
                    bArrFinishCurrentSegment[i17] = (byte) (((i_convert >> 12) & 63) | 128);
                    if (i18 >= length2) {
                        byte[] bArrFinishCurrentSegment3 = byteArrayBuilderFromInitial.finishCurrentSegment();
                        i18 = 0;
                        bArrFinishCurrentSegment = bArrFinishCurrentSegment3;
                        length2 = bArrFinishCurrentSegment3.length;
                    }
                    int i19 = i18 + 1;
                    bArrFinishCurrentSegment[i18] = (byte) (((i_convert >> 6) & 63) | 128);
                    i11 = i_convert;
                    i12 = i16;
                    i10 = i19;
                } else {
                    int i20 = i13 + 1;
                    bArrFinishCurrentSegment[i13] = (byte) ((cCharAt >> '\f') | Opcodes.SHL_INT_LIT8);
                    if (i20 >= length2) {
                        byte[] bArrFinishCurrentSegment4 = byteArrayBuilderFromInitial.finishCurrentSegment();
                        i20 = 0;
                        bArrFinishCurrentSegment = bArrFinishCurrentSegment4;
                        length2 = bArrFinishCurrentSegment4.length;
                    }
                    bArrFinishCurrentSegment[i20] = (byte) (((cCharAt >> 6) & 63) | 128);
                    i10 = i20 + 1;
                }
                if (i10 >= length2) {
                    byte[] bArrFinishCurrentSegment5 = byteArrayBuilderFromInitial.finishCurrentSegment();
                    i10 = 0;
                    bArrFinishCurrentSegment = bArrFinishCurrentSegment5;
                    length2 = bArrFinishCurrentSegment5.length;
                }
                bArrFinishCurrentSegment[i10] = (byte) ((i11 & 63) | 128);
                i13 = i10 + 1;
            }
            i11 = cCharAt;
            i12 = i14;
            if (i10 >= length2) {
                byte[] bArrFinishCurrentSegment6 = byteArrayBuilderFromInitial.finishCurrentSegment();
                i10 = 0;
                bArrFinishCurrentSegment = bArrFinishCurrentSegment6;
                length2 = bArrFinishCurrentSegment6.length;
            }
            bArrFinishCurrentSegment[i10] = (byte) ((i11 & 63) | 128);
            i13 = i10 + 1;
        }
        if (byteArrayBuilderFromInitial == null) {
            return Arrays.copyOfRange(bArrFinishCurrentSegment, 0, i13);
        }
        return byteArrayBuilderFromInitial.completeAndCoalesce(i13);
    }

    public void quoteAsString(CharSequence charSequence, StringBuilder sb2) {
        int i_appendNamed;
        int[] iArr = CharTypes.get7BitOutputEscapes();
        int length = iArr.length;
        int length2 = charSequence.length();
        char[] cArr_qbuf = null;
        int i10 = 0;
        while (i10 < length2) {
            do {
                char cCharAt = charSequence.charAt(i10);
                if (cCharAt < length && iArr[cCharAt] != 0) {
                    if (cArr_qbuf == null) {
                        cArr_qbuf = _qbuf();
                    }
                    int i11 = i10 + 1;
                    char cCharAt2 = charSequence.charAt(i10);
                    int i12 = iArr[cCharAt2];
                    if (i12 < 0) {
                        i_appendNamed = _appendNumeric(cCharAt2, cArr_qbuf);
                    } else {
                        i_appendNamed = _appendNamed(i12, cArr_qbuf);
                    }
                    sb2.append(cArr_qbuf, 0, i_appendNamed);
                    i10 = i11;
                } else {
                    sb2.append(cCharAt);
                    i10++;
                }
            } while (i10 < length2);
            return;
        }
    }
}
