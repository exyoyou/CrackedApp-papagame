package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import com.swift.sandhook.annotation.MethodReflectParams;

/* JADX INFO: loaded from: classes7.dex */
public final class CstChar extends CstLiteral32 {
    public static final CstChar VALUE_0 = make((char) 0);

    private CstChar(char c10) {
        super(c10);
    }

    public static CstChar make(char c10) {
        return new CstChar(c10);
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.CHAR;
    }

    public char getValue() {
        return (char) getIntBits();
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return Integer.toString(getIntBits());
    }

    public String toString() {
        int intBits = getIntBits();
        return "char{0x" + Hex.u2(intBits) + " / " + intBits + '}';
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return MethodReflectParams.CHAR;
    }

    public static CstChar make(int i10) {
        char c10 = (char) i10;
        if (c10 == i10) {
            return make(c10);
        }
        throw new IllegalArgumentException("bogus char value: " + i10);
    }
}
