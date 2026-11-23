package com.kwad.sdk.pngencrypt;

import java.util.Arrays;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends DeflatedChunksSet {
    protected final e bjO;
    protected byte[] bkI;
    protected byte[] bkJ;
    protected final k bkK;
    final p bkL;
    protected int[] bkM;

    /* JADX INFO: renamed from: com.kwad.sdk.pngencrypt.j$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] bkN;

        static {
            int[] iArr = new int[FilterType.values().length];
            bkN = iArr;
            try {
                iArr[FilterType.FILTER_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                bkN[FilterType.FILTER_SUB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                bkN[FilterType.FILTER_UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                bkN[FilterType.FILTER_AVERAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                bkN[FilterType.FILTER_PAETH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public j(String str, boolean z10, k kVar, e eVar) {
        this(str, z10, kVar, eVar, null, null);
    }

    private void Tc() {
        fo(this.bkL.bls);
    }

    private int Td() {
        int iTb;
        e eVar = this.bjO;
        int i10 = 0;
        if (eVar == null) {
            int iST = ST();
            k kVar = this.bkK;
            if (iST < kVar.bkv - 1) {
                iTb = kVar.bkW;
                i10 = iTb + 1;
            }
        } else if (eVar.SU()) {
            iTb = this.bjO.Tb();
            i10 = iTb + 1;
        }
        if (!this.bjR) {
            fk(i10);
        }
        return i10;
    }

    private void fo(int i10) {
        byte[] bArr = this.bkI;
        if (bArr == null || bArr.length < this.bkh.length) {
            byte[] bArr2 = this.bkh;
            this.bkI = new byte[bArr2.length];
            this.bkJ = new byte[bArr2.length];
        }
        if (this.bkL.blp == 0) {
            Arrays.fill(this.bkI, (byte) 0);
        }
        byte[] bArr3 = this.bkI;
        this.bkI = this.bkJ;
        this.bkJ = bArr3;
        byte b10 = this.bkh[0];
        if (!FilterType.isValidStandard(b10)) {
            throw new PngjException("Filter type " + ((int) b10) + " invalid");
        }
        FilterType byVal = FilterType.getByVal(b10);
        int[] iArr = this.bkM;
        iArr[b10] = iArr[b10] + 1;
        this.bkI[0] = this.bkh[0];
        int i11 = AnonymousClass1.bkN[byVal.ordinal()];
        if (i11 == 1) {
            fq(i10);
            return;
        }
        if (i11 == 2) {
            fs(i10);
            return;
        }
        if (i11 == 3) {
            ft(i10);
            return;
        }
        if (i11 == 4) {
            fp(i10);
        } else {
            if (i11 == 5) {
                fr(i10);
                return;
            }
            throw new PngjException("Filter type " + ((int) b10) + " not implemented");
        }
    }

    private void fp(int i10) {
        int i11 = 1;
        int i12 = 1 - this.bkK.bkV;
        while (i11 <= i10) {
            this.bkI[i11] = (byte) (this.bkh[i11] + (((i12 > 0 ? this.bkI[i12] & 255 : 0) + (this.bkJ[i11] & 255)) / 2));
            i11++;
            i12++;
        }
    }

    private void fq(int i10) {
        for (int i11 = 1; i11 <= i10; i11++) {
            this.bkI[i11] = this.bkh[i11];
        }
    }

    private void fr(int i10) {
        int i11 = 1;
        int i12 = 1 - this.bkK.bkV;
        while (i11 <= i10) {
            int i13 = 0;
            int i14 = i12 > 0 ? this.bkI[i12] & 255 : 0;
            if (i12 > 0) {
                i13 = this.bkJ[i12] & 255;
            }
            this.bkI[i11] = (byte) (this.bkh[i11] + n.d(i14, this.bkJ[i11] & 255, i13));
            i11++;
            i12++;
        }
    }

    private void fs(int i10) {
        int i11;
        int i12 = 1;
        while (true) {
            i11 = this.bkK.bkV;
            if (i12 > i11) {
                break;
            }
            this.bkI[i12] = this.bkh[i12];
            i12++;
        }
        int i13 = i11 + 1;
        int i14 = 1;
        while (i13 <= i10) {
            byte[] bArr = this.bkI;
            bArr[i13] = (byte) (this.bkh[i13] + bArr[i14]);
            i13++;
            i14++;
        }
    }

    private void ft(int i10) {
        for (int i11 = 1; i11 <= i10; i11++) {
            this.bkI[i11] = (byte) (this.bkh[i11] + this.bkJ[i11]);
        }
    }

    @Override // com.kwad.sdk.pngencrypt.DeflatedChunksSet
    protected final void SR() {
        super.SR();
        this.bkL.update(ST());
        Tc();
        p pVar = this.bkL;
        pVar.h(this.bkI, pVar.bls + 1);
    }

    @Override // com.kwad.sdk.pngencrypt.DeflatedChunksSet
    protected final int SS() {
        return Td();
    }

    @Override // com.kwad.sdk.pngencrypt.DeflatedChunksSet
    public final void close() {
        super.close();
        this.bkI = null;
        this.bkJ = null;
    }

    private j(String str, boolean z10, k kVar, e eVar, Inflater inflater, byte[] bArr) {
        super(str, z10, (eVar != null ? eVar.Tb() : kVar.bkW) + 1, kVar.bkW + 1, null, null);
        this.bkM = new int[5];
        this.bkK = kVar;
        this.bjO = eVar;
        this.bkL = new p(kVar, eVar);
    }
}
