package com.android.dx.ssa;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.util.IntIterator;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class SsaConverter {
    public static final boolean DEBUG = false;

    public static SsaMethod convertToSsaMethod(RopMethod ropMethod, int i10, boolean z10) {
        SsaMethod ssaMethodNewFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i10, z10);
        edgeSplit(ssaMethodNewFromRopMethod);
        placePhiFunctions(ssaMethodNewFromRopMethod, LocalVariableExtractor.extract(ssaMethodNewFromRopMethod), 0);
        new SsaRenamer(ssaMethodNewFromRopMethod).run();
        ssaMethodNewFromRopMethod.makeExitBlock();
        return ssaMethodNewFromRopMethod;
    }

    private static void edgeSplit(SsaMethod ssaMethod) {
        edgeSplitPredecessors(ssaMethod);
        edgeSplitMoveExceptionsAndResults(ssaMethod);
        edgeSplitSuccessors(ssaMethod);
    }

    private static void edgeSplitMoveExceptionsAndResults(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            if (!ssaBasicBlock.isExitBlock() && ssaBasicBlock.getPredecessors().cardinality() > 1 && ssaBasicBlock.getInsns().get(0).isMoveException()) {
                BitSet bitSet = (BitSet) ssaBasicBlock.getPredecessors().clone();
                for (int iNextSetBit = bitSet.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1)) {
                    blocks.get(iNextSetBit).insertNewSuccessor(ssaBasicBlock).getInsns().add(0, ssaBasicBlock.getInsns().get(0).mo14clone());
                }
                ssaBasicBlock.getInsns().remove(0);
            }
        }
    }

    private static void edgeSplitPredecessors(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            if (nodeNeedsUniquePredecessor(ssaBasicBlock)) {
                ssaBasicBlock.insertNewPredecessor();
            }
        }
    }

    private static void edgeSplitSuccessors(SsaMethod ssaMethod) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        for (int size = blocks.size() - 1; size >= 0; size--) {
            SsaBasicBlock ssaBasicBlock = blocks.get(size);
            BitSet bitSet = (BitSet) ssaBasicBlock.getSuccessors().clone();
            for (int iNextSetBit = bitSet.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1)) {
                SsaBasicBlock ssaBasicBlock2 = blocks.get(iNextSetBit);
                if (needsNewSuccessor(ssaBasicBlock, ssaBasicBlock2)) {
                    ssaBasicBlock.insertNewSuccessor(ssaBasicBlock2);
                }
            }
        }
    }

    private static boolean needsNewSuccessor(SsaBasicBlock ssaBasicBlock, SsaBasicBlock ssaBasicBlock2) {
        ArrayList<SsaInsn> insns = ssaBasicBlock.getInsns();
        SsaInsn ssaInsn = insns.get(insns.size() - 1);
        if (ssaBasicBlock.getSuccessors().cardinality() <= 1 || ssaBasicBlock2.getPredecessors().cardinality() <= 1) {
            return (ssaInsn.getResult() != null || ssaInsn.getSources().size() > 0) && ssaBasicBlock2.getPredecessors().cardinality() > 1;
        }
        return true;
    }

    private static boolean nodeNeedsUniquePredecessor(SsaBasicBlock ssaBasicBlock) {
        return ssaBasicBlock.getPredecessors().cardinality() > 1 && ssaBasicBlock.getSuccessors().cardinality() > 1;
    }

    private static void placePhiFunctions(SsaMethod ssaMethod, LocalVariableInfo localVariableInfo, int i10) {
        ArrayList<SsaBasicBlock> blocks = ssaMethod.getBlocks();
        int size = blocks.size();
        int regCount = ssaMethod.getRegCount() - i10;
        DomFront.DomInfo[] domInfoArrRun = new DomFront(ssaMethod).run();
        BitSet[] bitSetArr = new BitSet[regCount];
        BitSet[] bitSetArr2 = new BitSet[regCount];
        for (int i11 = 0; i11 < regCount; i11++) {
            bitSetArr[i11] = new BitSet(size);
            bitSetArr2[i11] = new BitSet(size);
        }
        int size2 = blocks.size();
        for (int i12 = 0; i12 < size2; i12++) {
            Iterator<SsaInsn> it2 = blocks.get(i12).getInsns().iterator();
            while (it2.hasNext()) {
                RegisterSpec result = it2.next().getResult();
                if (result != null && result.getReg() - i10 >= 0) {
                    bitSetArr[result.getReg() - i10].set(i12);
                }
            }
        }
        for (int i13 = 0; i13 < regCount; i13++) {
            BitSet bitSet = (BitSet) bitSetArr[i13].clone();
            while (true) {
                int iNextSetBit = bitSet.nextSetBit(0);
                if (iNextSetBit >= 0) {
                    bitSet.clear(iNextSetBit);
                    IntIterator it3 = domInfoArrRun[iNextSetBit].dominanceFrontiers.iterator();
                    while (it3.hasNext()) {
                        int next = it3.next();
                        if (!bitSetArr2[i13].get(next)) {
                            bitSetArr2[i13].set(next);
                            int i14 = i13 + i10;
                            RegisterSpec registerSpec = localVariableInfo.getStarts(next).get(i14);
                            if (registerSpec == null) {
                                blocks.get(next).addPhiInsnForReg(i14);
                            } else {
                                blocks.get(next).addPhiInsnForReg(registerSpec);
                            }
                            if (!bitSetArr[i13].get(next)) {
                                bitSet.set(next);
                            }
                        }
                    }
                }
            }
        }
    }

    public static SsaMethod testEdgeSplit(RopMethod ropMethod, int i10, boolean z10) {
        SsaMethod ssaMethodNewFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i10, z10);
        edgeSplit(ssaMethodNewFromRopMethod);
        return ssaMethodNewFromRopMethod;
    }

    public static SsaMethod testPhiPlacement(RopMethod ropMethod, int i10, boolean z10) {
        SsaMethod ssaMethodNewFromRopMethod = SsaMethod.newFromRopMethod(ropMethod, i10, z10);
        edgeSplit(ssaMethodNewFromRopMethod);
        placePhiFunctions(ssaMethodNewFromRopMethod, LocalVariableExtractor.extract(ssaMethodNewFromRopMethod), 0);
        return ssaMethodNewFromRopMethod;
    }

    public static void updateSsaMethod(SsaMethod ssaMethod, int i10) {
        placePhiFunctions(ssaMethod, LocalVariableExtractor.extract(ssaMethod), i10);
        new SsaRenamer(ssaMethod, i10).run();
    }
}
