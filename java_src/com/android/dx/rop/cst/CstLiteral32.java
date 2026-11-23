package com.android.dx.rop.cst;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CstLiteral32 extends CstLiteralBits {
    private final int bits;

    CstLiteral32(int i10) {
        this.bits = i10;
    }

    @Override // com.android.dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        int i10 = ((CstLiteral32) constant).bits;
        int i11 = this.bits;
        if (i11 < i10) {
            return -1;
        }
        return i11 > i10 ? 1 : 0;
    }

    public final boolean equals(Object obj) {
        return obj != null && getClass() == obj.getClass() && this.bits == ((CstLiteral32) obj).bits;
    }

    @Override // com.android.dx.rop.cst.CstLiteralBits
    public final boolean fitsInInt() {
        return true;
    }

    @Override // com.android.dx.rop.cst.CstLiteralBits
    public final int getIntBits() {
        return this.bits;
    }

    @Override // com.android.dx.rop.cst.CstLiteralBits
    public final long getLongBits() {
        return this.bits;
    }

    public final int hashCode() {
        return this.bits;
    }

    @Override // com.android.dx.rop.cst.Constant
    public final boolean isCategory2() {
        return false;
    }
}
