package com.android.dx.rop.cst;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CstLiteral64 extends CstLiteralBits {
    private final long bits;

    CstLiteral64(long j10) {
        this.bits = j10;
    }

    @Override // com.android.dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        long j10 = ((CstLiteral64) constant).bits;
        long j11 = this.bits;
        if (j11 < j10) {
            return -1;
        }
        return j11 > j10 ? 1 : 0;
    }

    public final boolean equals(Object obj) {
        return obj != null && getClass() == obj.getClass() && this.bits == ((CstLiteral64) obj).bits;
    }

    @Override // com.android.dx.rop.cst.CstLiteralBits
    public final boolean fitsInInt() {
        long j10 = this.bits;
        return ((long) ((int) j10)) == j10;
    }

    @Override // com.android.dx.rop.cst.CstLiteralBits
    public final int getIntBits() {
        return (int) this.bits;
    }

    @Override // com.android.dx.rop.cst.CstLiteralBits
    public final long getLongBits() {
        return this.bits;
    }

    public final int hashCode() {
        long j10 = this.bits;
        return ((int) j10) ^ ((int) (j10 >> 32));
    }

    @Override // com.android.dx.rop.cst.Constant
    public final boolean isCategory2() {
        return true;
    }
}
