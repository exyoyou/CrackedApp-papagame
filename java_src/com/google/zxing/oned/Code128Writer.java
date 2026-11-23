package com.google.zxing.oned;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Code128Writer extends UPCEANWriter {
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    private static boolean isDigits(CharSequence charSequence, int i10, int i11) {
        int i12 = i11 + i10;
        int length = charSequence.length();
        while (i10 < i12 && i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt < '0' || cCharAt > '9') {
                if (cCharAt != 241) {
                    return false;
                }
                i12++;
            }
            i10++;
        }
        return i12 <= length;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_128) {
            return super.encode(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got " + barcodeFormat);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        int length = str.length();
        if (length >= 1 && length <= 80) {
            int iAppendPattern = 0;
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                if (cCharAt < ' ' || cCharAt > '~') {
                    switch (cCharAt) {
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE /* 241 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE /* 242 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE /* 243 */:
                        case 244:
                            break;
                        default:
                            throw new IllegalArgumentException("Bad character in input: " + cCharAt);
                    }
                }
            }
            ArrayList<int[]> arrayList = new ArrayList();
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 1;
            while (i11 < length) {
                int iCharAt = 100;
                int i15 = isDigits(str, i11, i13 == 99 ? 2 : 4) ? 99 : 100;
                if (i15 == i13) {
                    if (i13 == 100) {
                        iCharAt = str.charAt(i11) - ' ';
                    } else {
                        switch (str.charAt(i11)) {
                            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE /* 241 */:
                                i11++;
                                iCharAt = 102;
                                break;
                            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE /* 242 */:
                                i11++;
                                iCharAt = 97;
                                break;
                            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE /* 243 */:
                                i11++;
                                iCharAt = 96;
                                break;
                            case 244:
                                break;
                            default:
                                int i16 = i11 + 2;
                                iCharAt = Integer.parseInt(str.substring(i11, i16));
                                i11 = i16;
                                break;
                        }
                    }
                    i11++;
                } else {
                    iCharAt = i13 == 0 ? i15 == 100 ? 104 : 105 : i15;
                    i13 = i15;
                }
                arrayList.add(Code128Reader.CODE_PATTERNS[iCharAt]);
                i12 += iCharAt * i14;
                if (i11 != 0) {
                    i14++;
                }
            }
            int[][] iArr = Code128Reader.CODE_PATTERNS;
            arrayList.add(iArr[i12 % 103]);
            arrayList.add(iArr[106]);
            int i17 = 0;
            for (int[] iArr2 : arrayList) {
                for (int i18 : iArr2) {
                    i17 += i18;
                }
            }
            byte[] bArr = new byte[i17];
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                iAppendPattern += OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern, (int[]) it2.next(), 1);
            }
            return bArr;
        }
        throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + length);
    }
}
