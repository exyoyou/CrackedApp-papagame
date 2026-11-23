package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends t {
    private boolean blV;
    private String blW;
    private String blX;

    public j(com.kwad.sdk.pngencrypt.k kVar) {
        super("iTXt", kVar);
        this.blV = false;
        this.blW = "";
        this.blX = "";
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        int[] iArr = new int[3];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = dVar.data;
            if (i10 >= bArr.length) {
                break;
            }
            if (bArr[i10] == 0) {
                iArr[i11] = i10;
                i11++;
                if (i11 == 1) {
                    i10 += 2;
                }
                if (i11 == 3) {
                    break;
                }
            }
            i10++;
        }
        if (i11 != 3) {
            new PngjException("Bad formed PngChunkITXT chunk");
        }
        this.key = b.c(dVar.data, 0, iArr[0]);
        int i12 = iArr[0] + 1;
        byte[] bArr2 = dVar.data;
        boolean z10 = bArr2[i12] != 0;
        this.blV = z10;
        int i13 = i12 + 1;
        if (z10 && bArr2[i13] != 0) {
            new PngjException("Bad formed PngChunkITXT chunk - bad compression method ");
        }
        this.blW = b.c(dVar.data, i13, iArr[1] - i13);
        byte[] bArr3 = dVar.data;
        int i14 = iArr[1];
        this.blX = b.d(bArr3, i14 + 1, (iArr[2] - i14) - 1);
        int i15 = iArr[2] + 1;
        if (this.blV) {
            byte[] bArr4 = dVar.data;
            this.bmp = b.n(b.b(bArr4, i15, bArr4.length - i15, false));
        } else {
            byte[] bArr5 = dVar.data;
            this.bmp = b.d(bArr5, i15, bArr5.length - i15);
        }
    }
}
