package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;

/* JADX INFO: loaded from: classes7.dex */
public final class CstBoolean extends CstLiteral32 {
    public static final CstBoolean VALUE_FALSE = new CstBoolean(false);
    public static final CstBoolean VALUE_TRUE = new CstBoolean(true);

    private CstBoolean(boolean z10) {
        super(z10 ? 1 : 0);
    }

    public static CstBoolean make(boolean z10) {
        return z10 ? VALUE_TRUE : VALUE_FALSE;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.BOOLEAN;
    }

    public boolean getValue() {
        return getIntBits() != 0;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return getValue() ? "true" : "false";
    }

    public String toString() {
        return getValue() ? "boolean{true}" : "boolean{false}";
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "boolean";
    }

    public static CstBoolean make(int i10) {
        if (i10 == 0) {
            return VALUE_FALSE;
        }
        if (i10 == 1) {
            return VALUE_TRUE;
        }
        throw new IllegalArgumentException("bogus value: " + i10);
    }
}
