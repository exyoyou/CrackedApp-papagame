package com.android.dx.rop.code;

import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;

/* JADX INFO: loaded from: classes7.dex */
public final class ThrowingInsn extends Insn {
    private final TypeList catches;

    public ThrowingInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList) {
        super(rop, sourcePosition, null, registerSpecList);
        if (rop.getBranchingness() == 6) {
            if (typeList == null) {
                throw new NullPointerException("catches == null");
            }
            this.catches = typeList;
        } else {
            throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
        }
    }

    public static String toCatchString(TypeList typeList) {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append("catch");
        int size = typeList.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append(" ");
            sb2.append(typeList.getType(i10).toHuman());
        }
        return sb2.toString();
    }

    @Override // com.android.dx.rop.code.Insn
    public void accept(Insn.Visitor visitor) {
        visitor.visitThrowingInsn(this);
    }

    @Override // com.android.dx.rop.code.Insn
    public TypeList getCatches() {
        return this.catches;
    }

    @Override // com.android.dx.rop.code.Insn
    public String getInlineString() {
        return toCatchString(this.catches);
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withAddedCatch(Type type) {
        return new ThrowingInsn(getOpcode(), getPosition(), getSources(), this.catches.withAddedType(type));
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new ThrowingInsn(getOpcode(), getPosition(), registerSpecList, this.catches);
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withRegisterOffset(int i10) {
        return new ThrowingInsn(getOpcode(), getPosition(), getSources().withOffset(i10), this.catches);
    }
}
