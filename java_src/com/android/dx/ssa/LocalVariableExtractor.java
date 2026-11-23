package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: loaded from: classes7.dex */
public class LocalVariableExtractor {
    private final ArrayList<SsaBasicBlock> blocks;
    private final SsaMethod method;
    private final LocalVariableInfo resultInfo;
    private final BitSet workSet;

    private LocalVariableExtractor(SsaMethod ssaMethod) {
        if (ssaMethod == null) {
            throw new NullPointerException("method == null");
        }
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        this.method = ssaMethod;
        this.blocks = blocks;
        this.resultInfo = new LocalVariableInfo(ssaMethod);
        this.workSet = new BitSet(blocks.size());
    }

    private LocalVariableInfo doit() {
        if (this.method.getRegCount() > 0) {
            int entryBlockIndex = this.method.getEntryBlockIndex();
            while (entryBlockIndex >= 0) {
                this.workSet.clear(entryBlockIndex);
                processBlock(entryBlockIndex);
                entryBlockIndex = this.workSet.nextSetBit(0);
            }
        }
        this.resultInfo.setImmutable();
        return this.resultInfo;
    }

    public static LocalVariableInfo extract(SsaMethod ssaMethod) {
        return new LocalVariableExtractor(ssaMethod).doit();
    }

    private void processBlock(int i10) {
        RegisterSpecSet registerSpecSetMutableCopyOfStarts = this.resultInfo.mutableCopyOfStarts(i10);
        SsaBasicBlock ssaBasicBlock = this.blocks.get(i10);
        ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
        int size = insns.size();
        if (i10 == this.method.getExitBlockIndex()) {
            return;
        }
        int i11 = size - 1;
        SsaInsn ssaInsn = insns.get(i11);
        boolean z10 = (ssaInsn.getOriginalRopInsn().getCatches().size() != 0) && ssaInsn.getResult() != null;
        RegisterSpecSet registerSpecSetMutableCopy = registerSpecSetMutableCopyOfStarts;
        for (int i12 = 0; i12 < size; i12++) {
            if (z10 && i12 == i11) {
                registerSpecSetMutableCopy.setImmutable();
                registerSpecSetMutableCopy = registerSpecSetMutableCopy.mutableCopy();
            }
            SsaInsn ssaInsn2 = insns.get(i12);
            RegisterSpec localAssignment = ssaInsn2.getLocalAssignment();
            if (localAssignment == null) {
                RegisterSpec result = ssaInsn2.getResult();
                if (result != null && registerSpecSetMutableCopy.get(result.getReg()) != null) {
                    registerSpecSetMutableCopy.remove(registerSpecSetMutableCopy.get(result.getReg()));
                }
            } else {
                RegisterSpec registerSpecWithSimpleType = localAssignment.withSimpleType();
                if (!registerSpecWithSimpleType.equals(registerSpecSetMutableCopy.get(registerSpecWithSimpleType))) {
                    RegisterSpec registerSpecLocalItemToSpec = registerSpecSetMutableCopy.localItemToSpec(registerSpecWithSimpleType.getLocalItem());
                    if (registerSpecLocalItemToSpec != null && registerSpecLocalItemToSpec.getReg() != registerSpecWithSimpleType.getReg()) {
                        registerSpecSetMutableCopy.remove(registerSpecLocalItemToSpec);
                    }
                    this.resultInfo.addAssignment(ssaInsn2, registerSpecWithSimpleType);
                    registerSpecSetMutableCopy.put(registerSpecWithSimpleType);
                }
            }
        }
        registerSpecSetMutableCopy.setImmutable();
        IntList successorList = ssaBasicBlock.getSuccessorList();
        int size2 = successorList.size();
        int primarySuccessorIndex = ssaBasicBlock.getPrimarySuccessorIndex();
        for (int i13 = 0; i13 < size2; i13++) {
            int i14 = successorList.get(i13);
            if (this.resultInfo.mergeStarts(i14, i14 == primarySuccessorIndex ? registerSpecSetMutableCopy : registerSpecSetMutableCopyOfStarts)) {
                this.workSet.set(i14);
            }
        }
    }
}
