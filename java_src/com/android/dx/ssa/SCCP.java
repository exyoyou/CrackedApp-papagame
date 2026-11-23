package com.android.dx.ssa;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.TypedConstant;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import t7.a;

/* JADX INFO: loaded from: classes7.dex */
public class SCCP {
    private static final int CONSTANT = 1;
    private static final int TOP = 0;
    private static final int VARYING = 2;
    private final ArrayList<SsaInsn> branchWorklist;
    private final ArrayList<SsaBasicBlock> cfgPhiWorklist;
    private final ArrayList<SsaBasicBlock> cfgWorklist;
    private final BitSet executableBlocks;
    private final Constant[] latticeConstants;
    private final int[] latticeValues;
    private final int regCount;
    private final SsaMethod ssaMeth;
    private final ArrayList<SsaInsn> ssaWorklist;
    private final ArrayList<SsaInsn> varyingWorklist;

    private SCCP(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
        int regCount = ssaMethod.getRegCount();
        this.regCount = regCount;
        this.latticeValues = new int[regCount];
        this.latticeConstants = new Constant[regCount];
        this.cfgWorklist = new ArrayList<>();
        this.cfgPhiWorklist = new ArrayList<>();
        this.executableBlocks = new BitSet(ssaMethod.getBlocks().size());
        this.ssaWorklist = new ArrayList<>();
        this.varyingWorklist = new ArrayList<>();
        this.branchWorklist = new ArrayList<>();
        for (int i10 = 0; i10 < this.regCount; i10++) {
            this.latticeValues[i10] = 0;
            this.latticeConstants[i10] = null;
        }
    }

    private void addBlockToWorklist(SsaBasicBlock ssaBasicBlock) {
        if (this.executableBlocks.get(ssaBasicBlock.getIndex())) {
            this.cfgPhiWorklist.add(ssaBasicBlock);
        } else {
            this.cfgWorklist.add(ssaBasicBlock);
            this.executableBlocks.set(ssaBasicBlock.getIndex());
        }
    }

    private void addUsersToWorklist(int i10, int i11) {
        if (i11 == 2) {
            Iterator<SsaInsn> it2 = this.ssaMeth.getUseListForRegister(i10).iterator();
            while (it2.hasNext()) {
                this.varyingWorklist.add(it2.next());
            }
            return;
        }
        Iterator<SsaInsn> it3 = this.ssaMeth.getUseListForRegister(i10).iterator();
        while (it3.hasNext()) {
            this.ssaWorklist.add(it3.next());
        }
    }

    private static String latticeValName(int i10) {
        if (i10 == 0) {
            return "TOP";
        }
        if (i10 != 1) {
            return i10 != 2 ? a.f97139c : "VARYING";
        }
        return "CONSTANT";
    }

    public static void process(SsaMethod ssaMethod) {
        new SCCP(ssaMethod).run();
    }

    private void replaceBranches() {
        for (SsaInsn ssaInsn : this.branchWorklist) {
            SsaBasicBlock block = ssaInsn.getBlock();
            int size = block.getSuccessorList().size();
            int i10 = -1;
            for (int i11 = 0; i11 < size; i11++) {
                int i12 = block.getSuccessorList().get(i11);
                if (!this.executableBlocks.get(i12)) {
                    i10 = i12;
                }
            }
            if (size == 2 && i10 != -1) {
                block.replaceLastInsn(new PlainInsn(Rops.GOTO, ssaInsn.getOriginalRopInsn().getPosition(), (RegisterSpec) null, RegisterSpecList.EMPTY));
                block.removeSuccessor(i10);
            }
        }
    }

    private void replaceConstants() {
        for (int i10 = 0; i10 < this.regCount; i10++) {
            if (this.latticeValues[i10] == 1 && (this.latticeConstants[i10] instanceof TypedConstant)) {
                SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
                if (!definitionForRegister.getResult().getTypeBearer().isConstant()) {
                    definitionForRegister.setResult(definitionForRegister.getResult().withType((TypedConstant) this.latticeConstants[i10]));
                    for (SsaInsn ssaInsn : this.ssaMeth.getUseListForRegister(i10)) {
                        if (!ssaInsn.isPhiOrMove()) {
                            NormalSsaInsn normalSsaInsn = (NormalSsaInsn) ssaInsn;
                            RegisterSpecList sources = ssaInsn.getSources();
                            int iIndexOfRegister = sources.indexOfRegister(i10);
                            normalSsaInsn.changeOneSource(iIndexOfRegister, sources.get(iIndexOfRegister).withType((TypedConstant) this.latticeConstants[i10]));
                        }
                    }
                }
            }
        }
    }

    private void run() {
        addBlockToWorklist(this.ssaMeth.getEntryBlock());
        while (true) {
            if (this.cfgWorklist.isEmpty() && this.cfgPhiWorklist.isEmpty() && this.ssaWorklist.isEmpty() && this.varyingWorklist.isEmpty()) {
                replaceConstants();
                replaceBranches();
                return;
            }
            while (!this.cfgWorklist.isEmpty()) {
                simulateBlock(this.cfgWorklist.remove(this.cfgWorklist.size() - 1));
            }
            while (!this.cfgPhiWorklist.isEmpty()) {
                simulatePhiBlock(this.cfgPhiWorklist.remove(this.cfgPhiWorklist.size() - 1));
            }
            while (!this.varyingWorklist.isEmpty()) {
                SsaInsn ssaInsnRemove = this.varyingWorklist.remove(this.varyingWorklist.size() - 1);
                if (this.executableBlocks.get(ssaInsnRemove.getBlock().getIndex())) {
                    if (ssaInsnRemove instanceof PhiInsn) {
                        simulatePhi((PhiInsn) ssaInsnRemove);
                    } else {
                        simulateStmt(ssaInsnRemove);
                    }
                }
            }
            while (!this.ssaWorklist.isEmpty()) {
                SsaInsn ssaInsnRemove2 = this.ssaWorklist.remove(this.ssaWorklist.size() - 1);
                if (this.executableBlocks.get(ssaInsnRemove2.getBlock().getIndex())) {
                    if (ssaInsnRemove2 instanceof PhiInsn) {
                        simulatePhi((PhiInsn) ssaInsnRemove2);
                    } else {
                        simulateStmt(ssaInsnRemove2);
                    }
                }
            }
        }
    }

    private boolean setLatticeValueTo(int i10, int i11, Constant constant) {
        if (i11 != 1) {
            int[] iArr = this.latticeValues;
            if (iArr[i10] == i11) {
                return false;
            }
            iArr[i10] = i11;
            return true;
        }
        if (this.latticeValues[i10] == i11 && this.latticeConstants[i10].equals(constant)) {
            return false;
        }
        this.latticeValues[i10] = i11;
        this.latticeConstants[i10] = constant;
        return true;
    }

    private void simulateBlock(SsaBasicBlock ssaBasicBlock) {
        for (SsaInsn ssaInsn : ssaBasicBlock.getInsns()) {
            if (ssaInsn instanceof PhiInsn) {
                simulatePhi((PhiInsn) ssaInsn);
            } else {
                simulateStmt(ssaInsn);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:40:0x008b  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c7  */
    private void simulateBranch(SsaInsn ssaInsn) {
        boolean z10;
        boolean z11;
        Rop opcode = ssaInsn.getOpcode();
        RegisterSpecList sources = ssaInsn.getSources();
        if (opcode.getBranchingness() == 4) {
            RegisterSpec registerSpec = sources.get(0);
            int reg = registerSpec.getReg();
            Constant constant = null;
            Constant constant2 = (this.ssaMeth.isRegALocal(registerSpec) || this.latticeValues[reg] != 1) ? null : this.latticeConstants[reg];
            if (sources.size() == 2) {
                RegisterSpec registerSpec2 = sources.get(1);
                int reg2 = registerSpec2.getReg();
                if (!this.ssaMeth.isRegALocal(registerSpec2) && this.latticeValues[reg2] == 1) {
                    constant = this.latticeConstants[reg2];
                }
            }
            if (constant2 == null || sources.size() != 1) {
                if (constant2 == null || constant == null || ((TypedConstant) constant2).getBasicType() != 6) {
                    z10 = false;
                    z11 = false;
                } else {
                    int value = ((CstInteger) constant2).getValue();
                    int value2 = ((CstInteger) constant).getValue();
                    switch (opcode.getOpcode()) {
                        case 7:
                            if (value == value2) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            z11 = true;
                            break;
                        case 8:
                            if (value != value2) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            z11 = true;
                            break;
                        case 9:
                            if (value < value2) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            z11 = true;
                            break;
                        case 10:
                            if (value >= value2) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            z11 = true;
                            break;
                        case 11:
                            if (value <= value2) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            z11 = true;
                            break;
                        case 12:
                            if (value > value2) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            z11 = true;
                            break;
                        default:
                            throw new RuntimeException("Unexpected op");
                    }
                }
            } else if (((TypedConstant) constant2).getBasicType() != 6) {
                z10 = false;
                z11 = false;
            } else {
                int value3 = ((CstInteger) constant2).getValue();
                switch (opcode.getOpcode()) {
                    case 7:
                        if (value3 == 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = true;
                        break;
                    case 8:
                        if (value3 != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = true;
                        break;
                    case 9:
                        if (value3 < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = true;
                        break;
                    case 10:
                        if (value3 >= 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = true;
                        break;
                    case 11:
                        if (value3 <= 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = true;
                        break;
                    case 12:
                        if (value3 > 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = true;
                        break;
                    default:
                        throw new RuntimeException("Unexpected op");
                }
            }
        } else {
            z10 = false;
            z11 = false;
        }
        SsaBasicBlock block = ssaInsn.getBlock();
        if (z11) {
            addBlockToWorklist(this.ssaMeth.getBlocks().get(z10 ? block.getSuccessorList().get(1) : block.getSuccessorList().get(0)));
            this.branchWorklist.add(ssaInsn);
        } else {
            for (int i10 = 0; i10 < block.getSuccessorList().size(); i10++) {
                addBlockToWorklist(this.ssaMeth.getBlocks().get(block.getSuccessorList().get(i10)));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0081  */
    /* JADX WARN: Code duplicated, block: B:44:0x0099  */
    /* JADX WARN: Code duplicated, block: B:48:? A[RETURN, SYNTHETIC] */
    private Constant simulateMath(SsaInsn ssaInsn, int i10) {
        Constant constant;
        int i11;
        int i12;
        Insn originalRopInsn = ssaInsn.getOriginalRopInsn();
        int opcode = ssaInsn.getOpcode().getOpcode();
        RegisterSpecList sources = ssaInsn.getSources();
        boolean z10 = false;
        int reg = sources.get(0).getReg();
        Constant constant2 = this.latticeValues[reg] != 1 ? null : this.latticeConstants[reg];
        if (sources.size() == 1) {
            constant = ((CstInsn) originalRopInsn).getConstant();
        } else {
            int reg2 = sources.get(1).getReg();
            constant = this.latticeValues[reg2] != 1 ? null : this.latticeConstants[reg2];
        }
        if (constant2 == null || constant == null || i10 != 6) {
            return null;
        }
        int value = ((CstInteger) constant2).getValue();
        int value2 = ((CstInteger) constant).getValue();
        switch (opcode) {
            case 14:
                i11 = value + value2;
                i12 = i11;
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 15:
                if (sources.size() == 1) {
                    i12 = value2 - value;
                } else {
                    i11 = value - value2;
                    i12 = i11;
                }
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 16:
                i11 = value * value2;
                i12 = i11;
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 17:
                if (value2 == 0) {
                    i12 = 0;
                    z10 = true;
                } else {
                    i11 = value / value2;
                    i12 = i11;
                }
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 18:
                if (value2 == 0) {
                    i12 = 0;
                    z10 = true;
                } else {
                    i11 = value % value2;
                    i12 = i11;
                }
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 19:
            default:
                throw new RuntimeException("Unexpected op");
            case 20:
                i12 = value & value2;
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 21:
                i12 = value | value2;
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 22:
                i12 = value ^ value2;
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 23:
                i12 = value << value2;
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 24:
                i12 = value >> value2;
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
            case 25:
                i12 = value >>> value2;
                if (z10) {
                    return null;
                }
                return CstInteger.make(i12);
        }
    }

    private void simulatePhi(PhiInsn phiInsn) {
        int reg = phiInsn.getResult().getReg();
        int i10 = 2;
        if (this.latticeValues[reg] == 2) {
            return;
        }
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        int i11 = 0;
        Constant constant = null;
        int i12 = 0;
        while (true) {
            if (i11 >= size) {
                i10 = i12;
                break;
            }
            int iPredBlockIndexForSourcesIndex = phiInsn.predBlockIndexForSourcesIndex(i11);
            int reg2 = sources.get(i11).getReg();
            int i13 = this.latticeValues[reg2];
            if (this.executableBlocks.get(iPredBlockIndexForSourcesIndex)) {
                if (i13 != 1) {
                    i10 = i13;
                    break;
                } else if (constant == null) {
                    constant = this.latticeConstants[reg2];
                    i12 = 1;
                } else if (!this.latticeConstants[reg2].equals(constant)) {
                    break;
                }
            }
            i11++;
        }
        if (setLatticeValueTo(reg, i10, constant)) {
            addUsersToWorklist(reg, i10);
        }
    }

    private void simulatePhiBlock(SsaBasicBlock ssaBasicBlock) {
        for (SsaInsn ssaInsn : ssaBasicBlock.getInsns()) {
            if (!(ssaInsn instanceof PhiInsn)) {
                return;
            } else {
                simulatePhi((PhiInsn) ssaInsn);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009e  */
    private void simulateStmt(SsaInsn ssaInsn) {
        Constant constant;
        Insn originalRopInsn = ssaInsn.getOriginalRopInsn();
        int i10 = 1;
        if (originalRopInsn.getOpcode().getBranchingness() != 1 || originalRopInsn.getOpcode().isCallLike()) {
            simulateBranch(ssaInsn);
        }
        int opcode = ssaInsn.getOpcode().getOpcode();
        RegisterSpec result = ssaInsn.getResult();
        if (result == null) {
            if (opcode != 17 && opcode != 18) {
                return;
            } else {
                result = ssaInsn.getBlock().getPrimarySuccessor().getInsns().get(0).getResult();
            }
        }
        int reg = result.getReg();
        if (opcode != 2) {
            if (opcode == 5) {
                constant = ((CstInsn) originalRopInsn).getConstant();
            } else if (opcode != 56) {
                switch (opcode) {
                    default:
                        switch (opcode) {
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                                break;
                            default:
                                constant = null;
                                i10 = 2;
                                break;
                        }
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        constant = simulateMath(ssaInsn, result.getBasicType());
                        if (constant == null) {
                            i10 = 2;
                        }
                        break;
                }
            } else {
                int i11 = this.latticeValues[reg];
                if (i11 == 1) {
                    i10 = i11;
                    constant = this.latticeConstants[reg];
                } else {
                    constant = null;
                    i10 = 2;
                }
            }
        } else if (ssaInsn.getSources().size() == 1) {
            int reg2 = ssaInsn.getSources().get(0).getReg();
            i10 = this.latticeValues[reg2];
            constant = this.latticeConstants[reg2];
        } else {
            constant = null;
            i10 = 2;
        }
        if (setLatticeValueTo(reg, i10, constant)) {
            addUsersToWorklist(reg, i10);
        }
    }
}
