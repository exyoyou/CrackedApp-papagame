package com.kwad.sdk.pngencrypt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends ChunkReader {
    protected final DeflatedChunksSet bkc;
    protected boolean bkd;
    protected boolean bke;
    protected byte[] bkf;
    protected int bkg;

    public d(int i10, String str, long j10, DeflatedChunksSet deflatedChunksSet) {
        super(i10, str, j10, ChunkReader.ChunkReaderMode.PROCESS);
        this.bkd = false;
        this.bke = false;
        this.bkg = -1;
        this.bkc = deflatedChunksSet;
        deflatedChunksSet.a(this);
    }

    @Override // com.kwad.sdk.pngencrypt.ChunkReader
    protected void SE() {
        int iG;
        if (!this.bke || this.bkg < 0 || (iG = n.g(this.bkf, 0)) == this.bkg) {
            return;
        }
        new PngjException("bad chunk sequence for fDAT chunk " + iG + " expected " + this.bkg);
    }

    @Override // com.kwad.sdk.pngencrypt.ChunkReader
    protected final void a(int i10, byte[] bArr, int i11, int i12) {
        if (this.bke && i10 < 4) {
            while (i10 < 4 && i12 > 0) {
                this.bkf[i10] = bArr[i11];
                i10++;
                i11++;
                i12--;
            }
        }
        if (i12 > 0) {
            this.bkc.b(bArr, i11, i12);
            if (this.bkd) {
                System.arraycopy(bArr, i11, SD().data, this.bjv, i12);
            }
        }
    }

    public final void fj(int i10) {
        this.bkg = i10;
    }
}
