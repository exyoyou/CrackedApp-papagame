package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;

/* JADX INFO: loaded from: classes2.dex */
public final class m extends p {
    private int bmb;
    private int[] bmc;

    public m(com.kwad.sdk.pngencrypt.k kVar) {
        super("PLTE", kVar);
        this.bmb = 0;
    }

    private void c(int i10, int i11, int i12, int i13) {
        this.bmc[i10] = (i11 << 16) | (i12 << 8) | i13;
    }

    private void fC(int i10) {
        this.bmb = i10;
        if (i10 <= 0 || i10 > 256) {
            throw new PngjException("invalid pallette - nentries=" + this.bmb);
        }
        int[] iArr = this.bmc;
        if (iArr == null || iArr.length != i10) {
            this.bmc = new int[i10];
        }
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        fC(dVar.len / 3);
        int i10 = 0;
        int i11 = 0;
        while (i10 < this.bmb) {
            byte[] bArr = dVar.data;
            int i12 = i11 + 1;
            int i13 = i12 + 1;
            c(i10, bArr[i11] & 255, bArr[i12] & 255, bArr[i13] & 255);
            i10++;
            i11 = i13 + 1;
        }
    }
}
