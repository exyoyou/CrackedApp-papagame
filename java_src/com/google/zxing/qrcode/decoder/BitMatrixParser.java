package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes5.dex */
final class BitMatrixParser {
    private final BitMatrix bitMatrix;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;

    BitMatrixParser(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.bitMatrix = bitMatrix;
    }

    private int copyBit(int i10, int i11, int i12) {
        return this.bitMatrix.get(i10, i11) ? (i12 << 1) | 1 : i12 << 1;
    }

    byte[] readCodewords() throws FormatException {
        FormatInformation formatInformation = readFormatInformation();
        Version version = readVersion();
        DataMask dataMaskForReference = DataMask.forReference(formatInformation.getDataMask());
        int height = this.bitMatrix.getHeight();
        dataMaskForReference.unmaskBitMatrix(this.bitMatrix, height);
        BitMatrix bitMatrixBuildFunctionPattern = version.buildFunctionPattern();
        byte[] bArr = new byte[version.getTotalCodewords()];
        int i10 = height - 1;
        boolean z10 = true;
        int i11 = i10;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i11 > 0) {
            if (i11 == 6) {
                i11--;
            }
            for (int i15 = 0; i15 < height; i15++) {
                int i16 = z10 ? i10 - i15 : i15;
                for (int i17 = 0; i17 < 2; i17++) {
                    int i18 = i11 - i17;
                    if (!bitMatrixBuildFunctionPattern.get(i18, i16)) {
                        i13++;
                        i14 <<= 1;
                        if (this.bitMatrix.get(i18, i16)) {
                            i14 |= 1;
                        }
                        if (i13 == 8) {
                            bArr[i12] = (byte) i14;
                            i12++;
                            i13 = 0;
                            i14 = 0;
                        }
                    }
                }
            }
            z10 = !z10;
            i11 -= 2;
        }
        if (i12 == version.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    FormatInformation readFormatInformation() throws FormatException {
        FormatInformation formatInformation = this.parsedFormatInfo;
        if (formatInformation != null) {
            return formatInformation;
        }
        int iCopyBit = 0;
        int iCopyBit2 = 0;
        for (int i10 = 0; i10 < 6; i10++) {
            iCopyBit2 = copyBit(i10, 8, iCopyBit2);
        }
        int iCopyBit3 = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, iCopyBit2)));
        for (int i11 = 5; i11 >= 0; i11--) {
            iCopyBit3 = copyBit(8, i11, iCopyBit3);
        }
        int height = this.bitMatrix.getHeight();
        int i12 = height - 7;
        for (int i13 = height - 1; i13 >= i12; i13--) {
            iCopyBit = copyBit(8, i13, iCopyBit);
        }
        for (int i14 = height - 8; i14 < height; i14++) {
            iCopyBit = copyBit(i14, 8, iCopyBit);
        }
        FormatInformation formatInformationDecodeFormatInformation = FormatInformation.decodeFormatInformation(iCopyBit3, iCopyBit);
        this.parsedFormatInfo = formatInformationDecodeFormatInformation;
        if (formatInformationDecodeFormatInformation != null) {
            return formatInformationDecodeFormatInformation;
        }
        throw FormatException.getFormatInstance();
    }

    Version readVersion() throws FormatException {
        Version version = this.parsedVersion;
        if (version != null) {
            return version;
        }
        int height = this.bitMatrix.getHeight();
        int i10 = (height - 17) >> 2;
        if (i10 <= 6) {
            return Version.getVersionForNumber(i10);
        }
        int i11 = height - 11;
        int iCopyBit = 0;
        int iCopyBit2 = 0;
        for (int i12 = 5; i12 >= 0; i12--) {
            for (int i13 = height - 9; i13 >= i11; i13--) {
                iCopyBit2 = copyBit(i13, i12, iCopyBit2);
            }
        }
        Version versionDecodeVersionInformation = Version.decodeVersionInformation(iCopyBit2);
        if (versionDecodeVersionInformation != null && versionDecodeVersionInformation.getDimensionForVersion() == height) {
            this.parsedVersion = versionDecodeVersionInformation;
            return versionDecodeVersionInformation;
        }
        for (int i14 = 5; i14 >= 0; i14--) {
            for (int i15 = height - 9; i15 >= i11; i15--) {
                iCopyBit = copyBit(i14, i15, iCopyBit);
            }
        }
        Version versionDecodeVersionInformation2 = Version.decodeVersionInformation(iCopyBit);
        if (versionDecodeVersionInformation2 == null || versionDecodeVersionInformation2.getDimensionForVersion() != height) {
            throw FormatException.getFormatInstance();
        }
        this.parsedVersion = versionDecodeVersionInformation2;
        return versionDecodeVersionInformation2;
    }
}
