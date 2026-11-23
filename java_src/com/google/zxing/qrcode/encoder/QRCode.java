package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;

/* JADX INFO: loaded from: classes5.dex */
public final class QRCode {
    public static final int NUM_MASK_PATTERNS = 8;
    private Mode mode = null;
    private ErrorCorrectionLevel ecLevel = null;
    private int version = -1;
    private int matrixWidth = -1;
    private int maskPattern = -1;
    private int numTotalBytes = -1;
    private int numDataBytes = -1;
    private int numECBytes = -1;
    private int numRSBlocks = -1;
    private ByteMatrix matrix = null;

    public static boolean isValidMaskPattern(int i10) {
        return i10 >= 0 && i10 < 8;
    }

    public int at(int i10, int i11) {
        byte b10 = this.matrix.get(i10, i11);
        if (b10 == 0 || b10 == 1) {
            return b10;
        }
        throw new IllegalStateException("Bad value");
    }

    public ErrorCorrectionLevel getECLevel() {
        return this.ecLevel;
    }

    public int getMaskPattern() {
        return this.maskPattern;
    }

    public ByteMatrix getMatrix() {
        return this.matrix;
    }

    public int getMatrixWidth() {
        return this.matrixWidth;
    }

    public Mode getMode() {
        return this.mode;
    }

    public int getNumDataBytes() {
        return this.numDataBytes;
    }

    public int getNumECBytes() {
        return this.numECBytes;
    }

    public int getNumRSBlocks() {
        return this.numRSBlocks;
    }

    public int getNumTotalBytes() {
        return this.numTotalBytes;
    }

    public int getVersion() {
        return this.version;
    }

    public boolean isValid() {
        int i10;
        ByteMatrix byteMatrix;
        return (this.mode == null || this.ecLevel == null || this.version == -1 || this.matrixWidth == -1 || (i10 = this.maskPattern) == -1 || this.numTotalBytes == -1 || this.numDataBytes == -1 || this.numECBytes == -1 || this.numRSBlocks == -1 || !isValidMaskPattern(i10) || this.numTotalBytes != this.numDataBytes + this.numECBytes || (byteMatrix = this.matrix) == null || this.matrixWidth != byteMatrix.getWidth() || this.matrix.getWidth() != this.matrix.getHeight()) ? false : true;
    }

    public void setECLevel(ErrorCorrectionLevel errorCorrectionLevel) {
        this.ecLevel = errorCorrectionLevel;
    }

    public void setMaskPattern(int i10) {
        this.maskPattern = i10;
    }

    public void setMatrix(ByteMatrix byteMatrix) {
        this.matrix = byteMatrix;
    }

    public void setMatrixWidth(int i10) {
        this.matrixWidth = i10;
    }

    public void setMode(Mode mode) {
        this.mode = mode;
    }

    public void setNumDataBytes(int i10) {
        this.numDataBytes = i10;
    }

    public void setNumECBytes(int i10) {
        this.numECBytes = i10;
    }

    public void setNumRSBlocks(int i10) {
        this.numRSBlocks = i10;
    }

    public void setNumTotalBytes(int i10) {
        this.numTotalBytes = i10;
    }

    public void setVersion(int i10) {
        this.version = i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(200);
        sb2.append("<<\n");
        sb2.append(" mode: ");
        sb2.append(this.mode);
        sb2.append("\n ecLevel: ");
        sb2.append(this.ecLevel);
        sb2.append("\n version: ");
        sb2.append(this.version);
        sb2.append("\n matrixWidth: ");
        sb2.append(this.matrixWidth);
        sb2.append("\n maskPattern: ");
        sb2.append(this.maskPattern);
        sb2.append("\n numTotalBytes: ");
        sb2.append(this.numTotalBytes);
        sb2.append("\n numDataBytes: ");
        sb2.append(this.numDataBytes);
        sb2.append("\n numECBytes: ");
        sb2.append(this.numECBytes);
        sb2.append("\n numRSBlocks: ");
        sb2.append(this.numRSBlocks);
        if (this.matrix == null) {
            sb2.append("\n matrix: null\n");
        } else {
            sb2.append("\n matrix:\n");
            sb2.append(this.matrix.toString());
        }
        sb2.append(">>\n");
        return sb2.toString();
    }
}
