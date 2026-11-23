package com.kwad.sdk.pngencrypt;

/* JADX INFO: loaded from: classes2.dex */
public final class k {
    public final int bkO;
    public final int bkP;
    public final boolean bkQ;
    public final boolean bkR;
    public final boolean bkS;
    public final boolean bkT;
    public final int bkU;
    public final int bkV;
    public final int bkW;
    public final int bkX;
    public final int bkY;
    public final int bkv;
    public final int bkw;
    private long bkZ = -1;
    private long bla = -1;

    public k(int i10, int i11, int i12, boolean z10, boolean z11, boolean z12) {
        int i13;
        this.bkw = i10;
        this.bkv = i11;
        this.bkQ = z10;
        this.bkS = z12;
        this.bkR = z11;
        if (z11 && z12) {
            throw new PngjException("palette and greyscale are mutually exclusive");
        }
        if (z11 || z12) {
            i13 = z10 ? 2 : 1;
        } else {
            i13 = z10 ? 4 : 3;
        }
        this.bkP = i13;
        this.bkO = i12;
        boolean z13 = i12 < 8;
        this.bkT = z13;
        int i14 = i13 * i12;
        this.bkU = i14;
        this.bkV = (i14 + 7) / 8;
        int i15 = ((i14 * i10) + 7) / 8;
        this.bkW = i15;
        int i16 = i13 * i10;
        this.bkX = i16;
        this.bkY = z13 ? i15 : i16;
        if (i12 == 1 || i12 == 2 || i12 == 4) {
            if (!z12 && !z11) {
                throw new PngjException("only indexed or grayscale can have bitdepth=" + i12);
            }
        } else if (i12 != 8) {
            if (i12 != 16) {
                throw new PngjException("invalid bitdepth=" + i12);
            }
            if (z12) {
                throw new PngjException("indexed can't have bitdepth=" + i12);
            }
        }
        if (i10 <= 0 || i10 > 16777216) {
            throw new PngjException("invalid cols=" + i10 + " ???");
        }
        if (i11 > 0 && i11 <= 16777216) {
            if (i16 <= 0) {
                throw new PngjException("invalid image parameters (overflow?)");
            }
        } else {
            throw new PngjException("invalid rows=" + i11 + " ???");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.bkQ == kVar.bkQ && this.bkO == kVar.bkO && this.bkw == kVar.bkw && this.bkR == kVar.bkR && this.bkS == kVar.bkS && this.bkv == kVar.bkv;
    }

    public final int hashCode() {
        return (((((((((((this.bkQ ? 1231 : 1237) + 31) * 31) + this.bkO) * 31) + this.bkw) * 31) + (this.bkR ? 1231 : 1237)) * 31) + (this.bkS ? 1231 : 1237)) * 31) + this.bkv;
    }

    public final String toString() {
        return "ImageInfo [cols=" + this.bkw + ", rows=" + this.bkv + ", bitDepth=" + this.bkO + ", channels=" + this.bkP + ", alpha=" + this.bkQ + ", greyscale=" + this.bkR + ", indexed=" + this.bkS + "]";
    }
}
