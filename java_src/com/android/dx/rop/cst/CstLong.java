package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import com.swift.sandhook.annotation.MethodReflectParams;

/* JADX INFO: loaded from: classes7.dex */
public final class CstLong extends CstLiteral64 {
    public static final CstLong VALUE_0 = make(0);
    public static final CstLong VALUE_1 = make(1);

    private CstLong(long j10) {
        super(j10);
    }

    public static CstLong make(long j10) {
        return new CstLong(j10);
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.LONG;
    }

    public long getValue() {
        return getLongBits();
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return Long.toString(getLongBits());
    }

    public String toString() {
        long longBits = getLongBits();
        return "long{0x" + Hex.u8(longBits) + " / " + longBits + '}';
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return MethodReflectParams.LONG;
    }
}
