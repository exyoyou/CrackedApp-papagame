package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.dx.io.Opcodes;
import java.io.UTFDataFormatException;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes7.dex */
public final class Mutf8 {
    private Mutf8() {
    }

    private static long countBytes(String str, boolean z10) throws UTFDataFormatException {
        int length = str.length();
        long j10 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            j10 += (cCharAt == 0 || cCharAt > 127) ? cCharAt <= 2047 ? 2L : 3L : 1L;
            if (z10 && j10 > WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                throw new UTFDataFormatException("String more than 65535 UTF bytes long");
            }
        }
        return j10;
    }

    public static String decode(ByteInput byteInput, char[] cArr) throws UTFDataFormatException {
        int i10;
        int i11 = 0;
        while (true) {
            char c10 = (char) (byteInput.readByte() & 255);
            if (c10 == 0) {
                return new String(cArr, 0, i11);
            }
            cArr[i11] = c10;
            if (c10 < 128) {
                i11++;
            } else {
                if ((c10 & 224) == 192) {
                    int i12 = byteInput.readByte() & 255;
                    if ((i12 & 192) != 128) {
                        throw new UTFDataFormatException("bad second byte");
                    }
                    i10 = i11 + 1;
                    cArr[i11] = (char) (((c10 & 31) << 6) | (i12 & 63));
                } else {
                    if ((c10 & 240) != 224) {
                        throw new UTFDataFormatException("bad byte");
                    }
                    int i13 = byteInput.readByte() & 255;
                    int i14 = byteInput.readByte() & 255;
                    if ((i13 & 192) != 128 || (i14 & 192) != 128) {
                        throw new UTFDataFormatException("bad second or third byte");
                    }
                    i10 = i11 + 1;
                    cArr[i11] = (char) (((c10 & 15) << 12) | ((i13 & 63) << 6) | (i14 & 63));
                }
                i11 = i10;
            }
        }
    }

    public static void encode(byte[] bArr, int i10, String str) {
        int i11;
        int length = str.length();
        for (int i12 = 0; i12 < length; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == 0 || cCharAt > 127) {
                if (cCharAt <= 2047) {
                    int i13 = i10 + 1;
                    bArr[i10] = (byte) (((cCharAt >> 6) & 31) | 192);
                    i10 = i13 + 1;
                    bArr[i13] = (byte) ((cCharAt & '?') | 128);
                } else {
                    int i14 = i10 + 1;
                    bArr[i10] = (byte) (((cCharAt >> '\f') & 15) | Opcodes.SHL_INT_LIT8);
                    int i15 = i14 + 1;
                    bArr[i14] = (byte) (((cCharAt >> 6) & 63) | 128);
                    i11 = i15 + 1;
                    bArr[i15] = (byte) ((cCharAt & '?') | 128);
                }
            } else {
                i11 = i10 + 1;
                bArr[i10] = (byte) cCharAt;
            }
            i10 = i11;
        }
    }

    public static byte[] encode(String str) throws UTFDataFormatException {
        byte[] bArr = new byte[(int) countBytes(str, true)];
        encode(bArr, 0, str);
        return bArr;
    }
}
