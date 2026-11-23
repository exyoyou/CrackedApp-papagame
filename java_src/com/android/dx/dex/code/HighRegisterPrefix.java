package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.AnnotatedOutput;

/* JADX INFO: loaded from: classes7.dex */
public final class HighRegisterPrefix extends VariableSizeInsn {
    private SimpleInsn[] insns;

    public HighRegisterPrefix(SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        super(sourcePosition, registerSpecList);
        if (registerSpecList.size() == 0) {
            throw new IllegalArgumentException("registers.size() == 0");
        }
        this.insns = null;
    }

    private void calculateInsnsIfNecessary() {
        if (this.insns != null) {
            return;
        }
        RegisterSpecList registers = getRegisters();
        int size = registers.size();
        this.insns = new SimpleInsn[size];
        int category = 0;
        for (int i10 = 0; i10 < size; i10++) {
            RegisterSpec registerSpec = registers.get(i10);
            this.insns[i10] = moveInsnFor(registerSpec, category);
            category += registerSpec.getCategory();
        }
    }

    private static SimpleInsn moveInsnFor(RegisterSpec registerSpec, int i10) {
        return DalvInsn.makeMove(SourcePosition.NO_INFO, RegisterSpec.make(i10, registerSpec.getType()), registerSpec);
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String argString() {
        return null;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public int codeSize() {
        calculateInsnsIfNecessary();
        int iCodeSize = 0;
        for (SimpleInsn simpleInsn : this.insns) {
            iCodeSize += simpleInsn.codeSize();
        }
        return iCodeSize;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String listingString0(boolean z10) {
        RegisterSpecList registers = getRegisters();
        int size = registers.size();
        StringBuilder sb2 = new StringBuilder(100);
        int category = 0;
        for (int i10 = 0; i10 < size; i10++) {
            RegisterSpec registerSpec = registers.get(i10);
            SimpleInsn simpleInsnMoveInsnFor = moveInsnFor(registerSpec, category);
            if (i10 != 0) {
                sb2.append('\n');
            }
            sb2.append(simpleInsnMoveInsnFor.listingString0(z10));
            category += registerSpec.getCategory();
        }
        return sb2.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new HighRegisterPrefix(getPosition(), registerSpecList);
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public void writeTo(AnnotatedOutput annotatedOutput) {
        calculateInsnsIfNecessary();
        for (SimpleInsn simpleInsn : this.insns) {
            simpleInsn.writeTo(annotatedOutput);
        }
    }
}
