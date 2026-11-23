package com.google.zxing.oned;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Code93Reader extends OneDReader {
    private static final int ASTERISK_ENCODING;
    private static final int[] CHARACTER_ENCODINGS;
    private static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();

    static {
        int[] iArr = {MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 322, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 290, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME, 274, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME, TypedValues.CycleType.TYPE_WAVE_OFFSET, TypedValues.CycleType.TYPE_EASING, TTAdConstant.DEEPLINK_FALL_BACK_CODE, 404, 402, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MIN_RECEIVED_BEFORE_ACK_DECIMATION, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_MTU, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY, 308, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_PTS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUTO_REOPEN, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_PROBESIZE, 300, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, 436, 434, 428, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 406, TTAdConstant.IMAGE_LIST_SIZE_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DEMUX_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SPEEDX_DROP, 310, 314, 302, 468, 466, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_PARAM_SEND_OUTLET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DECODE_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_DECODE_MS_GAPS, 430, MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD, 474, 470, 306, TcMouseManager.MOUSE_STARY};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[47];
    }

    private static void checkChecksums(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        checkOneChecksum(charSequence, length - 2, 20);
        checkOneChecksum(charSequence, length - 1, 15);
    }

    private static void checkOneChecksum(CharSequence charSequence, int i10, int i11) throws ChecksumException {
        int iIndexOf = 0;
        int i12 = 1;
        for (int i13 = i10 - 1; i13 >= 0; i13--) {
            iIndexOf += ALPHABET_STRING.indexOf(charSequence.charAt(i13)) * i12;
            i12++;
            if (i12 > i11) {
                i12 = 1;
            }
        }
        if (charSequence.charAt(i10) != ALPHABET[iIndexOf % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i10;
        char c10;
        int length = charSequence.length();
        StringBuilder sb2 = new StringBuilder(length);
        int i11 = 0;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt >= 'a' && cCharAt <= 'd') {
                i11++;
                char cCharAt2 = charSequence.charAt(i11);
                switch (cCharAt) {
                    case 'a':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        i10 = cCharAt2 - '@';
                        c10 = (char) i10;
                        sb2.append(c10);
                        break;
                    case 'b':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                            i10 = cCharAt2 - '&';
                        } else {
                            if (cCharAt2 < 'F' || cCharAt2 > 'W') {
                                throw FormatException.getFormatInstance();
                            }
                            i10 = cCharAt2 - 11;
                        }
                        c10 = (char) i10;
                        sb2.append(c10);
                        break;
                    case 'c':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                            i10 = cCharAt2 - ' ';
                            c10 = (char) i10;
                        } else {
                            if (cCharAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            c10 = ':';
                        }
                        sb2.append(c10);
                        break;
                    case 'd':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        i10 = cCharAt2 + ' ';
                        c10 = (char) i10;
                        sb2.append(c10);
                        break;
                    default:
                        c10 = 0;
                        sb2.append(c10);
                        break;
                }
            } else {
                sb2.append(cCharAt);
            }
            i11++;
        }
        return sb2.toString();
    }

    private static int[] findAsteriskPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int[] iArr = new int[6];
        int i10 = nextSet;
        boolean z10 = false;
        int i11 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) ^ z10) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                if (i11 != 5) {
                    i11++;
                } else {
                    if (toPattern(iArr) == ASTERISK_ENCODING) {
                        return new int[]{i10, nextSet};
                    }
                    i10 += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, 4);
                    iArr[4] = 0;
                    iArr[5] = 0;
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

    private static int toPattern(int[] iArr) {
        int length = iArr.length;
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += i11;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = ((iArr[i13] << 8) * 9) / i10;
            int i15 = i14 >> 8;
            if ((i14 & 255) > 127) {
                i15++;
            }
            if (i15 < 1 || i15 > 4) {
                return -1;
            }
            if ((i13 & 1) == 0) {
                for (int i16 = 0; i16 < i15; i16++) {
                    i12 = (i12 << 1) | 1;
                }
            } else {
                i12 <<= i15;
            }
        }
        return i12;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i10, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] iArrFindAsteriskPattern = findAsteriskPattern(bitArray);
        int nextSet = bitArray.getNextSet(iArrFindAsteriskPattern[1]);
        int size = bitArray.getSize();
        StringBuilder sb2 = new StringBuilder(20);
        int[] iArr = new int[6];
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int pattern = toPattern(iArr);
            if (pattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cPatternToChar = patternToChar(pattern);
            sb2.append(cPatternToChar);
            int i11 = nextSet;
            for (int i12 = 0; i12 < 6; i12++) {
                i11 += iArr[i12];
            }
            int nextSet2 = bitArray.getNextSet(i11);
            if (cPatternToChar == '*') {
                sb2.deleteCharAt(sb2.length() - 1);
                if (nextSet2 == size || !bitArray.get(nextSet2)) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sb2.length() < 2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                checkChecksums(sb2);
                sb2.setLength(sb2.length() - 2);
                float f10 = i10;
                return new Result(decodeExtended(sb2), null, new ResultPoint[]{new ResultPoint((iArrFindAsteriskPattern[1] + iArrFindAsteriskPattern[0]) / 2.0f, f10), new ResultPoint((nextSet2 + nextSet) / 2.0f, f10)}, BarcodeFormat.CODE_93);
            }
            nextSet = nextSet2;
        }
    }
}
