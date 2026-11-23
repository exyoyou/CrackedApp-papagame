package com.android.dx.ssa;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class PhiInsn extends SsaInsn {
    private final ArrayList<Operand> operands;
    private final int ropResultReg;
    private RegisterSpecList sources;

    private static class Operand {
        public final int blockIndex;
        public RegisterSpec regSpec;
        public final int ropLabel;

        public Operand(RegisterSpec registerSpec, int i10, int i11) {
            this.regSpec = registerSpec;
            this.blockIndex = i10;
            this.ropLabel = i11;
        }
    }

    public interface Visitor {
        void visitPhiInsn(PhiInsn phiInsn);
    }

    public PhiInsn(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        super(registerSpec, ssaBasicBlock);
        this.operands = new ArrayList<>();
        this.ropResultReg = registerSpec.getReg();
    }

    @Override // com.android.dx.ssa.SsaInsn
    public void accept(SsaInsn.Visitor visitor) {
        visitor.visitPhiInsn(this);
    }

    public void addPhiOperand(RegisterSpec registerSpec, SsaBasicBlock ssaBasicBlock) {
        this.operands.add(new Operand(registerSpec, ssaBasicBlock.getIndex(), ssaBasicBlock.getRopLabel()));
        this.sources = null;
    }

    public boolean areAllOperandsEqual() {
        if (this.operands.size() == 0) {
            return true;
        }
        int reg = this.operands.get(0).regSpec.getReg();
        Iterator<Operand> it2 = this.operands.iterator();
        while (it2.hasNext()) {
            if (reg != it2.next().regSpec.getReg()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean canThrow() {
        return false;
    }

    public void changeResultType(TypeBearer typeBearer, LocalItem localItem) {
        setResult(RegisterSpec.makeLocalOptional(getResult().getReg(), typeBearer, localItem));
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Rop getOpcode() {
        return null;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Insn getOriginalRopInsn() {
        return null;
    }

    public int getRopResultReg() {
        return this.ropResultReg;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public RegisterSpecList getSources() {
        RegisterSpecList registerSpecList = this.sources;
        if (registerSpecList != null) {
            return registerSpecList;
        }
        if (this.operands.size() == 0) {
            return RegisterSpecList.EMPTY;
        }
        int size = this.operands.size();
        this.sources = new RegisterSpecList(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.sources.set(i10, this.operands.get(i10).regSpec);
        }
        this.sources.setImmutable();
        return this.sources;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean hasSideEffect() {
        return Optimizer.getPreserveLocals() && getLocalAssignment() != null;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean isPhiOrMove() {
        return true;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public boolean isRegASource(int i10) {
        Iterator<Operand> it2 = this.operands.iterator();
        while (it2.hasNext()) {
            if (it2.next().regSpec.getReg() == i10) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.dx.ssa.SsaInsn
    public final void mapSourceRegisters(RegisterMapper registerMapper) {
        for (Operand operand : this.operands) {
            RegisterSpec registerSpec = operand.regSpec;
            RegisterSpec map = registerMapper.map(registerSpec);
            operand.regSpec = map;
            if (registerSpec != map) {
                getBlock().getParent().onSourceChanged(this, registerSpec, operand.regSpec);
            }
        }
        this.sources = null;
    }

    public int predBlockIndexForSourcesIndex(int i10) {
        return this.operands.get(i10).blockIndex;
    }

    public List<SsaBasicBlock> predBlocksForReg(int i10, SsaMethod ssaMethod) {
        ArrayList arrayList = new ArrayList();
        for (Operand operand : this.operands) {
            if (operand.regSpec.getReg() == i10) {
                arrayList.add(ssaMethod.getBlocks().get(operand.blockIndex));
            }
        }
        return arrayList;
    }

    public void removePhiRegister(RegisterSpec registerSpec) {
        ArrayList arrayList = new ArrayList();
        for (Operand operand : this.operands) {
            if (operand.regSpec.getReg() == registerSpec.getReg()) {
                arrayList.add(operand);
            }
        }
        this.operands.removeAll(arrayList);
        this.sources = null;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return toHumanWithInline(null);
    }

    protected final String toHumanWithInline(String str) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(SourcePosition.NO_INFO);
        sb2.append(": phi");
        if (str != null) {
            sb2.append("(");
            sb2.append(str);
            sb2.append(")");
        }
        RegisterSpec result = getResult();
        if (result == null) {
            sb2.append(" .");
        } else {
            sb2.append(" ");
            sb2.append(result.toHuman());
        }
        sb2.append(" <-");
        int size = getSources().size();
        if (size == 0) {
            sb2.append(" .");
        } else {
            for (int i10 = 0; i10 < size; i10++) {
                sb2.append(" ");
                sb2.append(this.sources.get(i10).toHuman() + "[b=" + Hex.u2(this.operands.get(i10).ropLabel) + "]");
            }
        }
        return sb2.toString();
    }

    @Override // com.android.dx.ssa.SsaInsn
    public Insn toRopInsn() {
        throw new IllegalArgumentException("Cannot convert phi insns to rop form");
    }

    public void updateSourcesToDefinitions(SsaMethod ssaMethod) {
        for (Operand operand : this.operands) {
            operand.regSpec = operand.regSpec.withType(ssaMethod.getDefinitionForRegister(operand.regSpec.getReg()).getResult().getType());
        }
        this.sources = null;
    }

    @Override // com.android.dx.ssa.SsaInsn
    /* JADX INFO: renamed from: clone */
    public PhiInsn mo14clone() {
        throw new UnsupportedOperationException("can't clone phi");
    }

    public PhiInsn(int i10, SsaBasicBlock ssaBasicBlock) {
        super(RegisterSpec.make(i10, Type.VOID), ssaBasicBlock);
        this.operands = new ArrayList<>();
        this.ropResultReg = i10;
    }
}
