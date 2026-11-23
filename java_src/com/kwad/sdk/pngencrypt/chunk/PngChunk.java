package com.kwad.sdk.pngencrypt.chunk;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PngChunk {
    protected final com.kwad.sdk.pngencrypt.k bkK;
    public final boolean blK;
    public final boolean blL;
    public final boolean blM;
    protected d blN;
    private boolean blO = false;
    protected int blP = -1;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public final String f75330id;

    public enum ChunkOrderingConstraint {
        NONE,
        BEFORE_PLTE_AND_IDAT,
        AFTER_PLTE_BEFORE_IDAT,
        AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED,
        BEFORE_IDAT,
        AFTER_IDAT,
        NA;

        public final boolean isOk(int i10, boolean z10) {
            if (this == NONE) {
                return true;
            }
            if (this == BEFORE_IDAT) {
                return i10 < 4;
            }
            if (this == BEFORE_PLTE_AND_IDAT) {
                return i10 < 2;
            }
            if (this != AFTER_PLTE_BEFORE_IDAT) {
                return this == AFTER_IDAT && i10 > 4;
            }
            if (z10) {
                return i10 < 4;
            }
            return i10 < 4 && i10 > 2;
        }

        public final boolean mustGoAfterIDAT() {
            return this == AFTER_IDAT;
        }

        public final boolean mustGoAfterPLTE() {
            return this == AFTER_PLTE_BEFORE_IDAT || this == AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED;
        }

        public final boolean mustGoBeforeIDAT() {
            return this == BEFORE_IDAT || this == BEFORE_PLTE_AND_IDAT || this == AFTER_PLTE_BEFORE_IDAT;
        }

        public final boolean mustGoBeforePLTE() {
            return this == BEFORE_PLTE_AND_IDAT;
        }
    }

    public PngChunk(String str, com.kwad.sdk.pngencrypt.k kVar) {
        this.f75330id = str;
        this.bkK = kVar;
        this.blK = b.hq(str);
        this.blL = b.hr(str);
        this.blM = b.hs(str);
    }

    private long Tp() {
        d dVar = this.blN;
        if (dVar != null) {
            return dVar.Tp();
        }
        return -1L;
    }

    private int Tr() {
        d dVar = this.blN;
        if (dVar != null) {
            return dVar.len;
        }
        return -1;
    }

    protected abstract void a(d dVar);

    final void b(d dVar) {
        this.blN = dVar;
    }

    final void fu(int i10) {
        this.blP = i10;
    }

    public String toString() {
        return "chunk id= " + this.f75330id + " (len=" + Tr() + " offset=" + Tp() + ")";
    }
}
