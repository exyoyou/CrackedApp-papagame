package com.kwad.sdk.pngencrypt.chunk;

import com.kwad.sdk.pngencrypt.PngjException;

/* JADX INFO: loaded from: classes2.dex */
public final class v extends t {
    public v(com.kwad.sdk.pngencrypt.k kVar) {
        super("zTXt", kVar);
    }

    @Override // com.kwad.sdk.pngencrypt.chunk.PngChunk
    public final void a(d dVar) {
        byte[] bArr;
        int i10 = 0;
        while (true) {
            bArr = dVar.data;
            if (i10 >= bArr.length) {
                i10 = -1;
                break;
            } else if (bArr[i10] == 0) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 < 0 || i10 > bArr.length - 2) {
            new PngjException("bad zTXt chunk: no separator found");
        }
        this.key = b.c(dVar.data, 0, i10);
        if (dVar.data[i10 + 1] != 0) {
            new PngjException("bad zTXt chunk: unknown compression method");
        }
        byte[] bArr2 = dVar.data;
        this.bmp = b.m(b.b(bArr2, i10 + 2, (bArr2.length - i10) - 2, false));
    }
}
