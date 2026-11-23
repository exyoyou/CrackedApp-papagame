package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends k {
    private String bmd;
    private int bme;
    private int[] bmf;

    public n(com.kwad.sdk.pngencrypt.k kVar) {
        super("sPLT", kVar);
    }

    public final String Tz() {
        return this.bmd;
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        byte[] bArr;
        int i10;
        int iE;
        int iE2;
        int iE3;
        int iE4;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            bArr = dVar.data;
            if (i12 >= bArr.length) {
                i12 = -1;
                break;
            } else if (bArr[i12] == 0) {
                break;
            } else {
                i12++;
            }
        }
        if (i12 <= 0 || i12 > bArr.length - 2) {
            throw new PngjException("bad sPLT chunk: no separator found");
        }
        this.bmd = b.c(bArr, 0, i12);
        int iE5 = com.kwad.sdk.pngencrypt.n.e(dVar.data, i12 + 1);
        this.bme = iE5;
        int i13 = i12 + 2;
        int length = (dVar.data.length - i13) / (iE5 == 8 ? 6 : 10);
        this.bmf = new int[length * 5];
        int i14 = i13;
        int i15 = 0;
        while (i11 < length) {
            if (this.bme == 8) {
                int i16 = i14 + 1;
                iE = com.kwad.sdk.pngencrypt.n.e(dVar.data, i14);
                int i17 = i16 + 1;
                iE2 = com.kwad.sdk.pngencrypt.n.e(dVar.data, i16);
                int i18 = i17 + 1;
                iE3 = com.kwad.sdk.pngencrypt.n.e(dVar.data, i17);
                i10 = i18 + 1;
                iE4 = com.kwad.sdk.pngencrypt.n.e(dVar.data, i18);
            } else {
                int iF = com.kwad.sdk.pngencrypt.n.f(dVar.data, i14);
                int i19 = i14 + 2;
                int iF2 = com.kwad.sdk.pngencrypt.n.f(dVar.data, i19);
                int i20 = i19 + 2;
                int iF3 = com.kwad.sdk.pngencrypt.n.f(dVar.data, i20);
                int i21 = i20 + 2;
                int iF4 = com.kwad.sdk.pngencrypt.n.f(dVar.data, i21);
                i10 = i21 + 2;
                iE = iF;
                iE2 = iF2;
                iE3 = iF3;
                iE4 = iF4;
            }
            int iF5 = com.kwad.sdk.pngencrypt.n.f(dVar.data, i10);
            int[] iArr = this.bmf;
            int i22 = i15 + 1;
            iArr[i15] = iE;
            int i23 = i22 + 1;
            iArr[i22] = iE2;
            int i24 = i23 + 1;
            iArr[i23] = iE3;
            int i25 = i24 + 1;
            iArr[i24] = iE4;
            iArr[i25] = iF5;
            i11++;
            i15 = i25 + 1;
            i14 = i10 + 2;
        }
    }
}
