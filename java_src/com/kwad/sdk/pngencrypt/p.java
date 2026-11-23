package com.kwad.sdk.pngencrypt;

/* JADX INFO: loaded from: classes2.dex */
final class p {
    public final e bjO;
    int bkA;
    public final k bkK;
    int bku;
    int bkx;
    int bky;
    int bkz;
    public final boolean blm;
    int bln;
    int blo;
    int blp;
    int blq;
    int blr;
    int bls;
    int blt;
    byte[] buf;

    public p(k kVar, e eVar) {
        this.bkK = kVar;
        this.bjO = eVar;
        this.blm = eVar != null;
    }

    final void h(byte[] bArr, int i10) {
        this.buf = bArr;
        this.blt = i10;
    }

    final void update(int i10) {
        this.bln = i10;
        if (!this.blm) {
            this.bku = 1;
            this.bkx = 1;
            this.bky = 1;
            this.bkz = 0;
            this.bkA = 0;
            this.blp = i10;
            this.blo = i10;
            k kVar = this.bkK;
            this.blq = kVar.bkv;
            this.blr = kVar.bkw;
            this.bls = kVar.bkW;
            return;
        }
        this.bku = this.bjO.SX();
        e eVar = this.bjO;
        this.bky = eVar.bky;
        this.bkx = eVar.bkx;
        this.bkA = eVar.bkA;
        this.bkz = eVar.bkz;
        this.blo = eVar.SW();
        this.blp = this.bjO.SV();
        this.blq = this.bjO.SY();
        int iSZ = this.bjO.SZ();
        this.blr = iSZ;
        this.bls = ((this.bkK.bkU * iSZ) + 7) / 8;
    }
}
