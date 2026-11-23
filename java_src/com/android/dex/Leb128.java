package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.dex.util.ByteOutput;

/* JADX INFO: loaded from: classes7.dex */
public final class Leb128 {
    private Leb128() {
    }

    public static int readSignedLeb128(ByteInput byteInput) {
        int i10;
        int i11 = 0;
        int i12 = 0;
        int i13 = -1;
        do {
            int i14 = byteInput.readByte() & 255;
            i11 |= (i14 & 127) << (i12 * 7);
            i13 <<= 7;
            i12++;
            i10 = i14 & 128;
            if (i10 != 128) {
                break;
            }
        } while (i12 < 5);
        if (i10 != 128) {
            return ((i13 >> 1) & i11) != 0 ? i11 | i13 : i11;
        }
        throw new DexException("invalid LEB128 sequence");
    }

    public static int readUnsignedLeb128(ByteInput byteInput) {
        int i10;
        int i11 = 0;
        int i12 = 0;
        do {
            int i13 = byteInput.readByte() & 255;
            i11 |= (i13 & 127) << (i12 * 7);
            i12++;
            i10 = i13 & 128;
            if (i10 != 128) {
                break;
            }
        } while (i12 < 5);
        if (i10 != 128) {
            return i11;
        }
        throw new DexException("invalid LEB128 sequence");
    }

    public static int unsignedLeb128Size(int i10) {
        int i11 = i10 >> 7;
        int i12 = 0;
        while (i11 != 0) {
            i11 >>= 7;
            i12++;
        }
        return i12 + 1;
    }

    public static void writeSignedLeb128(ByteOutput byteOutput, int i10) {
        int i11 = i10 >> 7;
        int i12 = (Integer.MIN_VALUE & i10) == 0 ? 0 : -1;
        boolean z10 = true;
        while (true) {
            int i13 = i11;
            int i14 = i10;
            i10 = i13;
            if (!z10) {
                return;
            }
            z10 = (i10 == i12 && (i10 & 1) == ((i14 >> 6) & 1)) ? false : true;
            byteOutput.writeByte((byte) ((i14 & 127) | (z10 ? 128 : 0)));
            i11 = i10 >> 7;
        }
    }

    public static void writeUnsignedLeb128(ByteOutput byteOutput, int i10) {
        while (true) {
            int i11 = i10;
            i10 >>>= 7;
            if (i10 == 0) {
                byteOutput.writeByte((byte) (i11 & 127));
                return;
            }
            byteOutput.writeByte((byte) ((i11 & 127) | 128));
        }
    }
}
