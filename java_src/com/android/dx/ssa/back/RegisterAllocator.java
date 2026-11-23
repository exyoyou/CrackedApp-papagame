package com.android.dx.ssa.back;

import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.IntIterator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public abstract class RegisterAllocator {
    protected final InterferenceGraph interference;
    protected final SsaMethod ssaMeth;

    public RegisterAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        this.ssaMeth = ssaMethod;
        this.interference = interferenceGraph;
    }

    public abstract RegisterMapper allocateRegisters();

    protected final int getCategoryForSsaReg(int i10) {
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
        if (definitionForRegister == null) {
            return 1;
        }
        return definitionForRegister.getResult().getCategory();
    }

    protected final RegisterSpec getDefinitionSpecForSsaReg(int i10) {
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
        if (definitionForRegister == null) {
            return null;
        }
        return definitionForRegister.getResult();
    }

    protected final RegisterSpec insertMoveBefore(SsaInsn ssaInsn, RegisterSpec registerSpec) {
        SsaBasicBlock block = ssaInsn.getBlock();
        ArrayList<SsaInsn> insns = block.getInsns();
        int iIndexOf = insns.indexOf(ssaInsn);
        if (iIndexOf < 0) {
            throw new IllegalArgumentException("specified insn is not in this block");
        }
        if (iIndexOf != insns.size() - 1) {
            throw new IllegalArgumentException("Adding move here not supported:" + ssaInsn.toHuman());
        }
        RegisterSpec registerSpecMake = RegisterSpec.make(this.ssaMeth.makeNewSsaReg(), registerSpec.getTypeBearer());
        insns.add(iIndexOf, SsaInsn.makeFromRop(new PlainInsn(Rops.opMove(registerSpecMake.getType()), SourcePosition.NO_INFO, registerSpecMake, RegisterSpecList.make(registerSpec)), block));
        int reg = registerSpecMake.getReg();
        IntIterator it2 = block.getLiveOutRegs().iterator();
        while (it2.hasNext()) {
            this.interference.add(reg, it2.next());
        }
        RegisterSpecList sources = ssaInsn.getSources();
        int size = sources.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.interference.add(reg, sources.get(i10).getReg());
        }
        this.ssaMeth.onInsnsChanged();
        return registerSpecMake;
    }

    protected boolean isDefinitionMoveParam(int i10) {
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
        return (definitionForRegister instanceof NormalSsaInsn) && ((NormalSsaInsn) definitionForRegister).getOpcode().getOpcode() == 3;
    }

    public abstract boolean wantsParamsMovedHigh();
}
