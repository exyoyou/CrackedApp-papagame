package com.android.dx.rop.code;

import com.android.dx.rop.type.StdTypeList;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.android.dx.util.LabeledItem;
import com.android.dx.util.LabeledList;

/* JADX INFO: loaded from: classes7.dex */
public final class BasicBlockList extends LabeledList {
    private int regCount;

    private static class RegCountVisitor implements Insn.Visitor {
        private int regCount = 0;

        private void processReg(RegisterSpec registerSpec) {
            int nextReg = registerSpec.getNextReg();
            if (nextReg > this.regCount) {
                this.regCount = nextReg;
            }
        }

        private void visit(Insn insn) {
            RegisterSpec result = insn.getResult();
            if (result != null) {
                processReg(result);
            }
            RegisterSpecList sources = insn.getSources();
            int size = sources.size();
            for (int i10 = 0; i10 < size; i10++) {
                processReg(sources.get(i10));
            }
        }

        public int getRegCount() {
            return this.regCount;
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitFillArrayDataInsn(FillArrayDataInsn fillArrayDataInsn) {
            visit(fillArrayDataInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitInvokePolymorphicInsn(InvokePolymorphicInsn invokePolymorphicInsn) {
            visit(invokePolymorphicInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
            visit(plainCstInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainInsn(PlainInsn plainInsn) {
            visit(plainInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitSwitchInsn(SwitchInsn switchInsn) {
            visit(switchInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn) {
            visit(throwingCstInsn);
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingInsn(ThrowingInsn throwingInsn) {
            visit(throwingInsn);
        }
    }

    public BasicBlockList(int i10) {
        super(i10);
        this.regCount = -1;
    }

    public boolean catchesEqual(BasicBlock basicBlock, BasicBlock basicBlock2) {
        if (!StdTypeList.equalContents(basicBlock.getExceptionHandlerTypes(), basicBlock2.getExceptionHandlerTypes())) {
            return false;
        }
        IntList successors = basicBlock.getSuccessors();
        IntList successors2 = basicBlock2.getSuccessors();
        int size = successors.size();
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        int primarySuccessor2 = basicBlock2.getPrimarySuccessor();
        if ((primarySuccessor == -1 || primarySuccessor2 == -1) && primarySuccessor != primarySuccessor2) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = successors.get(i10);
            int i12 = successors2.get(i10);
            if (i11 == primarySuccessor) {
                if (i12 != primarySuccessor2) {
                    return false;
                }
            } else if (i11 != i12) {
                return false;
            }
        }
        return true;
    }

    public void forEachInsn(Insn.Visitor visitor) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            get(i10).getInsns().forEach(visitor);
        }
    }

    public BasicBlock get(int i10) {
        return (BasicBlock) get0(i10);
    }

    public int getEffectiveInstructionCount() {
        int size = size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            BasicBlock basicBlock = (BasicBlock) getOrNull0(i11);
            if (basicBlock != null) {
                InsnList insns = basicBlock.getInsns();
                int size2 = insns.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    if (insns.get(i12).getOpcode().getOpcode() != 54) {
                        i10++;
                    }
                }
            }
        }
        return i10;
    }

    public int getInstructionCount() {
        int size = size();
        int size2 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            BasicBlock basicBlock = (BasicBlock) getOrNull0(i10);
            if (basicBlock != null) {
                size2 += basicBlock.getInsns().size();
            }
        }
        return size2;
    }

    public BasicBlockList getMutableCopy() {
        return new BasicBlockList(this);
    }

    public int getRegCount() {
        if (this.regCount == -1) {
            RegCountVisitor regCountVisitor = new RegCountVisitor();
            forEachInsn(regCountVisitor);
            this.regCount = regCountVisitor.getRegCount();
        }
        return this.regCount;
    }

    public BasicBlock labelToBlock(int i10) {
        int iIndexOfLabel = indexOfLabel(i10);
        if (iIndexOfLabel >= 0) {
            return get(iIndexOfLabel);
        }
        throw new IllegalArgumentException("no such label: " + Hex.u2(i10));
    }

    public BasicBlock preferredSuccessorOf(BasicBlock basicBlock) {
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        IntList successors = basicBlock.getSuccessors();
        int size = successors.size();
        if (size == 0) {
            return null;
        }
        if (size != 1) {
            return primarySuccessor != -1 ? labelToBlock(primarySuccessor) : labelToBlock(successors.get(0));
        }
        return labelToBlock(successors.get(0));
    }

    public void set(int i10, BasicBlock basicBlock) {
        super.set(i10, (LabeledItem) basicBlock);
        this.regCount = -1;
    }

    public BasicBlockList withRegisterOffset(int i10) {
        int size = size();
        BasicBlockList basicBlockList = new BasicBlockList(size);
        for (int i11 = 0; i11 < size; i11++) {
            BasicBlock basicBlock = (BasicBlock) get0(i11);
            if (basicBlock != null) {
                basicBlockList.set(i11, basicBlock.withRegisterOffset(i10));
            }
        }
        if (isImmutable()) {
            basicBlockList.setImmutable();
        }
        return basicBlockList;
    }

    private BasicBlockList(BasicBlockList basicBlockList) {
        super(basicBlockList);
        this.regCount = basicBlockList.regCount;
    }
}
