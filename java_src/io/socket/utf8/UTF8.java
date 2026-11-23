package io.socket.utf8;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class UTF8 {
    private static final String INVALID_CONTINUATION_BYTE = "Invalid continuation byte";
    private static int[] byteArray;
    private static int byteCount;
    private static int byteIndex;

    public static class Options {
        public boolean strict = true;
    }

    private UTF8() {
    }

    private static boolean checkScalarValue(int i10, boolean z10) throws UTF8Exception {
        if (i10 < 55296 || i10 > 57343) {
            return true;
        }
        if (!z10) {
            return false;
        }
        throw new UTF8Exception("Lone surrogate U+" + Integer.toHexString(i10).toUpperCase() + " is not a scalar value");
    }

    private static char[] createByte(int i10, int i11) {
        return Character.toChars(((i10 >> i11) & 63) | 128);
    }

    public static String decode(String str) throws UTF8Exception {
        return decode(str, new Options());
    }

    private static int decodeSymbol(boolean z10) throws UTF8Exception {
        int i10 = byteIndex;
        int i11 = byteCount;
        if (i10 > i11) {
            throw new UTF8Exception("Invalid byte index");
        }
        if (i10 == i11) {
            return -1;
        }
        int i12 = byteArray[i10] & 255;
        byteIndex = i10 + 1;
        if ((i12 & 128) == 0) {
            return i12;
        }
        if ((i12 & Opcodes.SHL_INT_LIT8) == 192) {
            int continuationByte = readContinuationByte() | ((i12 & 31) << 6);
            if (continuationByte >= 128) {
                return continuationByte;
            }
            throw new UTF8Exception(INVALID_CONTINUATION_BYTE);
        }
        if ((i12 & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) == 224) {
            int continuationByte2 = (readContinuationByte() << 6) | ((i12 & 15) << 12) | readContinuationByte();
            if (continuationByte2 >= 2048) {
                return checkScalarValue(continuationByte2, z10) ? continuationByte2 : Utf8.REPLACEMENT_CODE_POINT;
            }
            throw new UTF8Exception(INVALID_CONTINUATION_BYTE);
        }
        if ((i12 & 248) == 240) {
            int continuationByte3 = (readContinuationByte() << 12) | ((i12 & 15) << 18) | (readContinuationByte() << 6) | readContinuationByte();
            if (continuationByte3 >= 65536 && continuationByte3 <= 1114111) {
                return continuationByte3;
            }
        }
        throw new UTF8Exception(INVALID_CONTINUATION_BYTE);
    }

    public static String encode(String str) throws UTF8Exception {
        return encode(str, new Options());
    }

    private static String encodeCodePoint(int i10, boolean z10) throws UTF8Exception {
        StringBuilder sb2 = new StringBuilder();
        if ((i10 & (-128)) == 0) {
            sb2.append(Character.toChars(i10));
            return sb2.toString();
        }
        if ((i10 & (-2048)) == 0) {
            sb2.append(Character.toChars(((i10 >> 6) & 31) | 192));
        } else if (((-65536) & i10) == 0) {
            if (!checkScalarValue(i10, z10)) {
                i10 = Utf8.REPLACEMENT_CODE_POINT;
            }
            sb2.append(Character.toChars(((i10 >> 12) & 15) | Opcodes.SHL_INT_LIT8));
            sb2.append(createByte(i10, 6));
        } else if (((-2097152) & i10) == 0) {
            sb2.append(Character.toChars(((i10 >> 18) & 7) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA));
            sb2.append(createByte(i10, 12));
            sb2.append(createByte(i10, 6));
        }
        sb2.append(Character.toChars((i10 & 63) | 128));
        return sb2.toString();
    }

    private static int[] listToArray(List<Integer> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = list.get(i10).intValue();
        }
        return iArr;
    }

    private static int readContinuationByte() throws UTF8Exception {
        int i10 = byteIndex;
        if (i10 >= byteCount) {
            throw new UTF8Exception("Invalid byte index");
        }
        int i11 = byteArray[i10] & 255;
        byteIndex = i10 + 1;
        if ((i11 & 192) == 128) {
            return i11 & 63;
        }
        throw new UTF8Exception(INVALID_CONTINUATION_BYTE);
    }

    private static int[] ucs2decode(String str) {
        int length = str.length();
        int iCharCount = 0;
        int[] iArr = new int[str.codePointCount(0, length)];
        int i10 = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            iArr[i10] = iCodePointAt;
            iCharCount += Character.charCount(iCodePointAt);
            i10++;
        }
        return iArr;
    }

    private static String ucs2encode(int[] iArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 : iArr) {
            sb2.appendCodePoint(i10);
        }
        return sb2.toString();
    }

    public static String decode(String str, Options options) throws UTF8Exception {
        boolean z10 = options.strict;
        int[] iArrUcs2decode = ucs2decode(str);
        byteArray = iArrUcs2decode;
        byteCount = iArrUcs2decode.length;
        byteIndex = 0;
        ArrayList arrayList = new ArrayList();
        while (true) {
            int iDecodeSymbol = decodeSymbol(z10);
            if (iDecodeSymbol == -1) {
                return ucs2encode(listToArray(arrayList));
            }
            arrayList.add(Integer.valueOf(iDecodeSymbol));
        }
    }

    public static String encode(String str, Options options) throws UTF8Exception {
        boolean z10 = options.strict;
        int[] iArrUcs2decode = ucs2decode(str);
        int length = iArrUcs2decode.length;
        StringBuilder sb2 = new StringBuilder();
        int i10 = -1;
        while (true) {
            i10++;
            if (i10 >= length) {
                return sb2.toString();
            }
            sb2.append(encodeCodePoint(iArrUcs2decode[i10], z10));
        }
    }
}
