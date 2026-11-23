package com.android.dx.ssa.back;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.ssa.BasicRegisterMapper;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.BitIntSet;
import java.util.BitSet;

/* JADX INFO: loaded from: classes7.dex */
public class FirstFitAllocator extends RegisterAllocator {
    private static final boolean PRESLOT_PARAMS = true;
    private final BitSet mapped;

    public FirstFitAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        super(ssaMethod, interferenceGraph);
        this.mapped = new BitSet(ssaMethod.getRegCount());
    }

    private int paramNumberFromMoveParam(NormalSsaInsn normalSsaInsn) {
        return ((CstInteger) ((CstInsn) normalSsaInsn.getOriginalRopInsn()).getConstant()).getValue();
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public RegisterMapper allocateRegisters() {
        int iParamNumberFromMoveParam;
        boolean z10;
        int regCount = this.ssaMeth.getRegCount();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(regCount);
        int paramWidth = this.ssaMeth.getParamWidth();
        for (int i10 = 0; i10 < regCount; i10++) {
            if (!this.mapped.get(i10)) {
                int categoryForSsaReg = getCategoryForSsaReg(i10);
                BitIntSet bitIntSet = new BitIntSet(regCount);
                this.interference.mergeInterferenceSet(i10, bitIntSet);
                if (isDefinitionMoveParam(i10)) {
                    iParamNumberFromMoveParam = paramNumberFromMoveParam((NormalSsaInsn) this.ssaMeth.getDefinitionForRegister(i10));
                    basicRegisterMapper.addMapping(i10, iParamNumberFromMoveParam, categoryForSsaReg);
                    z10 = true;
                } else {
                    basicRegisterMapper.addMapping(i10, paramWidth, categoryForSsaReg);
                    iParamNumberFromMoveParam = paramWidth;
                    z10 = false;
                }
                for (int i11 = i10 + 1; i11 < regCount; i11++) {
                    if (!this.mapped.get(i11) && !isDefinitionMoveParam(i11) && !bitIntSet.has(i11) && (!z10 || categoryForSsaReg >= getCategoryForSsaReg(i11))) {
                        this.interference.mergeInterferenceSet(i11, bitIntSet);
                        categoryForSsaReg = Math.max(categoryForSsaReg, getCategoryForSsaReg(i11));
                        basicRegisterMapper.addMapping(i11, iParamNumberFromMoveParam, categoryForSsaReg);
                        this.mapped.set(i11);
                    }
                }
                this.mapped.set(i10);
                if (!z10) {
                    paramWidth += categoryForSsaReg;
                }
            }
        }
        return basicRegisterMapper;
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public boolean wantsParamsMovedHigh() {
        return true;
    }
}
