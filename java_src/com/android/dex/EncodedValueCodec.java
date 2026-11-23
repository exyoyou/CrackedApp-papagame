package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.dex.util.ByteOutput;

/* JADX INFO: loaded from: classes7.dex */
public final class EncodedValueCodec {
    private EncodedValueCodec() {
    }

    public static int readSignedInt(ByteInput byteInput, int i10) {
        int i11 = 0;
        for (int i12 = i10; i12 >= 0; i12--) {
            i11 = (i11 >>> 8) | ((byteInput.readByte() & 255) << 24);
        }
        return i11 >> ((3 - i10) * 8);
    }

    public static long readSignedLong(ByteInput byteInput, int i10) {
        long j10 = 0;
        for (int i11 = i10; i11 >= 0; i11--) {
            j10 = (j10 >>> 8) | ((((long) byteInput.readByte()) & 255) << 56);
        }
        return j10 >> ((7 - i10) * 8);
    }

    public static int readUnsignedInt(ByteInput byteInput, int i10, boolean z10) {
        int i11 = 0;
        if (z10) {
            while (i10 >= 0) {
                i11 = ((byteInput.readByte() & 255) << 24) | (i11 >>> 8);
                i10--;
            }
            return i11;
        }
        for (int i12 = i10; i12 >= 0; i12--) {
            i11 = (i11 >>> 8) | ((byteInput.readByte() & 255) << 24);
        }
        return i11 >>> ((3 - i10) * 8);
    }

    public static long readUnsignedLong(ByteInput byteInput, int i10, boolean z10) {
        long j10 = 0;
        if (z10) {
            while (i10 >= 0) {
                j10 = (j10 >>> 8) | ((((long) byteInput.readByte()) & 255) << 56);
                i10--;
            }
            return j10;
        }
        for (int i11 = i10; i11 >= 0; i11--) {
            j10 = (j10 >>> 8) | ((((long) byteInput.readByte()) & 255) << 56);
        }
        return j10 >>> ((7 - i10) * 8);
    }

    public static void writeRightZeroExtendedValue(ByteOutput byteOutput, int i10, long j10) {
        int iNumberOfTrailingZeros = 64 - Long.numberOfTrailingZeros(j10);
        if (iNumberOfTrailingZeros == 0) {
            iNumberOfTrailingZeros = 1;
        }
        int i11 = (iNumberOfTrailingZeros + 7) >> 3;
        long j11 = j10 >> (64 - (i11 * 8));
        byteOutput.writeByte(i10 | ((i11 - 1) << 5));
        while (i11 > 0) {
            byteOutput.writeByte((byte) j11);
            j11 >>= 8;
            i11--;
        }
    }

    public static void writeSignedIntegralValue(ByteOutput byteOutput, int i10, long j10) {
        int iNumberOfLeadingZeros = ((65 - Long.numberOfLeadingZeros((j10 >> 63) ^ j10)) + 7) >> 3;
        byteOutput.writeByte(i10 | ((iNumberOfLeadingZeros - 1) << 5));
        while (iNumberOfLeadingZeros > 0) {
            byteOutput.writeByte((byte) j10);
            j10 >>= 8;
            iNumberOfLeadingZeros--;
        }
    }

    public static void writeUnsignedIntegralValue(ByteOutput byteOutput, int i10, long j10) {
        int iNumberOfLeadingZeros = 64 - Long.numberOfLeadingZeros(j10);
        if (iNumberOfLeadingZeros == 0) {
            iNumberOfLeadingZeros = 1;
        }
        int i11 = (iNumberOfLeadingZeros + 7) >> 3;
        byteOutput.writeByte(i10 | ((i11 - 1) << 5));
        while (i11 > 0) {
            byteOutput.writeByte((byte) j10);
            j10 >>= 8;
            i11--;
        }
    }
}
