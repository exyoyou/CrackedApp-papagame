package com.google.zxing.qrcode.decoder;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

/* JADX INFO: loaded from: classes5.dex */
final class FormatInformation {
    private final byte dataMask;
    private final ErrorCorrectionLevel errorCorrectionLevel;
    private static final int FORMAT_INFO_MASK_QR = 21522;
    private static final int[][] FORMAT_INFO_DECODE_LOOKUP = {new int[]{FORMAT_INFO_MASK_QR, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{AVMDLDataLoader.KeyIsCacheDirListsStr, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};
    private static final int[] BITS_SET_IN_HALF_BYTE = {0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4};

    private FormatInformation(int i10) {
        this.errorCorrectionLevel = ErrorCorrectionLevel.forBits((i10 >> 3) & 3);
        this.dataMask = (byte) (i10 & 7);
    }

    static FormatInformation decodeFormatInformation(int i10, int i11) {
        FormatInformation formatInformationDoDecodeFormatInformation = doDecodeFormatInformation(i10, i11);
        return formatInformationDoDecodeFormatInformation != null ? formatInformationDoDecodeFormatInformation : doDecodeFormatInformation(i10 ^ FORMAT_INFO_MASK_QR, i11 ^ FORMAT_INFO_MASK_QR);
    }

    private static FormatInformation doDecodeFormatInformation(int i10, int i11) {
        int iNumBitsDiffering;
        int i12 = Integer.MAX_VALUE;
        int i13 = 0;
        for (int[] iArr : FORMAT_INFO_DECODE_LOOKUP) {
            int i14 = iArr[0];
            if (i14 == i10 || i14 == i11) {
                return new FormatInformation(iArr[1]);
            }
            int iNumBitsDiffering2 = numBitsDiffering(i10, i14);
            if (iNumBitsDiffering2 < i12) {
                i13 = iArr[1];
                i12 = iNumBitsDiffering2;
            }
            if (i10 != i11 && (iNumBitsDiffering = numBitsDiffering(i11, i14)) < i12) {
                i13 = iArr[1];
                i12 = iNumBitsDiffering;
            }
        }
        if (i12 <= 3) {
            return new FormatInformation(i13);
        }
        return null;
    }

    static int numBitsDiffering(int i10, int i11) {
        int i12 = i10 ^ i11;
        int[] iArr = BITS_SET_IN_HALF_BYTE;
        return iArr[i12 & 15] + iArr[(i12 >>> 4) & 15] + iArr[(i12 >>> 8) & 15] + iArr[(i12 >>> 12) & 15] + iArr[(i12 >>> 16) & 15] + iArr[(i12 >>> 20) & 15] + iArr[(i12 >>> 24) & 15] + iArr[(i12 >>> 28) & 15];
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FormatInformation)) {
            return false;
        }
        FormatInformation formatInformation = (FormatInformation) obj;
        return this.errorCorrectionLevel == formatInformation.errorCorrectionLevel && this.dataMask == formatInformation.dataMask;
    }

    byte getDataMask() {
        return this.dataMask;
    }

    ErrorCorrectionLevel getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public int hashCode() {
        return (this.errorCorrectionLevel.ordinal() << 3) | this.dataMask;
    }
}
